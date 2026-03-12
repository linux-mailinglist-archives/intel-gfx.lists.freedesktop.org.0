Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WDMYJWLUsmlDQAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 15:57:38 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D33273C7F
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 15:57:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AAF710EA33;
	Thu, 12 Mar 2026 14:57:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RL4Bx45c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7479110EA2D;
 Thu, 12 Mar 2026 14:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773327455; x=1804863455;
 h=date:from:to:cc:subject:message-id:
 content-transfer-encoding:mime-version;
 bh=cvq3NnLRHQNMYPfoDdmRSTVe/9Mpf1l5hQZKcKttO0M=;
 b=RL4Bx45cjHaJ88Q71lP/8Rg7nYifistTdBNFXSUcchK0OBi4PRB1Pue7
 MEKfjEeJP5/YCH90HxH0j8a9wgno9FbsuoGTV7USHTEDYxT38wILT1TD0
 suZxRsm+lCNF9+DzcWhd/Wi6CoLk335LEQiMlyL4xy2+jmppT+8dH3p8h
 5mFTVbZ1a1CcSpJjU9/FDOUzfTB1Aact9Ot4PNj8wmMDI88vh1GeAs3+q
 CWxQOvmbW83Gm+zMO12bfWb6NtP2o/N5xU8n/Mqr8EiR76r6FWTOp+O2B
 Fr1hj/yjczp8x7F1opzb+s2ti6dfMumzT7D8eLyPemga6rSN4NvISoVwZ w==;
X-CSE-ConnectionGUID: Jq828Fb7Td+V3EI+KlC0SQ==
X-CSE-MsgGUID: uO6yfcZxSmW6QhLiISQ+rQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="85506857"
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="85506857"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 07:57:34 -0700
X-CSE-ConnectionGUID: XpmCQdxERearAmrTESALpw==
X-CSE-MsgGUID: V2UFnmdMSUCzQ5P4E8vwbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="225288136"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 07:57:34 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 07:57:33 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 12 Mar 2026 07:57:33 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.34) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 07:57:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o8k9Veye3MvjXvU5yiMNPv8SlEruxS+1E0/Dk1YNF04iEMcOreXf+cGWjy72Tif6KW11I09uYiLWfV/NaWfqvTeK56ZFkUDOmP9CEw9ecP3WGzG7t0q9ymIXC/0Sml9WmTiF6TCH4BL6bBxmbNlPIX5O4kBUKYCOceqphIHX35xKmG6gZURHtD+YoyhHD+v6K575Mksz7g+4VhIFR6VrZQBAolJhdFdX2pD6Z4CUkN0p/R2ujzXfEoFRJE95W3XtZgyguQKchbjlotxaV1F90nzb9/le/ygUvfCXENZ0NozYCA0HYnFQ1qU3kUETuqbeRpnIEQrztyFXV8wM0qhjFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kXz8dwp70m7GYuzxz1EFYq/SnQo5RoBF7YW0c9VbPrU=;
 b=JziQDS5WdL5U0Kfw9ly+iwGzAXebbMxp/Hq6KPgL7sBMmxLpHkpavT7vzCnQTOCO5a1SSeHL3R6kY9eqwKHz4OBpNrMrWHD3O070WlitdFdY07wO4Roy9BvcJyQtZw/XBcj646d9UGs7clsytuBE+J7PWg+OAvUwH1Iyh5tlmYtdsawMKWhpIMI/tj3aRH0OlGJbTweRb4r9Fwo/CkQLdQfcvNcnoOokdeXQ7OMn1eg8SNLHPTHM0vNRNmDe9HnpYstI96vPpA25JPTP3rdQPodaHyyp/EQICuotdcWGCedleEgbmx6NUT5La2BNHFYVI9mPOOHQ6XtZuzZ7UfwGZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by PH7PR11MB8551.namprd11.prod.outlook.com (2603:10b6:510:30d::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Thu, 12 Mar
 2026 14:57:30 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::e0c5:6cd8:6e67:dc0c]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::e0c5:6cd8:6e67:dc0c%4]) with mapi id 15.20.9723.004; Thu, 12 Mar 2026
 14:57:30 +0000
