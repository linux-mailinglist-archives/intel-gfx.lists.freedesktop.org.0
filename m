Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A649A99C2
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 08:26:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E97B10E5E4;
	Tue, 22 Oct 2024 06:26:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l1KYcjjT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6D0710E199;
 Tue, 22 Oct 2024 06:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729578413; x=1761114413;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NO+uelYYyiSZyPme3WUyKaEg//pnaw3DW43y/DPbAss=;
 b=l1KYcjjTgl5OE7uZETmhzLU/wvq04EK92rDNO4WRpnt60XIwG+yJwJhC
 f66TCkNkU9T0dekHubu0AXEyKxQ7izKGNsuSvTUduKGuu+uK+jYPGqhu2
 Wl5TU3ff3eMjdnGEIvs8Aett9jseW7Lngwb3HQlBqsBRcUpYwF53GsxjN
 JGJBmu7mwEvphn1l3N/sdR8HI/vWKG90bfcYUMLnPzgQcBMjILeBdFYgG
 YfN6MDH+PP2kchlel6fjFd8s081PhQfT3+tTBOvQEQ6RWmltf9HKn4+GN
 +wqu3IRT3eheOEQp5zwJO/i4RuDZzS/VIS1IsnG729F2UkLL0EjNbT8Ly w==;
X-CSE-ConnectionGUID: Y6JJtkg/Skut98j+nmVoZA==
X-CSE-MsgGUID: j+UDl4NxTiajTzBPc7HStQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="29205815"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="29205815"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 23:26:53 -0700
X-CSE-ConnectionGUID: /1nWkNyiSoy1egNL2rSTCw==
X-CSE-MsgGUID: /sSiaIflTKOpM7aYM5Ki9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="79687703"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Oct 2024 23:26:53 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 21 Oct 2024 23:26:52 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 21 Oct 2024 23:26:52 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 21 Oct 2024 23:26:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bPqjBIeiWluPBXbsbMN5E2p13Ei+Af0Tmlp2fpLM1RvCbhYTdmPj8pY5ZD/ITtZN7y7EnM5YUN07r+lLD1dTV9StD1SkaFuzvp1Exv/cXfoXiomnG8edgfO8wnppF/NCOGgmjsF8nyykb6oEAg25K42GBhp+DpvIlAof0QyIkJUJmLhnupCbjPLBYddGRN3irlKFUYnVogvPYEXUCwEDFMnOYfpwlKBFCLTqhn9nJPa/vzBCy+S9FJrHshuJuGPUJGmL3ioy6OLQVjdgEvQDSDW/v0R1JLY7p38r7VLa/JB5A5oHjt4Kncm7RnEo9csh1saxV8can9DISP9mCuSt6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yt3hioroBR1jIjqgW3/p3pGfcwSyGL+uYoJj4EhfbSM=;
 b=iN1F/EDjsL1w/RWxbUvwzwoT2XSDCVXCo9kVSS/9RzUN552W0gB/rFYCwr8CMe3p2di7fBAOlHUtkRX7nfMALaS7LmGoaQTV0qSR8PDOKDdcaAFWfIwiI8JXgWdAOPdzl4PsvMaAVNDdjGzrvS6fMaRPiJw9mSdmtXB7Ged9Nwmq94apc7MsoSNP40xM1+2ez8LjuqyGGkMafSZyuXqpMmL2izfGA7ceMDRz31o611FIYXF4nFzKVHDLEHqQgrVp/gOnZYLuaSJIpu25aORsasLrKzoI7m3MoYxrBgCopKlVJ+i7jX6X5NaEJBukUtpdOcKsyvX5PAiBVRpJAB8T2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by MN0PR11MB6057.namprd11.prod.outlook.com (2603:10b6:208:375::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Tue, 22 Oct
 2024 06:26:49 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9%7]) with mapi id 15.20.8069.027; Tue, 22 Oct 2024
 06:26:49 +0000
