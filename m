Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B9D5881D2
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 20:22:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F05D711374C;
	Tue,  2 Aug 2022 18:22:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 961932BD66
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 18:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659464557; x=1691000557;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=3yp7nDsPFCkaPz6avxsozfOzv3Ra/QgpdLfq2lyL7C8=;
 b=W9ScldfmANpAlKYbCzK6mzjyKMYgKNrFVXZuKhinj2APhllaGmk0EyKp
 gwvOLlqIRt2MWDsr0YIyNMuV0A/g9e0csonyKShF55m3Y+Qhgjm135DHf
 OOKEe66KftaRDQpYnBNsJo2txbVdCXvNgP65+i5fifrrHLYB3GPnDuhvH
 y8+Q+2ID9cQVDxTDh8JHQ+jHjLKxlsJfHmI2CIb1eh4DtMXFKVK8ZWVGA
 VwNJA7KGI7md2JvOda3ZBMlHreY0LdnkAVfxhyZZZqCqX38J6mBsC3pX6
 J2oYR7ckst/kMUKCpMxHOPD3hjtimjGQ7yz+nO6WyeV5dE+2qMHft1U79 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="315340610"
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="315340610"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 11:22:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="728928549"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga004.jf.intel.com with ESMTP; 02 Aug 2022 11:22:36 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 11:22:35 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 2 Aug 2022 11:22:35 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 2 Aug 2022 11:22:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fsc43w2Jeq1HumfyvAbqaYHPVoI+C19cSbsPIQsG4aqwbS8zUPBtb7fvjD1k2VctnWft5LOGTeHxmaLa0NXvxZoXnCxZyZ3pmr2iMUIv+yJBcm7lIuidWIX1lH8gYc6eHeskdIQQsbSwsMOZCtE8d/yfbiLx7mGMobUQ3Xn+OotMdSTiJCQ9sR6erwK08FCilTZwEubht+0KX8s+suFp6U67nIRptFzhCZeE/0UcO07B8TNht9iIE+2fHeyhfF5ojDHN3AtgBy2ojITnUYFbDbdWQzX/Et2bm5J/xlg91zPaZrLvl9oo8ZVf9sYQlSkSNNdwQMI4RQc674LHRrnKHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XSEW6wUyF6p8aDsoUdNL0dsIlKz0jCDtISbpmS4VB04=;
 b=fAmz0Zbl0wIlp1TCLVSMGz842fyYJ9F4kOvdz/oQdTQmKptfu+CzEo2Y531cxLgEOHZ1DeZk5Fkdt8jC+pFGY/VDcJ238GiQMVMzgEU5nzsqe3101RWTkx6I3IOTTY73DlRjyvAvEC2XoC1P+VGSdcIlGwJrA6D4mg2WAUV6WjpzjtOzd6Xsi+xGEoTB/IAxkZaZfexPmvhSmrNWG58Uwiu3f3JIoYoL2BoVvVqsaxVQz65bv1L93D7Qph9hCoq7ykb1/UBBt2oPl7Zxo3N6Vkjl1KcQKfe5OYObX2rKEPpWtDvejnW1yoCMWsuIjuT0tTPdHhr9fEhREy2BCYNecQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by SN6PR11MB3471.namprd11.prod.outlook.com (2603:10b6:805:c1::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.15; Tue, 2 Aug
 2022 18:22:33 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68%10]) with mapi id 15.20.5482.016; Tue, 2 Aug 2022
 18:22:33 +0000
Date: Tue, 2 Aug 2022 11:22:30 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <YulrZnLEJJbJlSmr@mdroper-desk1.amr.corp.intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
 <20220728013420.3750388-22-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220728013420.3750388-22-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: BYAPR03CA0028.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::41) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e253e291-7a58-4081-3e00-08da74b3f7f1