Date: Thu, 12 Mar 2026 07:57:25 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Matthew Brost <matthew.brost@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, "Oded
 Gabbay" <ogabbay@kernel.org>, <dri-devel@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dim-tools@lists.freedesktop.org>
Subject: [PULL] drm-xe-next
Message-ID: <abLUVfSHu8EHRF9q@lstrano-desk.jf.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0070.namprd04.prod.outlook.com
 (2603:10b6:303:6b::15) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|PH7PR11MB8551:EE_
X-MS-Office365-Filtering-Correlation-Id: c46a42df-0562-4271-0e24-08de8047aec4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: E90CpE/c+E1ZLLDwp21OEfmV4V086LQl/gllEdh9z8JkPZaogB3Ab7AeBmNaGGHXMR843H+2+PtVr0cLw8Cjp+wQt85bv9Of9MfALFQtosaYyld/C43tbRjF6tBirKyBvoo3dYXW414HwS8DKZnIEfLqDvXLwyEwSu3rKr2NGbbpHrueeISpeIkNkvVBBjwI7+ztRuh8ZraIGdB+fedazI3EXJ8s+XfYdh8kkdrGrM5iSq+nHNMCOEfedmovn1ank2/gtKBtp8EPtjTZy1I4MwAtnk+d6xgUGoX0M/0yOva9aWIy0qnbGA5VL/MIatAcyMxmJ2hEYU6apTz9TU0Rt17EadJFSLebmgRj4Xa8LMptPGdnOjf6g+u+Ai5K/uMHi5bi5IrKZZ37hjkUNrs/zqa8P3jWOYeVXz/MbYxtgMfeF1QHGJxql9pi6hMAkbnmG+Um/+Sx4j1qmdwzaqZkDx9jgYtvyRZNgCYr23nw/b1UeZD822Zb2+We4Dt7mXUW6a8sVI64VixE8khGoL4KlbvPC/f0cHM8nPAR76Nwe8kzW7pOOoZsV4JVd+52tW2MFq+76RF980hiW7z0O1MqxiToSVJA29bPCi878RcU5F3zcThVLxg4Q3fm5cAIuSEFKZ8KT2TNizEFYc6H3WA5kx6UR9ckBDBH0T/CuCTxFbY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?G48oCj6n/3tDqk6Rm5xC1HPHtBWM3GeKivRwQsM2s9ID4Rn3x9ogbg0WEk?=
 =?iso-8859-1?Q?Uez0MQ0Xf0sBFUW1JP4P/TKSzJIQ3Cv4pzi/NJdt7W6PqD9mpFaLR/eRsg?=
 =?iso-8859-1?Q?KLrzZjN9579jf/QzcHTN5BETQAuRBFfx/mmj8GKHCyJvBYn+NdEPiXmx/8?=
 =?iso-8859-1?Q?62ut5VFCMpX8nkcrg5lRW3uGKLmzsTEzE2m2sLzw3MQexRhT8IHLa6+lXN?=
 =?iso-8859-1?Q?bTfKjq1Ej8aJUJR5wqc1AeBTAKIKRj9aaaQIZ5X/8rFAllK8TogcxqdiFs?=
 =?iso-8859-1?Q?96E9Qnht1dk2IBopxRHquzzgGCXfAxXOiEh1ZKA5wXdXlJmKg1ky1ttQqj?=
 =?iso-8859-1?Q?lxFAiSZIJqLI7TOWdNe/PhilWlNYCI+Rhw8OlBK+YplEbJychlEch3RJK6?=
 =?iso-8859-1?Q?LQ6PHuirnFRs3TQ217pf3vKOtzSs/4QDI87GGYX6WsTDpHD75BVDG/laYD?=
 =?iso-8859-1?Q?4xP2UpKg2f+mi176T0tV/VVtLHEssK4vqiuf0ULrz+XBMQ3BdX7M4fIQYN?=
 =?iso-8859-1?Q?OmTgSjFjUHOzQuhRa/nzswUpOojNG6XsjlATHjtWhSyw7jmiOxqDcIfkQb?=
 =?iso-8859-1?Q?xIJd/xqKqmHmQFGbAkgHbmizc/RD+2an7IKTkR9mXLeHi452ReSe3L+pnf?=
 =?iso-8859-1?Q?s29/Ov/t03axHmLH2oRhtFUAVy9fEIWRVK36Y4FIeP2GBWGPWfBYSixwcR?=
 =?iso-8859-1?Q?rFIajXT60yQxmuq9KF7NUzqquzlhqk06p5l7sahyhAC3aLlM18794cAoN1?=
 =?iso-8859-1?Q?0TrSTxYzz4Cn0t3+P3F6ETdWlBU1QRzKsqOCy6lVSveTioZw+mEoqvS/1t?=
 =?iso-8859-1?Q?OQ/XXa4jBZj1sxGHuavDTOSEi3xmj+sHBd+0Vs5z5m+fogio5X/gdLcFWl?=
 =?iso-8859-1?Q?HaBLk48zulvU7GSBGKlUo7q9Fgd2eE0XGtOiKAkf54ciGqO5oUywTOoxyF?=
 =?iso-8859-1?Q?pUfJBinFny9gTb2A2sptJzBFyE/xcTulE4LW9teiDpxMsQUnz+OCLs8dSz?=
 =?iso-8859-1?Q?KmoNOZl/gWdcdUhAsdcpDGgdG9CXtADjTicysnj3Rwf8p+Rg+sFnxXEs7r?=
 =?iso-8859-1?Q?QoxXtsD8cMlThySJxo2mR15u8on7SiBhlJptJOFzt4lkMcPUILavPZfNl0?=
 =?iso-8859-1?Q?njW0CCMivjsg527jHeQujOdg4rZwKlXW/V9/Ad/VCQ3PnYbug3jRBBqW1t?=
 =?iso-8859-1?Q?kEn/xwO+Ezxlbta4EUmiFBmJkm89APWOoFkZhYKHK/DVoeIdiiQ36mMf6L?=
 =?iso-8859-1?Q?sL+/ucgsFulzTpUc7aNBfEYUhTNwCmsoab022AdAsCRgRw1N6opPKzpY4J?=
 =?iso-8859-1?Q?3RTc/ErfOLRsYBpBz6kqQS5HYTnl0UVwgUtYxUCDHBwoqWrnliZjZpDY27?=
 =?iso-8859-1?Q?JYC7SLZWfMUqs9fktEZcEkQpAa6Qel5Ru7GWTuyvH/093RCKbpjs8PqqnU?=
 =?iso-8859-1?Q?FRqWxAHSbydBDnlUZVg4PbwzYosRSHfga22Ho++VxLepT8eSRwl5cmXsc4?=
 =?iso-8859-1?Q?IYesRMIYE1OtngF7Nrk1VSWi6G6aaRCWox9e3f6y9/1juy04PLTg14UP7b?=
 =?iso-8859-1?Q?EGxAAauCfm9A9x2TgmhWkmG+NAcNMLFvZ9ygh6r70lCemSA+NhxtNKBiZ5?=
 =?iso-8859-1?Q?DowgsUCVe7Et+PktSJNqAFoCJNI8z5+GoEKB7Gn2aYWURZr7OlqDCl3a9f?=
 =?iso-8859-1?Q?k7ePqtpBJ/Oraia9ton44233Nkfzz0yBmQ0ttITvzZawtFD/BJ8wy6RGqD?=
 =?iso-8859-1?Q?IAPqUlWvWS+bwbuG8YUmo6aAEQkn13BzwNvdeEMixzMhiXVct0WaexG529?=
 =?iso-8859-1?Q?Q8t0R9NB+w=3D=3D?=
