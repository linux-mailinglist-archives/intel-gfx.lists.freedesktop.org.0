Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3C08015A2
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Dec 2023 22:44:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C48410E788;
	Fri,  1 Dec 2023 21:44:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C832C10E788
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Dec 2023 21:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701467049; x=1733003049;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=O28T8NROgwRu3O1p5hRu4hWiMU9JG3KbM6y+oOPJJpk=;
 b=b6dnF6jZ1RUVsM13ln9bdKJsHchBXqlu3W8+TzkB5LObDPywWrAvksmk
 EWLh0MuqPWEd2ZTpixZCLXTAqSZ8+1WFBaRuAUeTco+b4jwvi4GX0bD5d
 ZKkj7883wC0gihta0r6PfPKtAeV8txr8gnMaby8oNNoRiUDcz7TUmytXu
 w39Crp7SWzNcDk3h+RNyZZ0YI6sIO3TOOlzK24GEBvFV1sg1c08MmxUmS
 CHjQsSs+UhWgPs3FTzKFC4L1ZUEguJoB1JOXPqit4LPlZCptK57SdgahS
 GRo+m42l/TwARbPfcW6Q1iIzhI/Ebez3zP4Xwz0Nmd8lpoMTEmz1GSy4v g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="383949274"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; d="scan'208";a="383949274"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 13:44:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="835893973"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; d="scan'208";a="835893973"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Dec 2023 13:44:08 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 13:44:08 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 13:44:08 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 1 Dec 2023 13:44:08 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 1 Dec 2023 13:44:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IHoyLJcpEqT5SwahIpTZjzSeqCIgJDGobESNhkAVHeHAPlUSfOVSo2Z+8M4u9Dkv+t0Cu34ljUSOiFPPBs9Ksb+ZV1S7X9lPESvic5sQsyZt/gyur9RRTWjaMlKwwryMmr1THRJsOvVixikX3dZ+79lnE3Glmy7azpdb4pWMtO2jf2gk7SYIWds0UsRlbUDgRWJJw+C7XkLEYkvrvNf8kcHsUNfm/8VQG2jR32cJXtbVN2GcYLyI9Vt53C5QUW3sI2EQmrRHVaE1Q6AfJrkz3Z+NxkF0Diupfp6rLlT3Epg9J7o6VFKNQIAO2ZutVXnxjgQ30wHTtKG5mUmnfb37Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QdC59HCd2YxxTXQlwNUOEFcdfZej4QWXQK0TSu7lJVw=;
 b=Dsk4MtEAZcygH1rEKnfya0O7h1KovRFmKJjP12EBbrlhUkcgYSSSYzudX0QmORVQ0yL+vB1bCMuCpQOrnfhzPKhvgQVwF7YVfGt60ErF2nBFrtuWs4OPdBdkWOLAKwgaNTi0QC1WKEcPuePKa1PS4fB32UrkifuYyhdE6WvoEJ86c3q/+y0cxG7cbB55LD+c0txgUDM1Oq2xLV3TcansjTOypxMt5BxmrBeo6DUY0/qmLYzpT1dwNwOfRwYx9RCArXlBf+iFlAookDLzhXZCavug1rE9KlNRoXU08U6xCf79mOKVslkdfB8qKBMDOn84XtJp6mte7goiL9ec20j2kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DS7PR11MB6103.namprd11.prod.outlook.com (2603:10b6:8:84::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.27; Fri, 1 Dec
 2023 21:44:05 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6%7]) with mapi id 15.20.7046.028; Fri, 1 Dec 2023
 21:44:05 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231128115138.13238-9-ville.syrjala@linux.intel.com>
References: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
 <20231128115138.13238-9-ville.syrjala@linux.intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 1 Dec 2023 18:44:01 -0300
Message-ID: <170146704134.74196.14713245006635889112@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR11CA0046.namprd11.prod.outlook.com
 (2603:10b6:a03:80::23) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DS7PR11MB6103:EE_
