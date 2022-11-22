Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9C06342A9
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 18:42:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5148B10E183;
	Tue, 22 Nov 2022 17:42:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7198A10E183
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 17:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669138923; x=1700674923;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=k9hCoo7vIFKMsbEokgBXCl8AKiM6kvv8dC3GjgyHPv8=;
 b=Cch95wob6YtohjCQ+Bzib/rajgTRU+A2KPtS2Cjzgy8iovRoUAynxVFU
 vbQ06XKsSxfn9Y2E0/XPnkaqL1HAY6aGfNhdLT7Df6OP4KEU2g1qDYcqO
 5VB7l6np9UzpYdEf38HxzMSKPXoxguKU5MmcV3kmLTYK034VOD540b0Ot
 wWDlT/wG9FM9saD3/CCWFNhXtiGfMhUOgZd4tGAsK2q2I5CQUFB16pBFz
 Q65gxuR3Rbw9FZ++ED/qQg51X3PYudNEaE2W9K29WsOQvkyluhvu05w8J
 Q+gZMNcCE+1ux6hYPWkF1+Fzp2U+qIPYO6Br2L9RqV7JEm0kFtQ5UyfNC A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="340744197"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="340744197"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 09:38:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="619296856"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="619296856"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 22 Nov 2022 09:38:24 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 09:38:24 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 22 Nov 2022 09:38:24 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 22 Nov 2022 09:38:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cb48qZc9zs60wriBhhVfVW4TETdowE9OEAmiB7v547RsNK3NWUd50psrtjq4wj0n7dL+raxhj6msp92wqTWlsIBxPN8yAR5Cw6ljd4z4Ji9mmiLiYhDp1ltdAP4mG7WSIQ4D25QcHlskZRmKaAr02iz42OdtScQnqJSrg/RpFWsuJcTlvHsmPUmgGtqchO8W0YWNcfNWsUZ70mUJ603azaq2tm19DmynCMnUsbPFC730iez4dpg5BJEhlEtOnsnBm4GHVzhXcFqg4jLGfSiqlCo32E7yTO9pqGFQkJlhFxavQWxoyZwgxdzX8oUB83yY1uI9GKgNLRGRBZgM5dGMoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q/sRNfVbS4e9gvatUA6w2nlOD1stflHDEhYOh2poACE=;
 b=QvTCvBzw85Milr9zM5rxgInjmDRlrC6jey0MKq/rgtCWtoDhL1V6ICNDF68z8zDtrKG5yuDumRMl3lHokDteq11f/UUfUmlvnWouk2A5Rfx5WKCWiLrMralGF/YEl9ieZSkLA2r2JIbBh5ARfLT1mkUw8iekd3cHN/yk37OeY8B63+zh0nZT1HMEU69eQaMv4PkBiSK87dHR+wm4gI5J2hP83xPFhonM171uYDJzSjjz5Z3Apac5xUuPlqL7pGOMazmGmyiksYFbDzyXL26sXwUwtAy0BOtGeTccar5xNjCVMgfxoDQMpNFUSQgzakdIHmQQJD/aCnPhH28r2Ht29Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MW3PR11MB4650.namprd11.prod.outlook.com (2603:10b6:303:54::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Tue, 22 Nov
 2022 17:38:22 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3%3]) with mapi id 15.20.5834.015; Tue, 22 Nov 2022
 17:38:22 +0000