From: "Nilawar, Badal" <badal.nilawar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Subject: RE: [PATCH] drm/xe/hdcp: Add check to remove hdcp2 compatibilty
Thread-Topic: [PATCH] drm/xe/hdcp: Add check to remove hdcp2 compatibilty
Thread-Index: AQHbJEdR9Uj7BpJIski0M2k1n/M01bKSTaCg
Date: Tue, 22 Oct 2024 06:26:49 +0000
Message-ID: <BN9PR11MB5530247EFE733E0B4E16870AE54C2@BN9PR11MB5530.namprd11.prod.outlook.com>
References: <20241022055655.1902-1-suraj.kandpal@intel.com>
In-Reply-To: <20241022055655.1902-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5530:EE_|MN0PR11MB6057:EE_
x-ms-office365-filtering-correlation-id: 37eebd81-274e-42e2-771a-08dcf26282dd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?fN/QdogFQ69TsC17dWLcvtKERXSL2AnpPJSUp3Xh22NOH7DXvw9T/QENqlLU?=
 =?us-ascii?Q?x50dxVEngyNZYagjzWSGGj6UfsPnln4i4/bN9KZscUXRPaLmOlGAcdQd5Qry?=
 =?us-ascii?Q?McTl5iDIvN+JRdwKfJe/TmSy9IHiuHVbc2is/p7lkw87RgRqRK1G35hOGpCR?=
 =?us-ascii?Q?oEU5Otb2N6Qf/jeQrGFwFXC9f0/X3wrLXQQtm4VHshNfNhYj8NYx4v5uT1dg?=
 =?us-ascii?Q?StZLM4F5aFBxpQu6A2GJ83MZKM/98cwVpyPWBCHRzYM/sJnN6qkwaU6/juCe?=
 =?us-ascii?Q?Q4PLBDkLohE4DSCRc1gqZTQanUMpeRJoN/P93TWfaVS7gGSUxsSvu5cc9C5b?=
 =?us-ascii?Q?0DPYYKlqfLAMUEcu3651s9kp77g4eW+jV1vVeQdbECYMma88O3fOJfhFcgWM?=
 =?us-ascii?Q?QXKYlRqBaTxQ0qt4S8diQyGusC8IKN+2PK7jSpgaOpQYHm09SGSktxIvRovF?=
 =?us-ascii?Q?ubHA0wu6/syIpaEAYDtnONJMbDr7oE4VGgxWWzshOGeq98f517mjar1CsX9w?=
 =?us-ascii?Q?7S96dt7nHMMq32MvJLffp3c3L3DXORaDMU/LF/vDR+eTCS8BozgcT0rEjabH?=
 =?us-ascii?Q?ho8WS/t5PwcsfTHozrGnBgtmjlxyvARBwvXBfN59uKmI7Zo179bpiABIvLFK?=
 =?us-ascii?Q?fob4tm70whNOqW3R+WHvF1cENZp24UiUw8d/nzQzOxVLPVELqtLMem3JFyLM?=
 =?us-ascii?Q?bGAxK+JvCyldYREI562XoT4n4XzaM/IpQPsmyJnYcbKkESfwYWmiGz57Sk13?=
 =?us-ascii?Q?/e4NiFYqBmCheSUKPFlcUalCw5Gt4FkhDfmJC3ATzWkNG7G57sREPLl0qa4B?=
 =?us-ascii?Q?0JgllOdaEPvIBbN2fjrH66JzMe10IMabE6/g+mQAft5N9na9v4UT/+oE9er7?=
 =?us-ascii?Q?/9yWsqTTfmqtxKtAfzcu41kZNU7FWqkj1e6LLCCyLFSm2+MCjqZR79ouVm8E?=
 =?us-ascii?Q?qsolS0wyR5h1aXe6heAoO/yxOi8uxP4KsnFx9vgWDOFageJxo+oviiDDoVmn?=
 =?us-ascii?Q?M5YrlcgsS7ZKt9bWbmZZW2CTEzzWXMGuEeOl3RcUhifSkXdu7JncoEw2TcQL?=
 =?us-ascii?Q?eHXHY5O9ZNaaoUbWjUJ+vu6sMHBhoAgn72eDeT7dNSY38HXxRIJlf6XjKgSC?=
 =?us-ascii?Q?tt7jGS3IV/XzSxqy788ZvXmsVj+cDv20NOa5qBu19UO/owZHxi5xGX056YEd?=
 =?us-ascii?Q?dFpHCP8az6oIMRv0g8Zj2tLPePCvlUgoKAJsehn0MVKnataaa+ZKtOJW2NLI?=
 =?us-ascii?Q?dlfdzT0YqF10OAHiKn4NIcG3XTXDQCntQPnwWegDNPqKOYAV7m3vBOozZsX4?=
 =?us-ascii?Q?sRCSlPcJ8BIjva0XZKaF7vuTTCKjLfIh9I6rhgf1N2birUgaRbDwwGWx4R9o?=
 =?us-ascii?Q?0L9HNJc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?s7HBHw8/ETABwvZDHuGIy0Pi/XZtWE/dCRvdfxA/GdUrE+d39gkbku/wafkO?=
 =?us-ascii?Q?kPYOTZM7nmW3GZdkjT33hkCzLtyvIdGsjMT11PXBbOROnACSQ99IobL3Zd9z?=
 =?us-ascii?Q?ss8T5oClyQBXHTdRDGdvU0Jv3WksM2e+T9mXbOhJrCNgU+obDBUy4OEOFuXT?=
 =?us-ascii?Q?pIxGhxGQPGjcRmV/8RIIntlcpB89MLpO3PiyxcH+u0mLr3pTVpOIFZMF9J+S?=
 =?us-ascii?Q?Norlx97wyrbGyu+/m0PDl9agMQlYWTIRWh1Bocwkneb4rhXwKWDkyylX0pWi?=
 =?us-ascii?Q?Dgi+ASvQEK6VXzguYQfdPm2XUL7ycpndHF47+aFlw1Sat7gq/YzYJeO1KIMk?=
 =?us-ascii?Q?NtF6XwWfXK14xfcaX1nIhR8IvwpA37VPditx8wlakA17/PX8X7RssZXt8t7l?=
 =?us-ascii?Q?rjywc0NKU/m+3NpzUH2e6ki0joE2dZJpH90FhJPdpJboH3xoYADyRRvrrvj2?=
 =?us-ascii?Q?tirjpqFz1vt1ecQM92117AFYF6E7IpsroYR9oMF6Q2re5rUyMWgpx5KV4xOU?=
 =?us-ascii?Q?7eQHAJ9VJ+nR9RrwDCGzpsun11wXcvKzlDlGuK2nelRiL0es1mKrM/EH+TwK?=
 =?us-ascii?Q?xgoqb4/zqvYfczfrGF7WCJ6ioUerxytCXYFiV9ajsoWVZkSjCQtKkjc5jvnb?=
 =?us-ascii?Q?lYCS+xKCgGpIAeaTnkQQRtCjX4DKVEU2Eu0tUkMa5+Nozac1WTCKs1qiaNuO?=
 =?us-ascii?Q?vQt5XNyT7+BIiQVQyOQX4gu4OyrWWp89kbbjXcw/VqBdCR1GdaS/eRog5nuY?=
 =?us-ascii?Q?uC/8LdhXmfdr41r1ZhvYt6Z8MZmPVqiZL/U4OKQQMfzbHlWyP8ct2WiV45C7?=
 =?us-ascii?Q?+0ogK1hwvaSf4vNrqDG9G05BZiHctYgcC7MPOUFM5hN2PBJx0bHXvgEEBk8n?=
 =?us-ascii?Q?oU1WI+q0p8msjalxrymurP71pEUpJAvMuPCJWc+wL3guN4lgxGnO5l4IvFN4?=
 =?us-ascii?Q?WH9poWClMfX5HelEs2N8Jib1E2pIVfsvwzmd27j0CcljfREulq/IlTD/v6MR?=
 =?us-ascii?Q?CyPkYIEQ+0wUebG8rpDsPgXzEzaZrPfUFDwyNMh3ENLmv8AAfS7LaBfY8rYp?=
 =?us-ascii?Q?Bgv68N1+7jF4CVk6Aa28DFiMEvGj8/4shGTgE8bqN3CIfD0uAInVIY76Vb3b?=
 =?us-ascii?Q?4S9/uaiPRFTmCjS3kMHNddbFBWNQcucI7ZMTAkhIDqd3im4RNKTJ7bPZ2omr?=
 =?us-ascii?Q?6zVwW7d0oWLxJMoHNdeAWHCj2r43V3lzP4K1dANB0DFYcI1giDuzyUtTlFsV?=
 =?us-ascii?Q?fRen+DQcXv0OssgTtMHKhmRSJTfRpfqmeORVPH+Mx2ZwkdJrI9EC12s57E2Y?=
 =?us-ascii?Q?aaWSd7gsJoVSfOO1JMTRqDeCapyzDjoljWsbQDRuTKyseQn7rLTZVS38qIs6?=
 =?us-ascii?Q?xW9ADBcd6CpU7yiSpDyH+gAt0nAdpbnzVFJx3pdGCrQVpr/rf06wKVkU4yqS?=
 =?us-ascii?Q?nwG4xzlkhIsPUzyR9u4dQaJC/FBG1Sc3fYE+2nBMPOerlbpNCE9DQ6Nj96YJ?=
 =?us-ascii?Q?V7/oqFR7/mccdR2XgW/JhT4Wju7wmqhYt2Shiir1semJ4ckV6wI1ULA5Lvql?=
 =?us-ascii?Q?a2QeUTw02akqPtzXxT09c08oovraKwNIOb2U0OeX?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37eebd81-274e-42e2-771a-08dcf26282dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2024 06:26:49.5630 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6ritwZh1la1U2XoR4gK8oXMb4B/ZA58quFEQteho8bxoXM3bOr7eo/aGNfuZVcB0pX7EOKsBrSJS168E0Gi7yQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6057
