Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB17CFCCF
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 16:52:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AFD86E819;
	Tue,  8 Oct 2019 14:52:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 964546E819
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 14:52:18 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 07:52:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,270,1566889200"; 
 d="p7s'?scan'208";a="196618284"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga003.jf.intel.com with ESMTP; 08 Oct 2019 07:52:17 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 8 Oct 2019 07:52:16 -0700
Received: from fmsmsx103.amr.corp.intel.com ([169.254.2.173]) by
 fmsmsx101.amr.corp.intel.com ([169.254.1.3]) with mapi id 14.03.0439.000;
 Tue, 8 Oct 2019 07:52:16 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/gt: Flush submission tasklet
 before waiting/retiring
Thread-Index: AQHVfccxFDOjqcOXdUiHhOYRoJB806dRSbiA
Date: Tue, 8 Oct 2019 14:52:15 +0000
Message-ID: <9ceb719d99e836defc5671ed6b2e1f6cd3d516bc.camel@intel.com>
References: <20191008105655.13256-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191008105655.13256-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.165.21.197]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Flush submission tasklet
 before waiting/retiring
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0272685054=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0272685054==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-E7XxeDfsPkIz378r+EOa"

--=-E7XxeDfsPkIz378r+EOa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-10-08 at 11:56 +0100, Chris Wilson wrote:
> A common bane of ours is arbitrary delays in ksoftirqd processing our
> submission tasklet. Give the submission tasklet a kick before we wait
> to
> avoid those delays eating into a tight timeout.
>=20
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine.h      |  3 +-
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c   | 33 +++++++++++++----
> ----
>  drivers/gpu/drm/i915/gt/intel_gt_requests.c | 12 ++++++++
>  3 files changed, 34 insertions(+), 14 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h
> b/drivers/gpu/drm/i915/gt/intel_engine.h
> index c9e8c8ccbd47..d624752f2a92 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -407,8 +407,9 @@ static inline void __intel_engine_reset(struct
> intel_engine_cs *engine,
>  	engine->serial++; /* contexts lost */
>  }
> =20
> -bool intel_engine_is_idle(struct intel_engine_cs *engine);
>  bool intel_engines_are_idle(struct intel_gt *gt);
> +bool intel_engine_is_idle(struct intel_engine_cs *engine);
> +void intel_engine_flush_submission(struct intel_engine_cs *engine);
> =20
>  void intel_engines_reset_default_submission(struct intel_gt *gt);
> =20
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 6220b7151bb9..7e2aa7a6bef0 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1040,6 +1040,25 @@ static bool ring_is_idle(struct
> intel_engine_cs *engine)
>  	return idle;
>  }
> =20
> +void intel_engine_flush_submission(struct intel_engine_cs *engine)
> +{
> +	struct tasklet_struct *t =3D &engine->execlists.tasklet;
> +
> +	if (__tasklet_is_scheduled(t)) {
> +		local_bh_disable();
> +		if (tasklet_trylock(t)) {
> +			/* Must wait for any GPU reset in progress. */
> +			if (__tasklet_is_enabled(t))
> +				t->func(t->data);
> +			tasklet_unlock(t);
> +		}
> +		local_bh_enable();
> +	}
> +
> +	/* Otherwise flush the tasklet if it was running on another cpu
> */
> +	tasklet_unlock_wait(t);
> +}
> +
>  /**
>   * intel_engine_is_idle() - Report if the engine has finished
> process all work
>   * @engine: the intel_engine_cs
> @@ -1058,21 +1077,9 @@ bool intel_engine_is_idle(struct
> intel_engine_cs *engine)
> =20
>  	/* Waiting to drain ELSP? */
>  	if (execlists_active(&engine->execlists)) {
> -		struct tasklet_struct *t =3D &engine->execlists.tasklet;
> -
>  		synchronize_hardirq(engine->i915->drm.pdev->irq);
> =20
> -		local_bh_disable();
> -		if (tasklet_trylock(t)) {
> -			/* Must wait for any GPU reset in progress. */
> -			if (__tasklet_is_enabled(t))
> -				t->func(t->data);
> -			tasklet_unlock(t);
> -		}
> -		local_bh_enable();
> -
> -		/* Otherwise flush the tasklet if it was on another cpu
> */
> -		tasklet_unlock_wait(t);
> +		intel_engine_flush_submission(engine);
> =20
>  		if (execlists_active(&engine->execlists))
>  			return false;
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> index ca606b79fd5e..cbb4069b11e1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> @@ -4,6 +4,7 @@
>   * Copyright =C2=A9 2019 Intel Corporation
>   */
> =20
> +#include "i915_drv.h" /* for_each_engine() */
>  #include "i915_request.h"
>  #include "intel_gt.h"
>  #include "intel_gt_pm.h"
> @@ -19,6 +20,15 @@ static void retire_requests(struct intel_timeline
> *tl)
>  			break;
>  }
> =20
> +static void flush_submission(struct intel_gt *gt)
> +{
> +	struct intel_engine_cs *engine;
> +	enum intel_engine_id id;
> +
> +	for_each_engine(engine, gt->i915, id)
> +		intel_engine_flush_submission(engine);
> +}
> +
>  long intel_gt_retire_requests_timeout(struct intel_gt *gt, long
> timeout)
>  {
>  	struct intel_gt_timelines *timelines =3D &gt->timelines;
> @@ -32,6 +42,8 @@ long intel_gt_retire_requests_timeout(struct
> intel_gt *gt, long timeout)
>  	if (unlikely(timeout < 0))
>  		timeout =3D -timeout, interruptible =3D false;
> =20
> +	flush_submission(gt); /* kick the ksoftirqd tasklets */

Won't this add a performance hit if we are doing this across all
engines? Is there a way we can isolate this a bit more?

Thanks,
Stuart

> +
>  	spin_lock_irqsave(&timelines->lock, flags);
>  	list_for_each_entry_safe(tl, tn, &timelines->active_list, link)
> {
>  		if (!mutex_trylock(&tl->mutex)) {

--=-E7XxeDfsPkIz378r+EOa
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIKcTCCBOsw
ggPToAMCAQICEDabxALowUBS+21KC0JI8fcwDQYJKoZIhvcNAQEFBQAwbzELMAkGA1UEBhMCU0Ux
FDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5hbCBUVFAgTmV0
d29yazEiMCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0EgUm9vdDAeFw0xMzEyMTEwMDAwMDBa
Fw0yMDA1MzAxMDQ4MzhaMHkxCzAJBgNVBAYTAlVTMQswCQYDVQQIEwJDQTEUMBIGA1UEBxMLU2Fu
dGEgQ2xhcmExGjAYBgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRl
cm5hbCBCYXNpYyBJc3N1aW5nIENBIDRCMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
yzuW/y/g0bznz8BD48M94luFzqHaqY9yGN9H/W0J7hOVBpl0rTQJ6kZ7z7hyDb9kf2UW4ZU25alC
i+q5m6NwHg+z9pcN7bQ84SSBueaYF7cXlAg7z3XyZbzSEYP7raeuWRf5fYvYzq8/uI7VNR8o/43w
PtDP10YDdO/0J5xrHxnC/9/aU+wTFSVsPqxsd7C58mnu7G4VRJ0n9PG4SfmYNC0h/5fLWuOWhxAv
6MuiK7MmvTPHLMclULgJqVSqG1MbBs0FbzoRHne4Cx0w6rtzPTrzo+bTRqhruaU18lQkzBk6OnyJ
UthtaDQIlfyGy2IlZ5F6QEyjItbdKcHHdjBX8wIDAQABo4IBdzCCAXMwHwYDVR0jBBgwFoAUrb2Y
ejS0Jvf6xCZU7wO94CTLVBowHQYDVR0OBBYEFNpBI5xaj3GvV4M+INPjZdsMywvbMA4GA1UdDwEB
/wQEAwIBhjASBgNVHRMBAf8ECDAGAQH/AgEAMDYGA1UdJQQvMC0GCCsGAQUFBwMEBgorBgEEAYI3
CgMEBgorBgEEAYI3CgMMBgkrBgEEAYI3FQUwFwYDVR0gBBAwDjAMBgoqhkiG+E0BBQFpMEkGA1Ud
HwRCMEAwPqA8oDqGOGh0dHA6Ly9jcmwudHJ1c3QtcHJvdmlkZXIuY29tL0FkZFRydXN0RXh0ZXJu
YWxDQVJvb3QuY3JsMDoGCCsGAQUFBwEBBC4wLDAqBggrBgEFBQcwAYYeaHR0cDovL29jc3AudHJ1
c3QtcHJvdmlkZXIuY29tMDUGA1UdHgQuMCygKjALgQlpbnRlbC5jb20wG6AZBgorBgEEAYI3FAID
oAsMCWludGVsLmNvbTANBgkqhkiG9w0BAQUFAAOCAQEAp9XGgH85hk/3IuN8F4nrFd24MAoau7Uq
M/of09XtyYg2dV0TIPqtxPZw4813r78WwsGIbvtO8VQ18dNktIxaq6+ym2zebqDh0z6Bvo63jKE/
HMj8oNV3ovnuo+7rGpCppcda4iVBG2CetB3WXbUVr82EzECN+wxmC4H9Rup+gn+t+qeBTaXulQfV
TYOvZ0eZPO+DyC2pVv5q5+xHljyUsVqpzsw89utuO8ZYaMsQGBRuFGOncRLEOhCtehy5B5aCI571
i4dDAv9LPODrEzm3PBfrNhlp8C0skak15VXWFzNuHd00AsxXxWSUT4TG8RiAH61Ua5GXsP1BIZwl
4WjK8DCCBX4wggRmoAMCAQICEzMAAHThOHejBjRRsRQAAAAAdOEwDQYJKoZIhvcNAQEFBQAweTEL
MAkGA1UEBhMCVVMxCzAJBgNVBAgTAkNBMRQwEgYDVQQHEwtTYW50YSBDbGFyYTEaMBgGA1UEChMR
SW50ZWwgQ29ycG9yYXRpb24xKzApBgNVBAMTIkludGVsIEV4dGVybmFsIEJhc2ljIElzc3Vpbmcg
Q0EgNEIwHhcNMTkwMTIzMTcxMTA0WhcNMjAwMTE4MTcxMTA0WjBDMRgwFgYDVQQDEw9TdW1tZXJz
LCBTdHVhcnQxJzAlBgkqhkiG9w0BCQEWGHN0dWFydC5zdW1tZXJzQGludGVsLmNvbTCCASIwDQYJ
KoZIhvcNAQEBBQADggEPADCCAQoCggEBAL7LpY79h4eyLdxekwAblnyPAHSCaXvVTUmnPKxWXs9g
VCcf7gjGg8qg/HLCwvgGKGqtVkn2EaCKd85rqklaTp07JciV6a77qodO0yOgyz96hRVuSFAIP0UQ
TXP+PuVIfYuqNSSgh2x2HzJy2DzpG12ZMldy6r2zAa6ypWevjFp5+3/mscAVNAmSHnyj838uukd/
YwrFtEG2j5l/EoijzGMRFUD0tS5eD2y0WmRfmc4xkv1Qjr8AN3ogZr4arGr+rF2F4aakLmoDUCZk
PwuHX1mRETAlwqXCZa6ba8eraUCltlCb/ZiEk9UFRVLjbLNPh9IYOi+sWkS6n5CovLKAqhMCAwEA
AaOCAjMwggIvMB0GA1UdDgQWBBSgeYqvLV4nBaCUzAXLr0TeMJYR5zAfBgNVHSMEGDAWgBTaQSOc
Wo9xr1eDPiDT42XbDMsL2zBlBgNVHR8EXjBcMFqgWKBWhlRodHRwOi8vd3d3LmludGVsLmNvbS9y
ZXBvc2l0b3J5L0NSTC9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjA0
Qi5jcmwwgZ8GCCsGAQUFBwEBBIGSMIGPMCIGCCsGAQUFBzABhhZodHRwOi8vb2NzcC5pbnRlbC5j
b20vMGkGCCsGAQUFBzAChl1odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRpZmlj
YXRlcy9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjA0Qi5jcnQwCwYD
VR0PBAQDAgeAMDwGCSsGAQQBgjcVBwQvMC0GJSsGAQQBgjcVCIbDjHWEmeVRg/2BKIWOn1OCkcAJ
Z4HevTmV8EMCAWQCAQkwHwYDVR0lBBgwFgYIKwYBBQUHAwQGCisGAQQBgjcKAwwwKQYJKwYBBAGC
NxUKBBwwGjAKBggrBgEFBQcDBDAMBgorBgEEAYI3CgMMME0GA1UdEQRGMESgKAYKKwYBBAGCNxQC
A6AaDBhzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb22BGHN0dWFydC5zdW1tZXJzQGludGVsLmNvbTAN
BgkqhkiG9w0BAQUFAAOCAQEAfyIC7rzSi6S8O+sdH384K8zyeMRJnl6vR7whl9PuEat+BkKpoxHn
jQ0SFyF/cyI4lH/n938Pm3/Ctq0Z5GTldX6hhxxcLAR0qbk6AQU0Cq2nYMlZfX4FUz3FRsazbjTW
1qObcvPRUAVScaa7SRGdensvbNV++pN1XqEdc++szxo58UzPaEgDlHIe2sEIVXnFkHnJv0ikRHG3
urcA1bdj7Rac7dJBeQOQMdZEGmrWWmmbJzvk3OmoK9tKN7wcErQSdlqyYOMLesPfa7YNyLFYEJQd
CC/N7V8U9yFZx8akWREb8lJYDl9KypirEsufleiew26CWrwcbmdlldDCFS6/HDGCAhcwggITAgEB
MIGQMHkxCzAJBgNVBAYTAlVTMQswCQYDVQQIEwJDQTEUMBIGA1UEBxMLU2FudGEgQ2xhcmExGjAY
BgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJ
c3N1aW5nIENBIDRCAhMzAAB04Th3owY0UbEUAAAAAHThMAkGBSsOAwIaBQCgXTAYBgkqhkiG9w0B
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTEwMDgxNDUyMTJaMCMGCSqGSIb3DQEJ
BDEWBBRCMPSwNeFZIp+ic8kLrB/bxQK1JzANBgkqhkiG9w0BAQEFAASCAQAFtar8DZ9pSc2K4Epk
bZzdUB3rZhGlySTYwcMb8+cBqH8kapqHdV0GnxTINAJaw1HrB0wXzvWYpBz2R51cjAvuBEah36Mu
YpDPFv2KbdTvXPGpZJd1LmeuBAKSy7jaHF0An4AnPXDpiUacRUMIyIpv3CWxX6RugZ42xYuGqCuC
fNmYrTsufCSk+MSnci2ymJSsShzxVlJAxf2//ukmouFL8ZuHfPtsukJm4JEsKNs20/j8U3VENYcK
Z0NaERk6b30EIm4BBvr+Z15DTYaiKvVtIsckMlwAZR42aLZM7WjbiFyIzL0PaORWPYhrebsw6FB7
Jxwqp8USFI3Ya3ewRizPAAAAAAAA


--=-E7XxeDfsPkIz378r+EOa--

--===============0272685054==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0272685054==--