X-MS-Office365-Filtering-Correlation-Id: 52470b91-7886-4141-0954-08dbf2b6a3e6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: puUGZmTBY7I7ew/88ufFzKxQSW80C1Vw630wZPO/5FNtH6sqC0fd4qDUI8GTTkglqu8NGUbx0TnW0+EbmqTeTjBzA1SDpkTe9LcRVH7R0h7QE2icEVXyDaVa2zvlKoFcDm5GenHkxD+zEbS8dXJIU7ZoXvi5zZyLTvxl931RzG6X85wsbpmGYvlnp95h/bQnhNe0/v6U6rXJo+ZXdmkS31lCMO23tjB+hG/EgVpVUzhvn1tXnRITZ2OaKV1Hh9XnPmjdBjWgsqLN15+i+U21d/v8RzMy1RtzaXepSmAjvaJoKx2TaFDfVLEXxZ4VdY0byFlhJ1t9BXR4fEAtNi6o5P4OO2i6jiFIsJ6nizf+fSTrxlKKaRNrWDz/uq3+L9e1qmJaWE10wrbYrX5Lupp80X9Oc+pRSIpPoncamiKoVUb8nEU4HuHspuecstLLmNbQNpuixff50advisOptapHqdRMLnusbF5tu47XL9hbCEgU/aaYzBqcHg7LUAqkAyMc9+97lMRRUJLU7QzFzYu0V9uthcHEX+J+rkQg+ipl2TYqwIrF9PpTWxh21kVaXdH9Fx7qdGvJvzxUSTxGBj/KcxXMf2kuFBnCv7h/OGXYR1E=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(366004)(396003)(39860400002)(376002)(136003)(346002)(230922051799003)(186009)(1800799012)(451199024)(64100799003)(33716001)(86362001)(4001150100001)(5660300002)(2906002)(82960400001)(6512007)(83380400001)(38100700002)(9686003)(6666004)(6506007)(26005)(66556008)(6486002)(41300700001)(66946007)(66476007)(8936002)(8676002)(44832011)(478600001)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SEVlMmlrRGdUTFh2QVRqSnNTL3dBSDFJRW54bXEvN2gySyswSmFCb2RDaXZz?=
 =?utf-8?B?b25PUUZJSW5Yc0U4UmtzYURXcjZjdFNDbUZ0eTA3cmw4bjh2K0tENzBPRWpK?=
 =?utf-8?B?eFppR29JQ0llUkh3czZpRHNkMVB0RldiN3RZK2s2Q3ZSNjJuWnQ4bXRQTVE4?=
 =?utf-8?B?UGdqK3E5cVJ4YzNqcGFlTEp5NmhlMlFCMjBzV092K21wUGZma2I1STlCdEsz?=
 =?utf-8?B?UWhJZndXVGc2NTkyWFVMYTRHbVhuN2svWWZzNzdFRHZubWU2OGY5SWxqWFpt?=
 =?utf-8?B?Q0k2SGxyajFiWGpqOFZvMFExdGVkVUlrUk1wdFdPVVdzMjlpVUJSam5BTXdl?=
 =?utf-8?B?MDU3UFl3eWtpaHlxcVJzMDFYS3FMbXg5OXYwak1uL2o1UXNoeVI3V3N6cFVl?=
 =?utf-8?B?YTRuaHZvTlNjcFZvcnBvNFZUeTVEZjY3Z3d5Z1drSC82TUFucUZOc3Z2TmhX?=
 =?utf-8?B?bkFJWGZDZFdYSG9EY3llMWQ5Qkl0ODVvRTgydkkybHRJTFd1NmVobUUwTjBh?=
 =?utf-8?B?ZytqL2VJcWY3d09OUzU3dzVuUzNuQzFrdmErcVlSdk0vRlNjZ2JZYURobEI0?=
 =?utf-8?B?ck9mVGkvUHRKNnlIcUFrYjkvNUlNUUNCcEM0RXFERjBZZW9xemV4YXVwZ0lE?=
 =?utf-8?B?ZjcvQlNyR3Nscjk2V3ZWOFZrVi9FQzVlM0VGYUZZSTNML3U4K2NrUjNtQVpR?=
 =?utf-8?B?TnBRVHlaZEpjTmpKWm9zdmMzUUNKWTNzclJHR2tjQm4wV0NwZm1tS2hITkhj?=
 =?utf-8?B?MmJMUlQ4akthUW1DZTh4Q1ZHNE5jSk1aV2tEc3FCUG9YeFVHTlh1bDQ2NTNT?=
 =?utf-8?B?ekE2SHhOVjFDeUNNeDNoNndFRTNqZnNwZlZuZS8rK1F6MTJQSURJRDU1QWlY?=
 =?utf-8?B?RFZ4U3Y0UHQ0Qkc1Rm1XeDRGQW5nYnZ5aHk0T0RNeUViY0dEeFFpT01tdnZu?=
 =?utf-8?B?YlV6NmMrY3NUNTdBb2FTemMxNDdQUGVoUU5GQTY1a3dIUlA3RTB4OUN3Sitn?=
 =?utf-8?B?Y1NiRnA3ODc3RUF4TnlvUnd1RDRxNFNwUFR3TVdzWFJWYys3RkF6d2hmc1kw?=
 =?utf-8?B?eVR2bXREbFhLTTMxaWxqV0NqZmFUQy9PanNqbmdVMk5YOXczbTJNalgwMFlZ?=
 =?utf-8?B?L3IyRXpxODdsd0FyVUJaWGxxRTRLaWNJZjE2d29IeTc5dUVTa1p5UFRTd0Zs?=
 =?utf-8?B?aEtTNmw5dnJPYXhLTmMwRWV4S0YyTTdlb0dOMjNjcEo0ZFRoSTZpMTlIWUEr?=
 =?utf-8?B?a053bWFjSytTTVNCZGU3Q3BVanhWdndMdVpwR1duaEpZSERCTm9TK1pvOE8x?=
 =?utf-8?B?NTFUY0Y2STJhSlBhdHVtSDZ2WUhHdm1tdjFtSksrbkgvRFpHZnpBQ1o5U1ln?=
 =?utf-8?B?ZFduR0NiM212TG5xWWRGYThod250NG5xVHgzYlFJcG0zN3RzcGVqdVNWcG5j?=
 =?utf-8?B?Ylg0cC9zODMvdjBTMHhZU1BXZnlSczdDM3YxNmRVSzd4ZEYwV2RVS2NYMS9K?=
 =?utf-8?B?K1B3Z1JUWDdKd1FoVk9Mdi9PS2tNL3JVdGtrR0lJK2NnNmVKVHZqeDdqWFEx?=
 =?utf-8?B?MXBHcGZMRC8yUkpyY243M0RETXI5RkV6YVV6VzI0dUU5OEFaTDdmUGNFV0tj?=
 =?utf-8?B?M0pPK1hncVpzRmkwVXFoeFlyRGdZbTdkTzVqV0JDQ1hCTC9jRHJ3c2JNNlY1?=
 =?utf-8?B?VThBMngrS0lBVEhZYnpZVlg2aGNhU25IRWJRcHJDbWI1am9pSm9vRWYvTE9B?=
 =?utf-8?B?L3RTUHBZcXBlRzNKMEc5cjIvK2dkL2VmTnNtdTd3bGR1OUZvdk1Kejh5VHUr?=
 =?utf-8?B?ZWFZUU0wdmtwdzJtR0NUVmJjeVJ2UWJCdUZYMkdGaVRWYy9UN0tGYVEzSmZC?=
 =?utf-8?B?SEY4RDdXbW9ZL0NjUlB2RUtqckJiOVhRbTdER052ZFdhU1ZIUTYrQ0RtNjRm?=
 =?utf-8?B?V3BnM1ZTS3VRbWIzcHM3N0xFZ2h4QzNHWEhlaitjM0tpaUZld3dadkI2VmVT?=
 =?utf-8?B?VmFzVCt2Z0RRQS9oTVRuQ09PcnB3K2pzM05NMGxIamxpSWxNSGJnK0UxMVNB?=
 =?utf-8?B?Vm9ScWNKZjhFUEFkNkMrVWpoMzhUYi9zVXlPMmxabWZBR2UzMzBMaXJseWVt?=
 =?utf-8?B?bFhNOFAzSU5rRXdNTkN5TVNTOUEzQmtSU0ExZW91RVdIMkEvYXVlVlJqMTNS?=
 =?utf-8?B?eEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 52470b91-7886-4141-0954-08dbf2b6a3e6
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2023 21:44:05.1863 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: grafnKzzCipYLj6lnYNo+qMG8e4KaerGWUOKMYPDoouVVoeE3P2DQVkioc+UxV6t7ZUBjv4Sy5uk58Qf7ViuvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6103
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 8/8] drm/i915: Simplify
 intel_ddi_compute_min_voltage_level()
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