X-OriginatorOrg: intel.com
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



-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Sura=
j Kandpal
Sent: 22 October 2024 11:27
To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
Cc: Kandpal, Suraj <suraj.kandpal@intel.com>
Subject: [PATCH] drm/xe/hdcp: Add check to remove hdcp2 compatibilty

Add check to remove HDCP2 compatibility from BMG as it does not have GSC wh=
ich ends up causing warning when we try to get reference of GSC FW.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Could you please add fixes tag in commit message.=20

Fixes: 89d030804831 ("drm/xe/hdcp: Fix condition for hdcp gsc cs requiremen=
t")
Fixes: 883631771038 ("drm/i915/mtl: Add HDCP GSC interface")

Regards,
Badal
---
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 3 ++-
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/dr=
m/i915/display/intel_hdcp_gsc.c
index 55965844d829..2c1d0ee8cec2 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -21,7 +21,8 @@ struct intel_hdcp_gsc_message {
=20
 bool intel_hdcp_gsc_cs_required(struct intel_display *display)  {
-	return DISPLAY_VER(display) >=3D 14;
+	return DISPLAY_VER(display) >=3D 14 &&
+		DISPLAY_VER_FULL(display) !=3D IP_VER(14, 1);
 }
=20
 bool intel_hdcp_gsc_check_status(struct intel_display *display) diff --git=
 a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe=
_hdcp_gsc.c
index 231677129a35..e3c57f0b79c4 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -32,7 +32,8 @@ struct intel_hdcp_gsc_message {
=20
 bool intel_hdcp_gsc_cs_required(struct intel_display *display)  {
-	return DISPLAY_VER(display) >=3D 14;
+	return DISPLAY_VER(display) >=3D 14 &&
+		DISPLAY_VER_FULL(display) !=3D IP_VER(14, 1);
 }
=20
 bool intel_hdcp_gsc_check_status(struct intel_display *display)
--
2.34.1

