Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 850B073694B
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 12:30:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED0B610E2A5;
	Tue, 20 Jun 2023 10:30:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4991E10E2A5
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jun 2023 10:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687257035; x=1718793035;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=eb/0V+C6fA1MFW0w6NfBjhPFs9kSdsGF7j8WZTsf328=;
 b=jbn7XUw/KwZy5yXFipmmrCV3AM7fD4FDqYqZLdOjpfAXlAbg8Ov5EVTJ
 9iGYYmQ47ALpeo2hzaDkvW1k9/KcgYWoA4mQ5iVe/OUzENPa93ICNb0Ip
 /Cw2QwJxw7ijl7MPG+Wdnt/A3fwdkVuECfFlncdCkdMerPigE6PA+VbVk
 ADpT2kDARSKUVhnQV8oftMdWOBIvLhSwl5wszEratEQUD9sE5N466C5HV
 iOMFr3VdD6fOyPMpVv9JI7j6rD6S6QjlCTBDtBeECvTNytr8vay/kgxyK
 vJ6O+mbDzGQJkLjrqxAg54LRTl/RI+laHrwwYtmw4mO4O2krIkxIBQfxy A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="358694348"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="358694348"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 03:30:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="664235620"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="664235620"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 20 Jun 2023 03:30:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 03:30:32 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 20 Jun 2023 03:30:32 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 20 Jun 2023 03:30:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UWwA39h348Ocs+NUhReVSrCX/90xjew4CyAFjkJquHXN7AyLdIhvMrL4mfzrWH24n1NObN4qITfekPYds7aweGusQ5qxvEL26ToqjwHwomlSBK/Zpixhjt6VIlaQgVvg+JngugysVvoDfjfSc1fU2NPz0qqnNJtoXlr+r+3GsWnXOjOVFGIh+cJcU4s9s+F7iNraA9XVkZ+mw9w7kHsGP13uHiqLtWR/vOWM3JFLA5G6nDRWBQZONimxOS/tl4WLI6OQfnorilPlK2yhTe8RHpLNdnAUcJ+MFKZsONnmUZcq2f0DF0hIZTW9HTjs+s1RQFw8BoUVB09qOjGzt2ZcGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+v2pUpnGam5xlKR3H/84dM4DLksON8MNlzS7X0qf/b8=;
 b=kvwdQdNozdBGw6737V5Wm7G9WrVzN5Guy/avZ58AGsEVj/EUX1XbRAEOI5q01ElHAP03Eu2NgDHpTu9MplXuFpuJ2pETooskvP6Tpu/6rqmslgOIKFsvabz2ivCTJL2eIrYnECQZG2Gdi62mLdsU3e9XZoz4W+uo/lT1sVLXr2YP8dkqyDL+/0g8kLn9CIIlejs0vyq8ypLHBoo/5IQW1iaiRUiq4ht+XxSWRfiAhievaGuQ1Z0D8lmiCT/J1R8V8fXdg+KP79Oo8YIBSirb6n2cn2ZUk/1B5zud2gCV/dXZBfpU+qTyRUafqcZZ7wmPkhqNXNYXb/FLS45AUnDLAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SN7PR11MB6679.namprd11.prod.outlook.com (2603:10b6:806:269::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.37; Tue, 20 Jun
 2023 10:30:30 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::6d2a:b83f:1618:2dd6]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::6d2a:b83f:1618:2dd6%4]) with mapi id 15.20.6500.036; Tue, 20 Jun 2023
 10:30:29 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: pre-initialize some values
 in probe_gmdid_display()