X-MS-TrafficTypeDiagnostic: SN6PR11MB3471:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ld1RVz77+AjTRvkM7rilubueGU96yeyTrzlgzI2ZhYOT0++f4FteBuNOZrtGPX5Iz2h0gdzYx+Sk2yvQnSfMaTlQr/jasC65kQet7NRSh3fPXY5z43802W3y0nsW8/QrYMlc8yD/pBbzv6jf2miY5zEFDv82IIxneQSiEN601W0Ciur/CsD6cYtW/0WPmf+VR8tfh1gBvNeW0h5HpXK7/cbGNnxS6ZAS/v/qnzjChX0eb/RNiu5qxJ5obLhgw+v3fwVlFbvvWxXwgshaMhxPKF0kgk4fD3AZW8My7KEQLHAqi3tlDo+l5w+/nU1iXllYw06GDrqpPCk/dWHsgmRGNN1lV4Em9du1fx8cKFSaHbhaUJll7NzVKARPk8o1ppO/jQ6vgwF9CNgTlcz7oLsF+CrAxhzIdKycqYJUVIkd6UJFLBroDSoUjC0tGPcuujzckH24SkYkf2CLpWd5iApnQef6lXHqiZaXQ6C8r2cRufy+rLprINKFX7wk1OPJTF6l7iPEOGwlGO0HcWePxp1J/WrQEuBCM+wrAC2Dfaux6Lh52nayYDAPUVe51oYgdT/SP4HHGcNadEKk+p1zZE0jn7xn8FZypnwMJl/m34DyLIMfYy5OiQ178x6MAgyw4fnTpyQHtROShBk/oq7eJ87oUy5C0I5yDIGbOQeaq36qor6/RLKTlYWPDkHyVfkNMD/f+bcwhG++NJ95YnAmezsvEE33eIzFJfzsEIqvLLvlPBiIo0OoM9TrljavkdeY9PXN
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(346002)(366004)(39860400002)(136003)(376002)(38100700002)(82960400001)(26005)(6512007)(6636002)(6506007)(186003)(6486002)(83380400001)(316002)(2906002)(5660300002)(478600001)(8676002)(4326008)(86362001)(6862004)(8936002)(41300700001)(66476007)(66946007)(66556008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?StJ4pKo+bxLtTeXZa6xpTqJNV3bYGWdgsgUUwA9dSM2VebSLj7DMRSY05EUP?=
 =?us-ascii?Q?5EpCuJgy1Dk7PEThjg7NywcfCPMU3axIFyJhx3BRJuf8l2CY5AYk0+avhU3p?=
 =?us-ascii?Q?NoytyJQYUzitC6p1yNDDtwG31dRE0LZw6Hm3cHg3tVg42s90PDTiaEzgoA1h?=
 =?us-ascii?Q?s42vl9lHcekx15o3zzievm32LxE/4NzU4dTUM8Zb2rR8maCOGhaNC83WT6OG?=
 =?us-ascii?Q?XwmHZpOwRWRUvIiefD3K1/hmJo5cLpG1ehHk8sOSJLJnkUL6X9yMfc0AwjcQ?=
 =?us-ascii?Q?ifZYlMhe5bWELnV1hRrh9ir/E5iQoHY+XGaj+rdkYY8/pIfEXvtmnn9gv77m?=
 =?us-ascii?Q?S1QQn1GtgBdAsBAqCQ4rfztW6w9EFVtaYOj0qGGTtm4vbHgKEihgNpY/WJaU?=
 =?us-ascii?Q?M5gXNbMmlviuwhOOfEBYAxfbm/S9XCyR3qD/r/63BnZ73SZR+AXEjv/WTb57?=
 =?us-ascii?Q?gWHxy7Sl9ZQoDkYEIa3XVCBice6to5sGIQEQuqmW2oce4/kRsmjSOnuC9rt2?=
 =?us-ascii?Q?TRKeKG6eIcW6UKKODqydH6vws93A7v76taQAmQ2nTQv1PJxcplNbKWDH49tJ?=
 =?us-ascii?Q?wPOzhUr4sNBjE3kPyrGQ9x6LSKV/JQFyFu98ahJ+x6fpIiw7kFizJkYwq70/?=
 =?us-ascii?Q?yE67s+ee9eWKd7kJXIBDBcUJh6XDfe+IsUWA5rBnmZMrxc3QRtOVkFrONkHM?=
 =?us-ascii?Q?0xifz1z2BqZnF5d4XCyLlQaSpqx66+ypM68GgkwVeQm6q0M6nVSf5HTg1Uw0?=
 =?us-ascii?Q?y/6hB3xhFysStirCY2gWhbWQK/U+TnIvJsbwMfXssjnWMZg2WYUrgCkjqkvH?=
 =?us-ascii?Q?cpYGYCPpZH6k7xGFXV22gzOIlekPhJDWA3bmuFd072PdfySR4FnTDXPL92D+?=
 =?us-ascii?Q?oz2G8boRpl+qaDktqlgowa3z5x1Fz3wKO9Iu0kzG65q5oaLvFZeALAL+M87v?=
 =?us-ascii?Q?BLLXV83wUKtAbJ/MT4lWxmcUEOZN+rldZJYlbexdy7xbI7XMBXR0g34Yngt4?=
 =?us-ascii?Q?P6O1Z0R7NaRd+ljJ1znXnL5M8fzeqv4J91CY5MNdUbQWXCXNtvQkGDYPvjIy?=
 =?us-ascii?Q?F7IhJiDOyGib7ma4KbTxte8cFPWFDHrm87/J4bTzM/Pchh/nuEmybP47jEBT?=
 =?us-ascii?Q?lnG7zH0cSmjj7PxlDfBBOuFI2JwrD8TJCfbDCa1B9eDMbZljfIV7nCfS1aST?=
 =?us-ascii?Q?7SmvHAFd33pUB3BS4YkulRMFSiF+D5O9CszauKqNzDBATK057SVen1NTJK7b?=
 =?us-ascii?Q?x9HKQmkMyQChMHi++Moje0vpBBQuG6m28ovXf3zUZQ9sisnHFFAGXRmo5cYn?=
 =?us-ascii?Q?HViquj1Xuy0bXJzXFRnPI8j0z5/4HF3RqUEso06/rPZLxS0OQkxLSp49o2al?=
 =?us-ascii?Q?pvXi+YxK+PbDHx8r+OPbG/WjOT69Uun3fC3e00bsibBymj5fmOBjRrP9wjZ7?=
 =?us-ascii?Q?oeUNHzo4jQezO0/Stm9gEHpbjl5WDOxkVjVT7hHNmStZzK+TNf3qcU7+sIn4?=
 =?us-ascii?Q?DrQI/X3sODJ5HtwsuuRA3dOfjb0HQ8F/oDs35m7qQIPtyTtkdRg4TL/fSGy6?=
 =?us-ascii?Q?KkyZyTvU/2NIvjiXjKyeYl41X9ZL9Z8PNIZlZpGK9I3ItlUezyuyb5iN9doH?=
 =?us-ascii?Q?iQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e253e291-7a58-4081-3e00-08da74b3f7f1
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2022 18:22:33.5503 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1YMaQdY0qplSbZ1VJbpCg1o/D1a+H5Xfw/GTcFdLjyzx+23qk+1cX/wZKHt6jGPZoRXojDF7RfO9H+A67WTzxMQka5F0ru+Q/r69mb256aA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3471
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 21/23] drm/i915/dmc: MTL DMC debugfs entries
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 27, 2022 at 06:34:18PM -0700, Radhakrishna Sripada wrote:
> From: Anusha Srivatsa <anusha.srivatsa@intel.com>
> 
> MTL needs both Pipe A and Pipe B DMC to be loaded
> along with Main DMC. Patch also adds

