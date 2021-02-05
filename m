Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C23763101AF
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 01:35:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28D296EF2C;
	Fri,  5 Feb 2021 00:35:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 473DF6EF2C
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 00:35:21 +0000 (UTC)
IronPort-SDR: M5fdkdXuc9ev1fJs1jT/TXxLOySqtj2leyhIfPe+ZNHwBXB1hQ87Ik4GyVUPkhgOf9qFp/6waq
 pSw2pEXz7+5A==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="168471198"
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; 
 d="scan'208,217";a="168471198"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 16:35:20 -0800
IronPort-SDR: 8V1QvnhKx7JsBKXCMID/hkOwNINCIHJgarvuu/v2QKUfiffo+86LhntBsJO8wNmipoTupFoSCV
 3FohDcwYsZtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; 
 d="scan'208,217";a="415409605"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Feb 2021 16:35:20 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 4 Feb 2021 16:35:19 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 4 Feb 2021 16:35:19 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.002;
 Thu, 4 Feb 2021 16:35:19 -0800
From: "Chang, Yu bruce" <yu.bruce.chang@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/selftest: Synchronise with the GPU timestamp
Thread-Index: AQHW+1KCb3S3itjg5kqE92p0mxU7kapIsyqf
Date: Fri, 5 Feb 2021 00:35:18 +0000
Message-ID: <3fe13ce156d5447dadf43afdff954b74@intel.com>
References: <20210205000437.16079-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210205000437.16079-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftest: Synchronise with the GPU
 timestamp
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Content-Type: multipart/mixed; boundary="===============0362542817=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0362542817==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3fe13ce156d5447dadf43afdff954b74intelcom_"

--_000_3fe13ce156d5447dadf43afdff954b74intelcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

> Wait for the GPU to wake up from the semaphore before measuring the
>time, so that we coordinate the sampling on both the CPU and GPU for
> more accurate comparisons.
>
>Reported-by: Bruce Chang <yu.bruce.chang@intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: CQ Tang <cq.tang@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_engine_pm.c | 4 +++-
> 1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/d=
rm/i915/gt/selftest_engine_pm.c
>index 3ce8cb3329f3..007a7c790778 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> @@ -111,8 +111,10 @@ static int __measure_timestamps(struct intel_context=
 *ce,
>
>         /* Run the request for a 100us, sampling timestamps before/after =
*/
>          preempt_disable();
> -       *dt =3D local_clock();
>         write_semaphore(&sema[2], 0);
> +       while (READ_ONCE(sema[1]) =3D=3D 0) /* wait for the gpu to catch =
up */
> +               cpu_relax();
> +       *dt =3D local_clock();
>          udelay(100);
>         *dt =3D local_clock() - *dt;
>          write_semaphore(&sema[2], 1);
> --
>2.20.1
>

This trick should work!
Thanks!

Reviewed-by: Bruce Chang <yu.bruce.chang@intel.com>


--_000_3fe13ce156d5447dadf43afdff954b74intelcom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:rgb(0,0,0); font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple=
 Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI=
 Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<p></p>
<div>&gt; Wait for the GPU to wake up from the semaphore before measuring t=
he</div>
<div>&gt;time, so that we coordinate the sampling on both the CPU and GPU f=
or</div>
<div>&gt; more accurate comparisons.</div>
<div>&gt;&nbsp;</div>
<div>&gt;Reported-by: Bruce Chang &lt;yu.bruce.chang@intel.com&gt;</div>
<div>&gt; Signed-off-by: Chris Wilson &lt;chris@chris-wilson.co.uk&gt;</div=
>
<div>&gt; Cc: CQ Tang &lt;cq.tang@intel.com&gt;</div>
<div>&gt; ---</div>
<div>&gt;&nbsp; drivers/gpu/drm/i915/gt/selftest_engine_pm.c | 4 &#43;&#43;=
&#43;-</div>
<div>&gt; 1 file changed, 3 insertions(&#43;), 1 deletion(-)</div>
<div>&gt;&nbsp;</div>
<div>&gt; diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drive=
rs/gpu/drm/i915/gt/selftest_engine_pm.c</div>
<div>&gt;index 3ce8cb3329f3..007a7c790778 100644</div>
<div>&gt; --- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c</div>
<div>&gt; &#43;&#43;&#43; b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c</d=
iv>
<div>&gt; @@ -111,8 &#43;111,10 @@ static int __measure_timestamps(struct i=
ntel_context *ce,</div>
<div>&gt;&nbsp;&nbsp;</div>
<div>&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/* Run the request for a 100us, =
sampling timestamps before/after */</div>
<div>&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; preempt_disable();</div>
<div>&gt; -&nbsp; &nbsp; &nbsp; &nbsp;*dt =3D local_clock();</div>
<div>&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;write_semaphore(&amp;sema[2], 0)=
;</div>
<div>&gt; &#43;&nbsp; &nbsp; &nbsp; &nbsp;while (READ_ONCE(sema[1]) =3D=3D =
0) /* wait for the gpu to catch up */</div>
<div>&gt; &#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;cpu_r=
elax();</div>
<div>&gt; &#43;&nbsp; &nbsp; &nbsp; &nbsp;*dt =3D local_clock();</div>
<div>&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; udelay(100);</div>
<div>&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;*dt =3D local_clock() - *dt;</di=
v>
<div>&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; write_semaphore(&amp;sema[2], 1=
);</div>
<div>&gt; --&nbsp;</div>
<div>&gt;2.20.1</div>
<div>&gt;&nbsp;</div>
<div><br>
</div>
<div>This trick should work!</div>
<div>Thanks!</div>
<div><br>
</div>
<div>Reviewed-by:&nbsp;<span style=3D"color: rgb(33, 33, 33); font-family: =
wf_segoe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Ari=
al, sans-serif, serif, EmojiFont; font-size: 13.3333px;">Bruce Chang &lt;yu=
.bruce.chang@intel.com&gt;</span>&nbsp;</div>
<div><br>
</div>
<p></p>
</div>
</body>
</html>

--_000_3fe13ce156d5447dadf43afdff954b74intelcom_--

--===============0362542817==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0362542817==--