X-Exchange-RoutingPolicyChecked: X0hm1Nw/CzSHPsoQ747bJLem7ao0wcU6n84Q42BPceLGhKK226TtMd5HvoELJHedhKTZX+9nTJmkNMSwbY4lUpkpq90/6JGY1Dbwv2/u4YJ2JZtHL8hV/g/E9nFb+Kh0wBlRrPNS7+Lg/aoJ1quQLDGCsAWAieS/DJ2axSLTHFf4/7X//9/u6zalUNBniUMbh4nzHMA+S1l8He3zGGAnVZEEDhedYLKWR6sGLrKdCQHI/42eQFbstQwP7ogGDTO30IZhfhniZWGPpBw86hoK0kVDIIlbHDZhggSgmLI2a2ZbmXzo8VyXGberJI+ZEtGdtVrf7WGNfzrA/PaOpIzqmg==
X-MS-Exchange-CrossTenant-Network-Message-Id: c46a42df-0562-4271-0e24-08de8047aec4
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2026 14:57:30.1458 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 73J/rbocyMO3E8zbTZd62JvNq+tQow04oVbsvHbLq0nnE18NX+8MVxiaX8J9cN6E56/APtcADiHpwgqmlmE11A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8551
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	RCPT_COUNT_TWELVE(0.00)[16];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url,intel.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[matthew.brost@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: F1D33273C7F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Dave and Sima,

Here goes our second drm-xe-next PR towards 7.1.

In the big things we have:
- VM_BIND DECOMPRESS support
- Two-pass MMU interval notifiers
- Introduce the DRM RAS infrastructure over generic netlink
- NVL-P enabling patches

Thanks,
Matt

drm-xe-next-2026-03-12:
UAPI Changes:
- add VM_BIND DECOMPRESS support and on-demand decompression (Nitin)
- Allow per queue programming of COMMON_SLICE_CHICKEN3 bit13 (Lionel)

Cross-subsystem Changes:
- Introduce the DRM RAS infrastructure over generic netlink (Riana, Rodrigo)

Core Changes:
- Two-pass MMU interval notifiers (Thomas)

Driver Changes:
- Merge drm/drm-next into drm-xe-next (Brost)
- Fix overflow in guc_ct_snapshot_capture (Mika, Fixes)
- Extract gt_pta_entry (Gustavo)
- Extra enabling patches for NVL-P (Gustavo)
- Add Wa_14026578760 (Varun)
- Add type-specific GT loop iterator (Roper)
- Refactor xe_migrate_prepare_vm (Raag)
- Don't disable GuCRC in suspend path (Vinay, Fixes)
- Add missing kernel docs in xe_exec_queue.c (Niranjana)
- Change TEST_VRAM to work with 32-bit resource_size_t (Wajdeczko)
- Fix memory leak in xe_vm_madvise_ioctl (Varun, Fixes)
- Skip access counter queue init for unsupported platforms (Himal)
The following changes since commit 58351f46de26bcc4403f9972f7aed430d15cbd03:

  Merge v7.0-rc3 into drm-next (2026-03-11 11:18:31 +0100)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/xe/kernel.git tags/drm-xe-next-2026-03-12

for you to fetch changes up to 42d3b66d4cdbacfc9d120d2301b8de89cc29a914:

  Merge drm/drm-next into drm-xe-next (2026-03-12 07:23:23 -0700)

----------------------------------------------------------------
UAPI Changes:
- add VM_BIND DECOMPRESS support and on-demand decompression (Nitin)
- Allow per queue programming of COMMON_SLICE_CHICKEN3 bit13 (Lionel)

Cross-subsystem Changes:
- Introduce the DRM RAS infrastructure over generic netlink (Riana, Rodrigo)

Core Changes:
- Two-pass MMU interval notifiers (Thomas)

Driver Changes:
- Merge drm/drm-next into drm-xe-next (Brost)
- Fix overflow in guc_ct_snapshot_capture (Mika, Fixes)
- Extract gt_pta_entry (Gustavo)
- Extra enabling patches for NVL-P (Gustavo)
- Add Wa_14026578760 (Varun)
- Add type-specific GT loop iterator (Roper)
- Refactor xe_migrate_prepare_vm (Raag)
- Don't disable GuCRC in suspend path (Vinay, Fixes)
- Add missing kernel docs in xe_exec_queue.c (Niranjana)
- Change TEST_VRAM to work with 32-bit resource_size_t (Wajdeczko)
- Fix memory leak in xe_vm_madvise_ioctl (Varun, Fixes)
- Skip access counter queue init for unsupported platforms (Himal)

----------------------------------------------------------------
Gustavo Sousa (8):
      drm/xe: Modify stepping info directly in xe_step_*_get()
      drm/xe: Drop unused IS_PLATFORM_STEP() and IS_SUBPLATFORM_STEP()
      drm/xe/nvlp: Read platform-level stepping info
      drm/xe/rtp: Add support for matching platform-level stepping
      drm/xe/nvlp: Implement Wa_14026539277
      drm/xe/xe3p: Drop Wa_16028780921
      drm/xe: Translate C-state "reset value" into RC6
      drm/xe/pat: Extract gt_pta_entry()

Himal Prasad Ghimiray (1):
      drm/xe/guc: Skip access counter queue init for unsupported platforms

Lionel Landwerlin (1):
      drm/xe: Allow per queue programming of COMMON_SLICE_CHICKEN3 bit13

Matt Roper (2):
      drm/xe: Add for_each_gt_with_type() iterator
      drm/xe: Utilize for_each_gt_with_type() for type-specific GT loops

Matthew Brost (1):
      Merge drm/drm-next into drm-xe-next

Michal Wajdeczko (1):
      drm/xe/tests: Change TEST_VRAM to work with 32-bit resource_size_t

Mika Kuoppala (1):
      drm/xe: Fix overflow in guc_ct_snapshot_capture

Niranjana Vishwanathapura (1):
      drm/xe: Add missing kernel docs in xe_exec_queue.c

Nitin Gote (3):
      drm/xe: add VM_BIND DECOMPRESS uapi flag
      drm/xe: add xe_migrate_resolve wrapper and is_vram_resolve support
      drm/xe: implement VM_BIND decompression in vm_bind_ioctl

Raag Jadav (1):
      drm/xe/migrate: Refactor xe_migrate_prepare_vm()

Riana Tauro (4):
      drm/xe/xe_drm_ras: Add support for XE DRM RAS
      drm/xe/xe_hw_error: Integrate DRM RAS with hardware error handling
      drm/xe/xe_hw_error: Add support for Core-Compute errors
      drm/xe/xe_hw_error: Add support for PVC SoC errors

Rodrigo Vivi (1):
      drm/ras: Introduce the DRM RAS infrastructure over generic netlink

Thomas Hellström (4):
      mm/mmu_notifier: Allow two-pass struct mmu_interval_notifiers
      drm/xe/userptr: Convert invalidation to two-pass MMU notifier
      drm/xe: Split TLB invalidation into submit and wait steps
      drm/xe/userptr: Defer Waiting for TLB invalidation to the second pass if possible

Varun Gupta (2):
      drm/xe: Fix memory leak in xe_vm_madvise_ioctl
      drm/xe: Add Wa_14026578760

Vinay Belgaumkar (1):
      drm/xe: Don't disable GuCRC in suspend path

 Documentation/gpu/drm-ras.rst                      | 103 +++++
 Documentation/gpu/index.rst                        |   1 +
 Documentation/netlink/specs/drm_ras.yaml           | 115 ++++++
 drivers/gpu/drm/Kconfig                            |  10 +
 drivers/gpu/drm/Makefile                           |   1 +
 drivers/gpu/drm/drm_drv.c                          |   6 +
 drivers/gpu/drm/drm_ras.c                          | 354 ++++++++++++++++
 drivers/gpu/drm/drm_ras_genl_family.c              |  42 ++
 drivers/gpu/drm/drm_ras_nl.c                       |  56 +++
 drivers/gpu/drm/drm_ras_nl.h                       |  24 ++
 drivers/gpu/drm/xe/Makefile                        |   1 +
 drivers/gpu/drm/xe/regs/xe_gt_regs.h               |  12 +-
 drivers/gpu/drm/xe/regs/xe_hw_error_regs.h         |  86 +++-
 .../gpu/drm/xe/tests/xe_gt_sriov_pf_config_kunit.c |   2 +-
 drivers/gpu/drm/xe/xe_bo.c                         |  55 +++
 drivers/gpu/drm/xe/xe_bo.h                         |   2 +
 drivers/gpu/drm/xe/xe_device.c                     |   5 +-
 drivers/gpu/drm/xe/xe_device.h                     |   4 +
 drivers/gpu/drm/xe/xe_device_types.h               |  16 +-
 drivers/gpu/drm/xe/xe_device_wa_oob.rules          |   1 +
 drivers/gpu/drm/xe/xe_drm_ras.c                    | 186 +++++++++
 drivers/gpu/drm/xe/xe_drm_ras.h                    |  15 +
 drivers/gpu/drm/xe/xe_drm_ras_types.h              |  48 +++
 drivers/gpu/drm/xe/xe_exec_queue.c                 | 131 +++++-
 drivers/gpu/drm/xe/xe_exec_queue_types.h           |   2 +
 drivers/gpu/drm/xe/xe_gt.c                         |  41 ++
 drivers/gpu/drm/xe/xe_gt_sriov_pf_config.c         |   5 +-
 drivers/gpu/drm/xe/xe_guc.c                        |   1 -
 drivers/gpu/drm/xe/xe_guc_ads.c                    |  11 +
 drivers/gpu/drm/xe/xe_guc_ct_types.h               |   2 +-
 drivers/gpu/drm/xe/xe_guc_pc.c                     |   8 +
 drivers/gpu/drm/xe/xe_hw_error.c                   | 451 +++++++++++++++++++--
 drivers/gpu/drm/xe/xe_lrc.c                        |   9 +
 drivers/gpu/drm/xe/xe_lrc.h                        |   1 +
 drivers/gpu/drm/xe/xe_migrate.c                    | 143 +++++--
 drivers/gpu/drm/xe/xe_migrate.h                    |   4 +
 drivers/gpu/drm/xe/xe_pat.c                        |  33 +-
 drivers/gpu/drm/xe/xe_pci.c                        |  12 +-
 drivers/gpu/drm/xe/xe_pci_types.h                  |   1 +
 drivers/gpu/drm/xe/xe_query.c                      |   2 +
 drivers/gpu/drm/xe/xe_rtp.c                        |   7 +
 drivers/gpu/drm/xe/xe_rtp.h                        |  20 +
 drivers/gpu/drm/xe/xe_rtp_types.h                  |   1 +
 drivers/gpu/drm/xe/xe_step.c                       |  74 +++-
 drivers/gpu/drm/xe/xe_step.h                       |  10 +-
 drivers/gpu/drm/xe/xe_step_types.h                 |   1 +
 drivers/gpu/drm/xe/xe_svm.c                        |   8 +-
 drivers/gpu/drm/xe/xe_tlb_inval.c                  |  84 ++++
 drivers/gpu/drm/xe/xe_tlb_inval.h                  |   6 +
 drivers/gpu/drm/xe/xe_tlb_inval_types.h            |  14 +
 drivers/gpu/drm/xe/xe_userptr.c                    | 155 ++++++-
 drivers/gpu/drm/xe/xe_userptr.h                    |  31 +-
 drivers/gpu/drm/xe/xe_vm.c                         | 136 +++----
 drivers/gpu/drm/xe/xe_vm.h                         |   5 +-
 drivers/gpu/drm/xe/xe_vm_madvise.c                 |  10 +-
 drivers/gpu/drm/xe/xe_vm_types.h                   |   3 +
 drivers/gpu/drm/xe/xe_wa.c                         |   9 +-
 include/drm/drm_ras.h                              |  75 ++++
 include/drm/drm_ras_genl_family.h                  |  17 +
 include/linux/mmu_notifier.h                       |  42 ++
 include/uapi/drm/drm_ras.h                         |  49 +++
 include/uapi/drm/xe_drm.h                          |  95 +++++
 mm/mmu_notifier.c                                  |  65 ++-
 63 files changed, 2653 insertions(+), 266 deletions(-)
 create mode 100644 Documentation/gpu/drm-ras.rst
 create mode 100644 Documentation/netlink/specs/drm_ras.yaml
 create mode 100644 drivers/gpu/drm/drm_ras.c
 create mode 100644 drivers/gpu/drm/drm_ras_genl_family.c
 create mode 100644 drivers/gpu/drm/drm_ras_nl.c
 create mode 100644 drivers/gpu/drm/drm_ras_nl.h
 create mode 100644 drivers/gpu/drm/xe/xe_drm_ras.c
 create mode 100644 drivers/gpu/drm/xe/xe_drm_ras.h
 create mode 100644 drivers/gpu/drm/xe/xe_drm_ras_types.h
 create mode 100644 include/drm/drm_ras.h
 create mode 100644 include/drm/drm_ras_genl_family.h
 create mode 100644 include/uapi/drm/drm_ras.h