Quoting Ville Syrjala (2023-11-28 08:51:38-03:00)
>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>Drop the redundant dev_priv parameters from
>intel_ddi_compute_min_voltage_level() to make life easier.
>
>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_ddi.c    | 9 +++++----
> drivers/gpu/drm/i915/display/intel_ddi.h    | 3 +--
> drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 +-
> 3 files changed, 7 insertions(+), 7 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index dd04bd7b348c..12a29363e5df 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -3696,9 +3696,10 @@ static int icl_ddi_min_voltage_level(const struct i=
ntel_crtc_state *crtc_state)
>                 return 0;
> }
>=20
>-void intel_ddi_compute_min_voltage_level(struct drm_i915_private *dev_pri=
v,
>-                                         struct intel_crtc_state *crtc_st=
ate)
>+void intel_ddi_compute_min_voltage_level(struct intel_crtc_state *crtc_st=
ate)
> {
>+        struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.cr=
tc->dev);
>+
>         if (DISPLAY_VER(dev_priv) >=3D 14)
>                 crtc_state->min_voltage_level =3D icl_ddi_min_voltage_lev=
el(crtc_state);
>         else if (DISPLAY_VER(dev_priv) >=3D 12)
>@@ -3920,7 +3921,7 @@ static void intel_ddi_get_config(struct intel_encode=
r *encoder,
>                 pipe_config->lane_lat_optim_mask =3D
>                         bxt_ddi_phy_get_lane_lat_optim_mask(encoder);
>=20
>-        intel_ddi_compute_min_voltage_level(dev_priv, pipe_config);
>+        intel_ddi_compute_min_voltage_level(pipe_config);
>=20
>         intel_hdmi_read_gcp_infoframe(encoder, pipe_config);
>=20
>@@ -4200,7 +4201,7 @@ static int intel_ddi_compute_config(struct intel_enc=
oder *encoder,
>                 pipe_config->lane_lat_optim_mask =3D
>                         bxt_ddi_phy_calc_lane_lat_optim_mask(pipe_config-=
>lane_count);
>=20
>-        intel_ddi_compute_min_voltage_level(dev_priv, pipe_config);
>+        intel_ddi_compute_min_voltage_level(pipe_config);
>=20
>         return 0;
> }
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i9=
15/display/intel_ddi.h
>index 63853a1f6582..434de7196875 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.h
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
>@@ -70,8 +70,7 @@ void intel_ddi_set_dp_msa(const struct intel_crtc_state =
*crtc_state,
> bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_conne=
ctor);
> void intel_ddi_set_vc_payload_alloc(const struct intel_crtc_state *crtc_s=
tate,
>                                     bool state);
>-void intel_ddi_compute_min_voltage_level(struct drm_i915_private *dev_pri=
v,
>-                                         struct intel_crtc_state *crtc_st=
ate);
>+void intel_ddi_compute_min_voltage_level(struct intel_crtc_state *crtc_st=
ate);
> int intel_ddi_toggle_hdcp_bits(struct intel_encoder *intel_encoder,
>                                enum transcoder cpu_transcoder,
>                                bool enable, u32 hdcp_mask);
>diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm=
/i915/display/intel_dp_mst.c
>index 63364c9602ef..060728a4b851 100644
>--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>@@ -614,7 +614,7 @@ static int intel_dp_mst_compute_config(struct intel_en=
coder *encoder,
>=20
>         intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
>=20
>-        intel_ddi_compute_min_voltage_level(dev_priv, pipe_config);
>+        intel_ddi_compute_min_voltage_level(pipe_config);
>=20
>         intel_psr_compute_config(intel_dp, pipe_config, conn_state);
>=20
>--=20
>2.41.0
>