Thread-Index: AQHZlGgImCpUUD3SOUiokhfcIc0Y/K+TmcEA
Date: Tue, 20 Jun 2023 10:30:29 +0000
Message-ID: <SN7PR11MB675089A23F9DFA474BF19721E35CA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230601090338.80284-1-luciano.coelho@intel.com>
In-Reply-To: <20230601090338.80284-1-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SN7PR11MB6679:EE_
x-ms-office365-filtering-correlation-id: 6cf70936-f4fe-4c63-01be-08db71795e92
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VgATv7WpnA2yYSRKUycai8FZ85fv5upgjUmfwwGwYb6VViWX/gi6slTOc1dhsVK0gv7gb2QYgT+ViTon+K8W2Gp4jxk5EjzNNeI+ICVQumOT2M+1khExcaNPdjReJZaU/DS3BPpRRNsyZoqr1u3YaoKrG/77eqK9Y5R6jMQNhW64MwfvNHNxrutPDlLXGHaSyoSwbRzRW086OEFI+IBnKE6MK1C0lXbPFBsiRAiGMxoJbVULHPyfzvYYT04FKh9OjHFHdgpI7b3L0qY9cIKfKLT4ntOFrXSrudxrlFmkOcZKqFlLtl0d0trYGvhw3isNbA5V1FKn/ddFI4UzwChr0WH7R+vb4zRKQUVJrGyfgrOPjp5dHH0ofcqToiuT+Pi97bXMuHv8rFPaurTq2xHjaddR9NqvBY83BOKaZgwWyk526sQkCZ3OTHVl7edc3Px8+MdTCq8ZbTczWhX60Cn7bhb6VQRh4ElgkQqfgVKq++Uav0ny81+MWWgL6lOoK9dqw0DW6pXPDDiYmZwaoFHwjYKYFUFuE8JbbUe/dvP4zYOEip1S7Bhp262eY9p7wcrunzQCKW457XD2K/Noe4pgszO8ZPHxUBaA9J5ju5m6IkTjSHSxARRfNbXa2mv5fD7L
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(346002)(396003)(136003)(376002)(451199021)(66946007)(8676002)(64756008)(8936002)(66556008)(66476007)(76116006)(66446008)(38070700005)(186003)(26005)(6506007)(9686003)(82960400001)(83380400001)(41300700001)(38100700002)(5660300002)(316002)(52536014)(7696005)(55016003)(478600001)(2906002)(33656002)(122000001)(71200400001)(110136005)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZJF+SVG4jgwehuOGcihSxCi6nky7cJwqgyfhXSdG2B0I/vdGLgbLzAU5vWBz?=
 =?us-ascii?Q?vmqPECnWufPQF0nfpImPVtCtIqefyjPTM3ZjbtdCyLz9TXrWCRG84Q/hGLE+?=
 =?us-ascii?Q?KDY92Gqv9Pwikj8ynqdgKs4/S1UCNIiKjfsA84kYJ7BJwSxhjctAPanJdTO+?=
 =?us-ascii?Q?rrF6CpS5lBvLSGCVfyrXQTxdfOd/o/8ibORaylVSSLi6bDkfW6QI+bkosDmB?=
 =?us-ascii?Q?YYjArPDhYNz8Op2FyIyVFhkAzTkeF3Yi8M9i7mDA7t3sksNMQX16L20OjGlh?=
 =?us-ascii?Q?t46/zvbw3/rArN8G0yvM8AAZbPtWVi/0AdrFGfNAa1VVuQTAZEq9zLXSYAbg?=
 =?us-ascii?Q?A1EyPARptMx6qC8utDzS+lYPf8OZcBinNmevRFU8ZeaySj/SgsDyMm0IVVBy?=
 =?us-ascii?Q?7QCyZ4iDh+OjuS8I0GEsivk/y7o9QwBMEGurw0T7GVGOg5rgxQEMp4/K5CPm?=
 =?us-ascii?Q?d9GZ33t1S74U0VDYUg8hfVL/tIktfLsYXB977zMZBKB82/KfK1CeWX5MSgZI?=
 =?us-ascii?Q?bsWX6hwggKpdSushWUK4DBB8J28R4m9MFRjNJZVVBeg9TfTDuf72fz5Xb3x9?=
 =?us-ascii?Q?xKCmGKA3fVGBHm7x/MnWWrYzwCPUK6+hmioJrYNw0RzBB7MLTDl3cbV2gePZ?=
 =?us-ascii?Q?4EJ+ytKjKfLwz1Hsz7wbKiZj94LFzolm+hYMUpamw/DEfhOftxEsuaBHn7XQ?=
 =?us-ascii?Q?1cB3ty8mtO4a+CDg40/thcqJF1II/XZAVumHYFXPAEKPXkvtw+OcjbZTjAo9?=
 =?us-ascii?Q?39Dz+UEtUrgQluKFmKbKveXxFZ0/EunAuWHUYNoBqph7nd31TWb1Z72CXCCf?=
 =?us-ascii?Q?qmtFGS5S3I7xF2bUx2fxy4qfyZSkF02FKcmBz5C4fE1LDhjwjqORrtCyVPb3?=
 =?us-ascii?Q?rrfWOORdnqWPTu6jQXPNfdRAMJhY5wpuAN5Qjtk+3otRD8swhr2cBNFv7vjf?=
 =?us-ascii?Q?RRmj488uPVDtBbON0MKBIH0qXXfMVQYva503JoeyOpuIJgvRE13QLe7n4wMm?=
 =?us-ascii?Q?EmeB5oK1mYPBvAPG1dKGS0ubWkaTSPS36iwc3UovUxPyDOufnqEj1jrzqdsF?=
 =?us-ascii?Q?YMFFdunLoa71W7k96HzEVpKQDqNbn14rws6HYUGzWMTRgYQhy3Hp08Ag+A0K?=
 =?us-ascii?Q?gPoHNV3x/jNjMTdcQ+5iSyI/1+Pb9q9vtoFc0wSaJQRkJm2AjE2x6hssZh5d?=
 =?us-ascii?Q?2kXD1vvwZaMcxKKnwEGdhr7uL1DJXCD7htzQEjD+5Q/GsZ5lw/jhKNPnX/ov?=
 =?us-ascii?Q?MhljYmwUpD9xTMia8GK6rv2Jca/yYRBnpukvfZKIGFLbEysLh5MdL8wTYfii?=
 =?us-ascii?Q?4zgcaK/5Gtk+YmhMZaSKzFLicXeqaaXBLsIsbeiYFx9IdYOJ1A/KpBqE+w4q?=
 =?us-ascii?Q?tmSNgIE2LTMWBDoPeVoI+F1sffOv6kv7ocRsidVm8V+FhSXSjtgTCxYTmla3?=
 =?us-ascii?Q?nOvxSMfqVYgJ/x1kj/h1HHysfSL7VAo3Oi/05ITWDHmTmac3RQyA8KSk7QMw?=
 =?us-ascii?Q?Ua8g763KXyq8P5axBnywoNngQaA5QdW3lJgt10vTcuDvbP4ehEyBGF9gBN+E?=
 =?us-ascii?Q?E9GUEPXhnanfokEi5kRt+HyejlP80lDZe60441kC?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6cf70936-f4fe-4c63-01be-08db71795e92
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2023 10:30:29.4531 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NFrQ9QHNQG+2/fGtKNaDbcpupUfmA8isPSZjAqjkyFa2bEnBe4luHvQwuXqQG+Mve9NqQRONxPm9CcNxIInzYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6679
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: pre-initialize some
 values in probe_gmdid_display()
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> When intel_display_device_probe() (and, subsequently,
> probe_gmdid_display()) returns, the caller expects ver, rel and step to b=
e
> initialized.  Since there's no way to check that there was a failure and
> no_display was returned without some further refactoring, pre-initiliaze =
all
> these values to zero to keep it simple and safe.
>=20
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>

Looks okay to me just a small suggestion/question below.

> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c
> b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 464df1764a86..fb6354e9e704 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -731,6 +731,15 @@ probe_gmdid_display(struct drm_i915_private
> *i915, u16 *ver, u16 *rel, u16 *step
>  	u32 val;
>  	int i;
>=20
> +	/* The caller expects to ver, rel and step to be initialized
> +	 * here, and there's no good way to check when there was a
> +	 * failure and no_display was returned.  So initialize all these
> +	 * values here zero, to be sure.
> +	 */
> +	*ver =3D 0;
> +	*rel =3D 0;
> +	*step =3D 0;
> +

From what I can see this is only called from intel_display_device_probe() w=
hich is in turn
called from intel_device_info_driver_create() where the above variables are=
 defined maybe=20
we initialize these values there itself.

Regards,
Suraj Kandpal

>  	addr =3D pci_iomap_range(pdev, 0,
> i915_mmio_reg_offset(GMD_ID_DISPLAY), sizeof(u32));
>  	if (!addr) {
>  		drm_err(&i915->drm, "Cannot map MMIO BAR to read
> display GMD_ID\n");
> --
> 2.39.2

