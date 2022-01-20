Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 740B4494BF5
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 11:42:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A197B10E65B;
	Thu, 20 Jan 2022 10:42:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B151610E65B
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 10:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642675328; x=1674211328;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=M3w4Dle0rbe9fmzrUYSXJo0jB0OeSYZzWNOG+8CJDvk=;
 b=n2JZzhCq5rQpvHiZDId0xM/F/dojKw0QtDHd3vH4ANYDkT8QemHtzfvP
 04xJUbbVCehS8v70wf5jiO0EYMb/uQ2HZVn6FMPfzZ6w3URWcC57Yxnr6
 3JSCaHoPR4lLVyxP+EX8Zwv9zULBOETvtyrTWm2qmD4heOiezH67eQOCN
 MzwFgpL/wv8dbUA/aD5m1/e6jR/Jlzazkak9GSJ/sy2VTSvu13IeCE6iz
 cbwB7xiPo5uC/qCc6p3aJFSgFCPzwKhKNvAabJSTWFXwB8jgZgeGa0RNz
 PIO/Ip5jkWT36o5AAzsvcFwi4f/nOu4cRnFP3GjFzq5xqx+8yiUfd/7Tv g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10232"; a="269722113"
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="269722113"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 02:42:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="530953270"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by fmsmga007.fm.intel.com with ESMTP; 20 Jan 2022 02:42:07 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 20 Jan 2022 10:42:06 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.020;
 Thu, 20 Jan 2022 16:12:04 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH RESEND 6/7] drm/i915/mst: ack sink irq ESI
 for link status changes
Thread-Index: AQHYB6QVGbGg1ElZMkCI+GOkqo/C76xrxWZg
Date: Thu, 20 Jan 2022 10:42:04 +0000
Message-ID: <079f5b060fbc40d1b77779d586e130e5@intel.com>
References: <20220112110319.1172110-1-jani.nikula@intel.com>
 <20220112110319.1172110-6-jani.nikula@intel.com>
In-Reply-To: <20220112110319.1172110-6-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH RESEND 6/7] drm/i915/mst: ack sink irq ESI
 for link status changes
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni Nikula
> Sent: Wednesday, January 12, 2022 4:33 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [Intel-gfx] [PATCH RESEND 6/7] drm/i915/mst: ack sink irq ESI fo=
r link status
> changes
>=20
> Only specific event status indicators caused the link status to be acked.=
 Be sure to
> ack the link status change event.
>=20
> Arguably we should track which bits to actually clear in ESI instead of t=
he wholesale
> approach.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index d8a0ba3a14b7..95e9f7220ab8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3699,6 +3699,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp=
)
>  		    esi[3] & LINK_STATUS_CHANGED) {
>  			if (!intel_dp_mst_link_status(intel_dp))
>  				link_ok =3D false;
> +			handled =3D true;
>  		}
>=20
>  		intel_dp_mst_hpd_irq(intel_dp, esi, &handled);
> --
> 2.30.2

