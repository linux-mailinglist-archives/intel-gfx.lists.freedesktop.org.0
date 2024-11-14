Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C589C8F44
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2024 17:09:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E1B910E81C;
	Thu, 14 Nov 2024 16:09:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eyQMVrY2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CA7C10E81C;
 Thu, 14 Nov 2024 16:09:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731600578; x=1763136578;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=fgq4J5aGFFrEqgfh/+lE6le/9PfJGBruPU4GVRnB3Jw=;
 b=eyQMVrY2QsrRy93ZYKto2vNsvcSV/G8wpA0H1LVrqnwmHR8XgcJVSDBk
 UIiV01KGqT+u/4ARCO9KGmgZbBi1SfdoGLshxsXRDUF2OM64JvSSalIs2
 pBDo+PBMpEZwNzp35dAmjJ/cyEp2TphF1kov+9NZ5Gl/PSM1+wVWrcisl
 cfQOWW8IuuJ9zH3SG54lgEIHY2jpvZnjBnlSh20tsTAU1EyiO9u3Dc9up
 DgG7XVw+W27cTZnKFaPVxu5POgs6UMqsNfN1sQ8wKUoHQpGDk8tAi7pZy
 CS7KPz6ehL5RCMn2vF0FzAHZzgOtSxw0BjeKFeABF0hjY9K2xmLhvC5Ph Q==;