That's true, but it's unrelated to this patch.  intel_dmc_load_program()
always loads all of the pipe firmwares (including pipe C and pipe D)
assuming it found them in the firmware file.

> DMC debug register for MTL.
> 
> BSpec: 49788
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 9c4f442fa407..2fabb2760474 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -1005,7 +1005,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>  	seq_printf(m, "Pipe A fw loaded: %s\n",
>  		   str_yes_no(dmc->dmc_info[DMC_FW_PIPEA].payload));
>  	seq_printf(m, "Pipe B fw support: %s\n",
> -		   str_yes_no(IS_ALDERLAKE_P(i915)));
> +		   str_yes_no(DISPLAY_VER(i915) >= 13));

What is this debugfs trying to tell us?  Pipe DMC fw for all four pipes
has been supported since TGL.  So the output here is misleading (and
incomplete since it doesn't include C/D).

The thing that changed in DG2 was that we were required to upload the
pipe A firmware along with the main firmware (other pipes optional).
The thing that further changed in ADL-P was that we were required to
upload *both* pipe A and pipe B along with the main firmware (other two
pipes still optional).

Even if the output here was trying to indicate which pipe firmware(s)
need to be uploaded at the same time as the main firmware (rather than
being uploaded later), the change here wouldn't be correct since as
noted above, DG2 (which has display version 13) only required pipe A and
not B.

I think we probably need to decide what the purpose of this debugfs is
supposed to be and then rework it accordingly.


Matt

>  	seq_printf(m, "Pipe B fw loaded: %s\n",
>  		   str_yes_no(dmc->dmc_info[DMC_FW_PIPEB].payload));
>  
> @@ -1029,9 +1029,9 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>  		 * reg for DC3CO debugging and validation,
>  		 * but TGL DMC f/w is using DMC_DEBUG3 reg for DC3CO counter.
>  		 */
> -		seq_printf(m, "DC3CO count: %d\n",
> -			   intel_de_read(i915, IS_DGFX(i915) ?
> -					 DG1_DMC_DEBUG3 : TGL_DMC_DEBUG3));
> +		seq_printf(m, "DC3CO count: %d\n", intel_de_read(i915,
> +			   (IS_DGFX(i915) || DISPLAY_VER(i915) >= 14) ?
> +			    DG1_DMC_DEBUG3 : TGL_DMC_DEBUG3));
>  	} else {
>  		dc5_reg = IS_BROXTON(i915) ? BXT_DMC_DC3_DC5_COUNT :
>  			SKL_DMC_DC3_DC5_COUNT;
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