Date: Tue, 22 Nov 2022 09:38:20 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20221122173820.ub5sleuugf5ao47n@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20221122141616.3469214-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20221122141616.3469214-1-jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR03CA0019.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::32) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MW3PR11MB4650:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b7bed0e-79fa-4622-3314-08daccb059d1
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 04kmfxBPMX2GBmVXsv0PidPreVANT3mx/Uny0S9nxudqe+CsZGGwIwbzbskTwG7dbSAsEl0EfJUR709IzkIThots6D46ijZVjTnaXno73/qKlMnq4hkHYu/a/exe4lDH11K7vibRgboRUlIpG0yR/X5jtTtpjmtVSaJa/m21VdYq+VFJ24FCt/9RXKYDwtoL/2h8E7/QmvEkXHebfrSw9GWZygAG2fhRsvPmrFUc9De8U3UTM9f85JvPcEL05QFKgCso8wnscDJ39rutV6wM7IYq/loE6jInZlbIbr7UVBuQMYm2sP1bcT1Yp2WRjoRKTwAOr515MoFfCXFc21oEBx4+ehUX3d+PA90pNUPMej6gdeRZ0CPg6ntKrNRthROoPbOK5KziQJsZHJZHcyrq71NFY40f8Dg5onF1rSA+ocFY8+sHcdAfZfnnnTngm3Muz/8PCrbp/N6HxOrGAm7NFtLEl50lyXc6sPcyPCrn1pS7bEdfK72bsaHZJo7LjL70bhdmcGP4pQ+/KS4gfVKW/Po8+tJPyRJBHNHyoF5Q9h6kQm/3uEZj8tlKqLpdaIsyoyschCK6P0/1znkIpu4V5tglcP34FUrS1HQxvWF4/dCEx2wWzI/nk+LbNELxzLWiMsMJEpot5Z+RcabumzeRNg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(39860400002)(366004)(136003)(396003)(451199015)(6486002)(478600001)(6506007)(107886003)(86362001)(316002)(82960400001)(38100700002)(83380400001)(6512007)(2906002)(54906003)(8676002)(66946007)(66476007)(4326008)(41300700001)(26005)(66556008)(6862004)(186003)(1076003)(36756003)(8936002)(5660300002)(9686003)(6636002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?y3u0bqL/8xSE9kc1ZQ85HcQS7K+X071Q6uWah4bBJQaIK91OoYXl9vv62LV3?=
 =?us-ascii?Q?v5HASe5b810zbkRP5dTR4ndffunFGXnmc4SMgHGPGCijoZEMDHV9ZeOSAchN?=
 =?us-ascii?Q?+azP5WRWVHoamL8KMlUEQI5Mw1jO8cSombA/dPTm07eepsN0wmuDElkWfM+9?=
 =?us-ascii?Q?OvYB3VtkZJ7HXzXhzXQ5z910G4cWc4/Qfbi2w0g8s6KzvR6Q/yCJEhNYgbP1?=
 =?us-ascii?Q?9g3Gtip8zHVvOU/0mNaeN6FxBqSCGXfA6O8LFBMfqzOYqRhZ2S/uWVYmD9/k?=
 =?us-ascii?Q?DkFFP9XqklHU53pXwcuVoRfxnw+M7g1bmL5LHRaPfuDCguorcupEESzosV5T?=
 =?us-ascii?Q?FKmXQv8iYa5UQpatYghbfeNb4YefQcs1FJLY969jAwkgFOz3s4ecSMS0gD/C?=
 =?us-ascii?Q?G8M/i/oFFMz+jOW166EHMJBEt+KawcgRdueqdCsQc41xF6n9+OA98T1XRFSe?=
 =?us-ascii?Q?/NRpP7zxKNHagz3OFW/7d6mDicml3/pmpqbxC7D9YKLgtdLFqZgAb3vBGVuj?=
 =?us-ascii?Q?CtRdEuQtYgRXEXofc04JvljQ+JEa09nbKqmgfvZvj856qCqRdREj881Jzo13?=
 =?us-ascii?Q?Kvs0Ftg2xJ2S8myYWsXKcPvCySOvrbUnxVa5azKLUVIMkeqaTzd14/eFxLTZ?=
 =?us-ascii?Q?qMBA63SvP5sYZrS3ngFZoWmCSOP+tE+6tnApok0x6BHv4mxcyoTEpdpJLrhe?=
 =?us-ascii?Q?bAomn0zOy2Y01ViaRJ3VMzFOMJB5SUDBxiMDT5JmwGNzP8RWLX2iltgaLu+o?=
 =?us-ascii?Q?scIT8f+lUSVEKKIaAO4j4kAX16MuVBXuSZXWY6Ayzr5Jd4kFdoR5gW5ZV3iT?=
 =?us-ascii?Q?X8AOIuDXs0OfsD59miKAWF22/aCOHE3qZ2bJpcibzJlRdRfcQ6tdpGYPSBrx?=
 =?us-ascii?Q?Hp+CrgMK/g9Y7AtJCL9ul7wqUIGSpi8GffcHnJaCa7TWLIpB/RRbzzz/88PY?=
 =?us-ascii?Q?PjcKOZOj8yP2NWZ1/UOOUT9VO4mxDyHrgkoTWqaGZhqh8oJHq7CoBW4eevrx?=
 =?us-ascii?Q?dCb+CCZsAtkNyePxWCyStjfigw2EKkdohO6qHViqnmoMAL8AD2uFlLGAKca7?=
 =?us-ascii?Q?M47H+fp0FpmJmDxGH+Zb/iXtPNQoX5UXBZWBJ61cQjXoyqI6/R0UcEsTeFGc?=
 =?us-ascii?Q?Cuigmnah9uQBH5wRWf+IgEKSoSy7Cd2j180VnbnYAyXDKxLyjmANcLqD9al4?=
 =?us-ascii?Q?mqTup/LiaF7XiJujHcFoJzLWSkkKn/EfL5fsECAyUlHsgD3HFQkiPRFhdzbv?=
 =?us-ascii?Q?LaPuP0ZMksyFL2dS4x8DOjhmUTb3nNLjKsXCNd/RwGVbBQ7n9xkl42bALrwH?=
 =?us-ascii?Q?KCB9Gueu8lsCQji4GjPdsYbEdnfETKIWeXbG7ZbNYTCLQh9+3c9Aub/NFogr?=
 =?us-ascii?Q?93he+322SWTmzd7Xu6F3FD9UQdKyUntAKkBHoXlYf617fDPK3BAGrgtmSgVl?=
 =?us-ascii?Q?Jxl+G9lLCa81+tPf1AecjK5ytL97hRY/U94DD3pbdqmkzIAmogQJtWymNgbI?=
 =?us-ascii?Q?I0cLGISzAXYpgo+7jMujCcbQrtuA7tyVOR765ZAFFOaZSS8YQnOb+HN5tGby?=
 =?us-ascii?Q?ms9oPhVq6CR7QwnQkTaW+yQmAKUgXAucNPaflr4oqiBqZgD++m0WjYKXfM4E?=
 =?us-ascii?Q?Cw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b7bed0e-79fa-4622-3314-08daccb059d1
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2022 17:38:22.1570 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Qcoms8QXH7AGwh78LXgs3ywnizNBZdsPGR6vSEJK/Ux4yoDilows4H9MwI5MlmQH/1o5mGJW/ANTvXG70P3K5AAWiglYLCOjNDy0kE98IRc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4650
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: make default_lists const data
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
Cc: intel-gfx@lists.freedesktop.org,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 22, 2022 at 04:16:16PM +0200, Jani Nikula wrote:
>The default_lists array should be in rodata.
>
>Fixes: dce2bd542337 ("drm/i915/guc: Add Gen9 registers for GuC error state capture.")
>Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
>Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

thanks
Lucas De Marchi

>---
> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>index 1d49a7ec0bd8..1c1b85073b4b 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>@@ -170,7 +170,7 @@ static const struct __guc_mmio_reg_descr empty_regs_list[] = {
> 	}
>
> /* List of lists */
>-static struct __guc_mmio_reg_descr_group default_lists[] = {
>+static const struct __guc_mmio_reg_descr_group default_lists[] = {
> 	MAKE_REGLIST(default_global_regs, PF, GLOBAL, 0),
> 	MAKE_REGLIST(default_rc_class_regs, PF, ENGINE_CLASS, GUC_RENDER_CLASS),
> 	MAKE_REGLIST(xe_lpd_rc_inst_regs, PF, ENGINE_INSTANCE, GUC_RENDER_CLASS),
>-- 
>2.34.1
>