X-CSE-ConnectionGUID: U+0XWaAORQaAvG/onTGuxQ==
X-CSE-MsgGUID: 5iHc6aVbS1+yCi4iTCrY4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="31530904"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="31530904"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 08:09:38 -0800
X-CSE-ConnectionGUID: efo427LRTo6oGHSnF7iC4w==
X-CSE-MsgGUID: JtvOev6fRNuoDHM7PGPHnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="88376958"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2024 08:09:37 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 14 Nov 2024 08:09:36 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 14 Nov 2024 08:09:36 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 14 Nov 2024 08:09:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Eq32ZYu+g6sfEa+LbqQ9L8BoczjRIq7LbDUwfhyHanm8hCkoEEde4bAfmQV8OEI9awzCW0s61VCfsPXTCBG2GMEGD2mGEsMt1Ed4tvDPfV76YJZ8k/QRhzMXzyOGMmKKGoM6Qq78Wh1am7OEk8jjh1lBDGlqWNVY85fxDCpUSeLuRboE9NacA1bkPeQ7kVse7a6tKs6PyhIpuy9IywZcZqybBts0N2QecOOQFwRJ0Ked5humjcolEye1T2jQF1clIt90OMCWIXwL5E1wRv0ZtvKTjnkqNkzCHVZDd/li3gkBYC7ZAWgZw0e/1H9h9GwIsG0tolvonNISRK+IF4QJcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mTy8ZGhG3moNODY3EfBV0URc0FuIsrw9YsCSLJ6B5Gk=;
 b=YfbJEQ0ltG78Dswl1+8Y9iRLKIrjuJsJbMmxsf9ghxSuLV08DzwsCEPVsQnI3JyZA19azwF51SoLQsT4Aogf+cMBYhB14x95LZBRSpbd4/iKj5b2+E1/Wit36Wa5xVAuj7LWbMSHRQ6OjZnqNt4Lxk0WVD0del0CKD2YjFmZCslt5wboQdLebBHJidh3thi0xMrNUpHSy8Ym93f9a7CANz6ESuU8b6VWxf7I/fTgk6388Y/YwRDvn/BuqTxmJzT1nOgMuWRghlea1/Y7HHYqWzjsjWENKjnFv8zuQ9dwEy5evZW339IjIYm9vR/5n0O9bgdAZwp256T56F/Oel2/nA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MW4PR11MB7030.namprd11.prod.outlook.com (2603:10b6:303:22f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.17; Thu, 14 Nov
 2024 16:09:33 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Thu, 14 Nov 2024
 16:09:33 +0000
Date: Thu, 14 Nov 2024 11:09:28 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Michal Wajdeczko
 <michal.wajdeczko@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <Maarten@mblankhorst.nl>, <Lankhorst@mblankhorst.nl>, <dev@lankhorst.se>
Subject: Re: [PATCH 6/9] drm/xe/sriov: Move VF bootstrap and query_config to
 vf_guc_init
Message-ID: <ZzYguKUVI6DSpNvL@intel.com>
References: <20241107100140.292928-1-maarten.lankhorst@linux.intel.com>
 <20241107100140.292928-6-maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241107100140.292928-6-maarten.lankhorst@linux.intel.com>
X-ClientProxiedBy: MW4PR03CA0057.namprd03.prod.outlook.com
 (2603:10b6:303:8e::32) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MW4PR11MB7030:EE_
X-MS-Office365-Filtering-Correlation-Id: 473084fd-7d6f-49dc-98f8-08dd04c6b9cc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?l+mhN+aDgHNFdwBM7JmdmV6y3Ir2fGkClaAFPcKAni1cmmRJAR50MqtQrKhA?=
 =?us-ascii?Q?mU8IIVeXXdTaERbtFEvMkqSy6nOQ2gmLDTz9pcaGx+LfhvtTqK+ZUa2+ooA1?=
 =?us-ascii?Q?qqUPMZN315IHL/7Ay98QmHG2LOQ45uJpaT4jOaAl0nYJ/Ltew86wREMFobry?=
 =?us-ascii?Q?tQAHV2GROA4Ext5MFutOAwJ5B2JyZx7rRLM7NQB3tg08R1wfMPiQjS+9ITnJ?=
 =?us-ascii?Q?V4NfcTaESYdPzZ/cnAYSoxjxj3dEeEsV3F7OasE0y7q+XZY/xhcXKUW6flb3?=
 =?us-ascii?Q?f2dFddY3neA5dvpK93IiAll0Ej9r2KFnD1RNzVEbzo+L7h4KJ9vDwECkBWAm?=
 =?us-ascii?Q?+DGdJJrbyf3iGFDSN5pPB5M0KCbidwKMgrZyzOHNDII6WF93NYd8klbP2/aY?=
 =?us-ascii?Q?xYq1medJN01k/AvDhlMa/V9jjpdJlfeU+nCB9b3wKeKBsKnVhe5mrCYDMr01?=
 =?us-ascii?Q?zT5hPnhyahfKANwyxjP5jLEI+mz8WnOowW41ErtaIY6yIEzWrxs/F00mMpOD?=
 =?us-ascii?Q?s4g/FtEMpOJIEC3+3BXcTzD6UuScQNdEJHpiBZRox4+9qRYR+S3rPlqmkesx?=
 =?us-ascii?Q?cdDD/JM99SHRhioOTmliHZYdHhsm/HgDHyF5NDYfkvMyyGwteq6IsqFd82g4?=
 =?us-ascii?Q?4OF22FwAZBzCVWhKOPTkvvvsA3+QnhdAcmPeWjAcuAXJAHpKvYdGRmTkXMT6?=
 =?us-ascii?Q?Kp3O1TblstAs0L/Krm6OQd7/sKr6Zk320WmIfDD23ZnKOI8NapxY4e93NU41?=
 =?us-ascii?Q?S98hyRg90u3KPNKS1AcKi8qLdOWe203wl4A+o2O02XiEy8a4ivDRxlArk4yB?=
 =?us-ascii?Q?cr/67tFZNpNZRNNkojXjVcA4xX13UHoXa6hFYPT2kGLUF3EgE0Pe2AkQsPLn?=
 =?us-ascii?Q?pC3I9fwr4rrxLM0d8AH2thnqxOzaqUeNML9McxkVASVI2E873SOWyMEDmLKR?=
 =?us-ascii?Q?qgWHFwNzqOUfP8WhCuEPf3aR19LHBC3HaROZCppoH+YhSHQ2tjdoPxbBBGWm?=
 =?us-ascii?Q?v0PW7eJhPjGh47N3X6uXEkDKxvbsezbGf14UGn4VoYxQppPHSfAFF5+g+Ohh?=
 =?us-ascii?Q?T3ipyx59sIuGQrvn7GrvLu/hPD76BCYD/+k9jIkHzjvf7awK+olv1Zu7rYNn?=
 =?us-ascii?Q?dAAakqfR5Ud9tESwC4KTgo1Ty/dmHR6ZhEo7oyH0A2WT9NpUHKkg8EtNfALO?=
 =?us-ascii?Q?MadAKz4qiTgr0id7G8tSPD0s3W9bVsL37hkSXLwyOeP5cgMPmJmlA/oFllhT?=
 =?us-ascii?Q?UBzDed3idrCClbK5/rr1?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WBZsiUij6BT8HZdgOrOcfjRecmzo+4jNDZ4hKY7syaicqzcY6cnK8IadwNWn?=
 =?us-ascii?Q?fQ+417uim4ACFfpUfCNIem7SaN+n9850EeHaNfiEbz5axriqniS/LZjYCIaz?=
 =?us-ascii?Q?dEipkV27s23PGM8v8V89RXh1CLmJThYspK7DtV05zivOKF3siE5BBIDjoJez?=
 =?us-ascii?Q?8TRdh8CbPwbaKixjDLI7SzXGxaIPbCZWUfrWo8Eboq8Fjgd30/QS9aXEDNJ0?=
 =?us-ascii?Q?skD4WrmsfDfOPYamY5CiyNr6T2faKZxJdl4tq+xk8G8ayCeJ3mcQnq9tpilE?=
 =?us-ascii?Q?GPW57bqXceOENRLkJEXZ9vNwmpuZy5N1B6oNfTIzSGPGHM7mNkvYMSVa5ND6?=
 =?us-ascii?Q?vzW/0o0VusbAzezNX1D86HB0tN8wRqlWhxdS+jxikl9fBa1CE067Ty2DnLIV?=
 =?us-ascii?Q?NCnRceamOD1eRY9UGTsczNrMCM6R7SiDRGYN4PEOr98rKAGM8T+yHNn7VUhg?=
 =?us-ascii?Q?ykbKDMiPQ/yu3ps+hu4ISdfTuUdZBLyrVnYzrIe04oRRvCd7QFCfhJH+wyIv?=
 =?us-ascii?Q?6IEm/TPS4HltuTUDBDAxaLt8wtV0fH9KKnTqruarUiRCe6apklo/0Hi+qlF1?=
 =?us-ascii?Q?lDrPGqIPR5Cub9R4ttKATAoCJcXUbFCHLt3WSZAUtqU75hTagm2GZBSZnq7v?=
 =?us-ascii?Q?CS5/np7mZYbWDpKE/cezaya+h2f9fcOO3LkMdAP9YShqdrMWGGTI3MdRRo2G?=
 =?us-ascii?Q?WZgerdale6YlaNRqtDo5VcdJxrlTxp8JCALj/wUNKbj1baWE1ib1xQQbXJHu?=
 =?us-ascii?Q?NqCJq3BXz6QaqCrt3s9a0YmIT9Oeri+eRBIdBBalTeLOlaj/iT4Ai851OV3s?=
 =?us-ascii?Q?wpcv9f07/IQwndTbiHzD2851X65f3IWfMYWpKceXZrSiuI9GLDshF9YCcd1V?=
 =?us-ascii?Q?YecJqnARVJe8WLkcFUQLhH0DZSu/jIm/greKscP4JvajRamA9inA41jVMQdG?=
 =?us-ascii?Q?Qji0ifdag+lsclIr36+CFJk+fDzMdmJfGv0YBhuCTon0b5Wva1JK9+yVXRFn?=
 =?us-ascii?Q?N2qv3Bu7Dq/fzn4TN+OHGrpfFOGFlYXKsJ3t08Z7ZSfYca2T/kseVB/pfhPT?=
 =?us-ascii?Q?HSf3vfS9D2XAhZbb4ellgyj+CF9yEhNbeCH9y2B69ZvKQgmuSYplE26lRWQD?=
 =?us-ascii?Q?A1hVDWob0s1XpQsTfVEvlQHwFGK/lxN7/q+Gj90QGBCyt7TYVPXBD5CDu95B?=
 =?us-ascii?Q?uzDSKaAtHbtLHRjFTt3mc1pe5NY3jrKoLGikg9XtLx5rO+TuPuzS95mjR4Om?=
 =?us-ascii?Q?sLvxXOQCvsAL32U5hCN8yqxfPVw0mb3EWQ6kk1Qp5U4Aj3ypFRthBUkH/M6K?=
 =?us-ascii?Q?syEl7aFSc1MpdxLLfXc1aQ0/90xY7dQh3UpFETRjbZ8E0um/BkQWwTEts/IH?=
 =?us-ascii?Q?wr9fdjdg6Sa2Tb1ez7nZjgmOalJw5OzbVgS32L/+Dmm9CVUkSycb11GMPShS?=
 =?us-ascii?Q?VCkH98AkiQEiKSgJR2JarYoYJlcEhtR2aU9RrMl196zPppGSQTJvWGqTcorh?=
 =?us-ascii?Q?GLgZIHXnX8TzjYlTulLCcVZRpjtOp4U7Ol5RvNyChYyInIJL2f7gc7ZrlvFY?=
 =?us-ascii?Q?gziLoKg6RM1BGHDOpkfjS8is3brK1gG2BcTtT2/5TeehZC22mlxpeTs6ukYF?=
 =?us-ascii?Q?+g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 473084fd-7d6f-49dc-98f8-08dd04c6b9cc
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2024 16:09:33.0984 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5qF1ESTwpTIEjbZhr8hXZYxyTB8RvfsHQcdtg/sXIwNTwhKa9vb5Oo25krbKsi+KBwEG5Lpt8PL/xxl3z30bWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7030
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

On Thu, Nov 07, 2024 at 11:01:37AM +0100, Maarten Lankhorst wrote:
> We want to split up GUC init to an alloc and noalloc part to keep the
> init path the same for VF and !VF as much as possible.
> 
> Everything in vf_guc_init should be done as early as possible, otherwise
> VRAM probing becomes impossible.
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Link: https://patchwork.freedesktop.org/patch/msgid/20241105121857.17389-6-maarten.lankhorst@linux.intel.com
> Signed-off-by: Maarten Lankhorst,,, <dev@lankhorst.se>
> ---
>  drivers/gpu/drm/xe/xe_gt_sriov_vf.c |  1 -
>  drivers/gpu/drm/xe/xe_guc.c         | 17 +++++++++--------
>  2 files changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_gt_sriov_vf.c b/drivers/gpu/drm/xe/xe_gt_sriov_vf.c
> index cca5d57328021..997438047a037 100644
> --- a/drivers/gpu/drm/xe/xe_gt_sriov_vf.c
> +++ b/drivers/gpu/drm/xe/xe_gt_sriov_vf.c
> @@ -948,7 +948,6 @@ u32 xe_gt_sriov_vf_read32(struct xe_gt *gt, struct xe_reg reg)
>  	struct vf_runtime_reg *rr;
>  
>  	xe_gt_assert(gt, IS_SRIOV_VF(gt_to_xe(gt)));
> -	xe_gt_assert(gt, gt->sriov.vf.pf_version.major);
>  	xe_gt_assert(gt, !reg.vf);
>  
>  	if (reg.addr == GMD_ID.addr) {
> diff --git a/drivers/gpu/drm/xe/xe_guc.c b/drivers/gpu/drm/xe/xe_guc.c
> index 7224593c9ce9b..5a050a5379911 100644
> --- a/drivers/gpu/drm/xe/xe_guc.c
> +++ b/drivers/gpu/drm/xe/xe_guc.c
> @@ -301,6 +301,7 @@ static int xe_guc_realloc_post_hwconfig(struct xe_guc *guc)
>  
>  static int vf_guc_init(struct xe_guc *guc)
>  {
> +	struct xe_gt *gt = guc_to_gt(guc);
>  	int err;
>  
>  	xe_guc_comm_init_early(guc);
> @@ -313,6 +314,14 @@ static int vf_guc_init(struct xe_guc *guc)
>  	if (err)
>  		return err;
>  
> +	err = xe_gt_sriov_vf_bootstrap(gt);
> +	if (err)
> +		return err;
> +
> +	err = xe_gt_sriov_vf_query_config(gt);
> +	if (err)
> +		return err;
> +
>  	return 0;
>  }
>  
> @@ -753,14 +762,6 @@ static int vf_guc_min_load_for_hwconfig(struct xe_guc *guc)

Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>

as I believe there was a good reason for these functions to be called this early.


>  	struct xe_gt *gt = guc_to_gt(guc);
>  	int ret;
>  
> -	ret = xe_gt_sriov_vf_bootstrap(gt);
> -	if (ret)
> -		return ret;
> -
> -	ret = xe_gt_sriov_vf_query_config(gt);
> -	if (ret)
> -		return ret;
> -
>  	ret = xe_guc_hwconfig_init(guc);
>  	if (ret)
>  		return ret;
> -- 
> 2.45.2
> 
