Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB0F8FEE0B
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 16:41:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83A2C10E986;
	Thu,  6 Jun 2024 14:41:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DzRvcWvX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 999B710E986
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 14:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717684885; x=1749220885;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=KH0E2e2x9yEL9oPvXvYEPlzo+A6cCzjN/8VfbiPosuY=;
 b=DzRvcWvXQE3DXcBf15hUPSu7x0mGgPahffU0shnF5bl5Z3/WZzkH6W4S
 t8hi4FBVQJmyiZe3irXsr147WzcsYdyzjO8zwBb7t2ocFVDfvH82FvJBi
 l2/cia+/OhraxQtsVhXNx8s8ll517c694IBkijuxmxi0G8WZcs3HYbPTI
 YWG2oiCBEG2ODUXkfckvFVGX0CNeY/aScg6Smb+4fAFQdZyqFQbZZvdzO
 7boauhVkO9QTBOCKlT4CLZ/4T1BI8YT/jwb96/f+NhJwGTEcwd9b939bm
 oY6JtO6pgPs0V0ZzR3wwt10FZD85/jL8KsbZDTw897pDlgyMuTN1cUmU0 g==;
X-CSE-ConnectionGUID: BnwzIH3aRxGNIgQyefL+HA==
X-CSE-MsgGUID: MYJfllFKT0enNZQAUoWQDw==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="25013314"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="25013314"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 07:41:25 -0700
X-CSE-ConnectionGUID: Iwfwe8crQRGdwqNAE/XCOQ==
X-CSE-MsgGUID: fjaTc8SgTHm8lRwTK8ZEyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="37992265"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 07:41:25 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 07:41:24 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 07:41:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 07:41:24 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 07:41:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MHdbDFPWSggQXczg5uBRa6lpNh79ZSvMdEf1V7NJryPrleHR8zL1iNRwzRZA1dI8+yu4E+OhkbFBea/0SPLpLh42cWD3H/SGR9ux5bw3qErNm1+aVd7eLscfXz9AoTs3NC3gNL4vI4nPfntZr0DWbI7ddPYlkeLFBUHdhOOzDkqu5plCPj0jwOjQhlxqB1JjUsjkHorjQSoq1amydMD53U3fMQpslYdwg37KbG7r1kFd2nmeIeXDYiWr6S6PsZ/ZmhwSCT7YImObNI7edFXUNSVmf+tcdpTNTYnAtNICa+w+c6ht8cDsnWxDvdUDFQK14Qu9nQUI1YTu+f2kXGxJig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kr+2TP3GjE8llwANaRBBDTwh39+yPzEFYCQL/K9ydzg=;
 b=fXmbf0DJGduSo3QYAkS5pi7h3cS4HJPqnlZXdNceilLdaNkU3cj/PR1LrAXbM9+TRhmlHNYdAkE4Zdqucqys/FySp/zfyFRVG8uFqcnHKVKnQKyXnz5/SiR6WHIPzj5cbJYm+Obrge198Ltf7wyAmvhMu2LdN3MR6rbLlrXEH4UIzTwsGzynnahT3D1EUCTFQMmwYfR6WWdfW9Y3ekB4M5uqSxMp1eETrcTrSKap50mTZXoP1/bgw5g3y3tztApo6LBCEvAYXmjihapVHw++bQkcwylfLH4fbl+xb14HZAac+I0SNlPkVUx/EhRe6rknoDVD7IbZzY/9gZya2LOhcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH7PR11MB6723.namprd11.prod.outlook.com (2603:10b6:510:1af::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.31; Thu, 6 Jun
 2024 14:41:22 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 14:41:22 +0000
Date: Thu, 6 Jun 2024 10:41:20 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 05/65] drm/i915: pass dev_priv explicitly to TRANS_HSYNC
Message-ID: <ZmHKkIj4XdYjFYgd@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <d387281470c9b677adb659b80fa3385df2faca99.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <d387281470c9b677adb659b80fa3385df2faca99.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0P220CA0007.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::15) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH7PR11MB6723:EE_
X-MS-Office365-Filtering-Correlation-Id: 5e113a38-1088-4589-6ba6-08dc8636bbda
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?uP36c3WQ7SqdSW+PKX8lkPQT9icsGzvS9apzgMxMU5tLkcDKwFLce/MC9QB0?=
 =?us-ascii?Q?nmfPiOkrr7llsfh94XMI1cs1KA8I9mYOGHx/c0EuxQKwfqY984zQNsCx3grY?=
 =?us-ascii?Q?vH/27Ah4ZS/JvStADLBNuBnwhvWIoLfW0BL7cevZga/AU2c6UuEe0xXSCyca?=
 =?us-ascii?Q?NZUu7cn3RxUD7B+MNHqyctUFs5HlvrywMrnvj2h/sBAdJmJxbxT9AIFnJcll?=
 =?us-ascii?Q?ic/AGP9h0jADFdxX4H1wLQ0gN5jIxwu0TMBFrj+h3vnesOBaPpQaYgJmFdcr?=
 =?us-ascii?Q?68eky2qosnelGAXxFkJJwfcPjCbtkxldgpG4XbZjhCWw8J+CnV3lXqTpJqCd?=
 =?us-ascii?Q?1aR6zisTFESBktXnbx/Dox4pBkLRBjAZnqtQWx+tJmsFjn9bRCMchlRqR+bP?=
 =?us-ascii?Q?Mi7DJ76CrAtda4SAgPIjgHqVp1XHGG9WfKGk8dFLffqBKFTHemrmWIMOr45w?=
 =?us-ascii?Q?7TkTmNgiVzom1noaaQOUVrSQoarRTUCSsKaP9DtOHlIMyiyqZsu0V2pAMVX1?=
 =?us-ascii?Q?Z7l/n3NrNMsdf9gEhUEvkJdTWznGunxwJE/3TPBq4W9Q6kfnSOa1VR0OtUSr?=
 =?us-ascii?Q?D73cMEB3MrWtCfYLJjiPDF6DyXtb/UrvnYJVH58Tb2isXPnffAxlMEp4XO6d?=
 =?us-ascii?Q?1ba1WnEEpV/dMaji/xhw1NEvnRlz74B6Ucq4ni+q4SIrXqdneEyfeNfmtiSL?=
 =?us-ascii?Q?oZ42E5iplxUUQyfTwbTEcNnniAGCSAX/Q5yXccz8n2B03j/istAcK/Z2CVQq?=
 =?us-ascii?Q?9byQwGEHEUbzpZ+jfE3W6a1J8Z9u4QFxU1sD9oiY1CnDGi/K4QVA8g8hX06M?=
 =?us-ascii?Q?aafkr9orxgU95Sy86FO7fKLzVoaoVduU+vH2Uy6NvUBhg5FFVfHrNwt6cexP?=
 =?us-ascii?Q?hP4wKT1Z1EhtgGJNp4n+NvWsGKyz4WLFyB8lMB2vQnJe0sn8o0HTM2tybKmg?=
 =?us-ascii?Q?Hrg8HLth/V1iEwskz5t6K6khJoKZGvVzu2Q31NZ0t0lxaX/csW8Lqd0wEWao?=
 =?us-ascii?Q?CyjaOgMOIzMgRV7IyjjeiaaTjje8gDzsD7nF8NCpbgZoG9wPei8x5JCMoe9Q?=
 =?us-ascii?Q?eIQ8NfurW4f51FFOIjY3AjiHRbFY6M+Ul6z5AzJJUCFsEPkxD3Z53Py2486W?=
 =?us-ascii?Q?BJke4qU1pDqT86DbyuEtGWzvfUEmvnQNyNtYQKoCmPbg4bZw6QroqhgArLCt?=
 =?us-ascii?Q?wpNKElTXlod7d9YhVL7rWPQq4gb2u3qAS9e8/g1W2zqM3Kvz29y48Sv4u6y6?=
 =?us-ascii?Q?zW7pMxzuEJGkedcQwKZrd+AVb9fXV9V819nZPVlhD5iraA2Obi+Z6g1ejAFV?=
 =?us-ascii?Q?5Zs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?G6Ho49vaGRGp29R1+8SazBcN1qnfm6QD0aHbW47ji08Szm9pNg6sHeMpO9QT?=
 =?us-ascii?Q?6SfvJ4Yw93nwM6TIk/DWsdEzakC8WP1/U/C1PzH3HFNoHJb7jAgQXKa0qZ/Y?=
 =?us-ascii?Q?LrNQ7hrkrK/EW3bNJxG85mUihqfxWi/8ggxPCHNzepNR69uweYD8zokDw88j?=
 =?us-ascii?Q?ahPxqeg0rJmFQ63AnwBIqR0y2Bwvq//z6f9s4NPLcA4o6ZXVVk5VdlIwjHIh?=
 =?us-ascii?Q?XQDfdYn5t5PSiM01hgtTy7Mz9YYw/Y+Y0tHvy/2EkNTPslaqJKHFuUKLCW+h?=
 =?us-ascii?Q?T++KFgaBpazPs2fzg/irCFSRci8Gwk99fZw9yaeC3EaULmri5coGdaoHJavH?=
 =?us-ascii?Q?6TRiSqcd63cCvOVoSebAB2DS8vnxlq7oB1RaomtEN3BUwQ/fIR+RvEQNP104?=
 =?us-ascii?Q?Jjpw57yw0uGkloOmZaLkpSxi4JF8edPU/9Hf9QNYDJRNVDmImXVAOrofScLn?=
 =?us-ascii?Q?F63TTIgW452qFy3AFPJNpT5tB7d0iUwPWK3OfvqThtHJZz4u1iRLLxk3QKJB?=
 =?us-ascii?Q?rnszJsNgphIxiOZzuYDI+mzSt273ms6K108kZ5RX6jXT9vVo4lKd827AfHMG?=
 =?us-ascii?Q?3GWuKDgQqR5cMw6GlAlCBeaTjcC7WR3s4y9npzhXcr2Xp2R7g+4WH6ZjmHem?=
 =?us-ascii?Q?dQLNHZlN1Yi0YyIGxMUSjGszbGLfw244ltYZgFsjIYHO6Ik1eGFWVHsKhYkd?=
 =?us-ascii?Q?dj3BUHOCyMNZI2KQTWCUhnuGNkXTSogcUancW1hOXiIz98Qn2IGKd2OW63oH?=
 =?us-ascii?Q?8HCcZSBZEzokOZVUMusHY8CLCTcxnMvxfFYx7EncmGTG/xgRE9Cq9DX45838?=
 =?us-ascii?Q?3k4ef0KUiLn6UfMfwMUDwncfAfSpadFLPwikCjRy5csxTJ+wScReWYGFuQSt?=
 =?us-ascii?Q?O36IXIZ3qlZgMHn+Vf4TWEjGKo81M/hUt66lVl0JvyS5h52acWjrIJPRy8Uo?=
 =?us-ascii?Q?uhYVqGHqA/OAvTSIS+uYchp8WUf5a9mGnI39YrtpvZudGxyUIwFJ26I5qa5M?=
 =?us-ascii?Q?wdpz64mKNxBKqZwcpJmv5daIVgQ5BkjjmMwSKerORzc+wZ6xDtDFa/b7vw2R?=
 =?us-ascii?Q?d8MH46vFcTFpNqA+OYpdZo+J02XCZWUa2D8JNm9sMMFiGPprha6kAgb2ZtQX?=
 =?us-ascii?Q?l7SJB5mFIHl7Q3F7DMvO9dFvo4kdPH4g45l1WqG1BMSlaxebbq5kwQrGN0I4?=
 =?us-ascii?Q?WkAXWCJDKbEDjnS1Vxj0ZwtGDHvAtDoemsFIRx4JeQLitRjuQBdVoM6HrVJ2?=
 =?us-ascii?Q?0am6FhgNteQb+y25WpOpes+yxmECAn1W30vK2WhbR8cx0df5njY/sCiwV4ob?=
 =?us-ascii?Q?L/tA8PQ9C5S7+TLiA0ptZ5OHDpt4lmmTKirKG0+mdDJLmElGEXzq00q1H3LX?=
 =?us-ascii?Q?Ngn3c19w1djwv6MZtaA4OP9w0zFTJ2u4QykjaZqxDsfxXxKxa00maICCi1kn?=
 =?us-ascii?Q?WsPPc9jCN6ELWugAjL+XEJFVNYBKMuifyFL36iE1H5Mt6q6aOdzYWKsehCW0?=
 =?us-ascii?Q?/MSYs1OYvsPuXshIeoaSQq71Qp6vhLeXvP7VfluRQelOzF2YZXZsK5gyxir/?=
 =?us-ascii?Q?dNu2ih1n6KyUh3ahB8SE1NCqsYQaz033ikDhKctY?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e113a38-1088-4589-6ba6-08dc8636bbda
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 14:41:21.9931 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DGysEzfKzJoYuHTAnW/r3NzpLLAedHK68n/yAFVXW85PSq6MpEbQ7zP66k1w97EoYHD3yJqyGxR6xEaZaP6xKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6723
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

On Tue, Jun 04, 2024 at 06:25:23PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the TRANS_HSYNC register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c           | 3 ++-
>  drivers/gpu/drm/i915/display/intel_display.c     | 6 +++---
>  drivers/gpu/drm/i915/display/intel_pch_display.c | 2 +-
>  drivers/gpu/drm/i915/i915_reg.h                  | 2 +-
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c      | 8 ++++----
>  5 files changed, 11 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index af0d3159369e..f87a2170ac91 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -938,7 +938,8 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
>  
>  		for_each_dsi_port(port, intel_dsi->ports) {
>  			dsi_trans = dsi_port_to_transcoder(port);
> -			intel_de_write(dev_priv, TRANS_HSYNC(dsi_trans),
> +			intel_de_write(dev_priv,
> +				       TRANS_HSYNC(dev_priv, dsi_trans),
>  				       HSYNC_START(hsync_start - 1) | HSYNC_END(hsync_end - 1));
>  		}
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 997418fb7310..111f2c400ecd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2716,7 +2716,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>  	intel_de_write(dev_priv, TRANS_HBLANK(dev_priv, cpu_transcoder),
>  		       HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
>  		       HBLANK_END(adjusted_mode->crtc_hblank_end - 1));
> -	intel_de_write(dev_priv, TRANS_HSYNC(cpu_transcoder),
> +	intel_de_write(dev_priv, TRANS_HSYNC(dev_priv, cpu_transcoder),
>  		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
>  		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
>  
> @@ -2822,7 +2822,7 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
>  		adjusted_mode->crtc_hblank_end = REG_FIELD_GET(HBLANK_END_MASK, tmp) + 1;
>  	}
>  
> -	tmp = intel_de_read(dev_priv, TRANS_HSYNC(cpu_transcoder));
> +	tmp = intel_de_read(dev_priv, TRANS_HSYNC(dev_priv, cpu_transcoder));
>  	adjusted_mode->crtc_hsync_start = REG_FIELD_GET(HSYNC_START_MASK, tmp) + 1;
>  	adjusted_mode->crtc_hsync_end = REG_FIELD_GET(HSYNC_END_MASK, tmp) + 1;
>  
> @@ -8194,7 +8194,7 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
>  		       HACTIVE(640 - 1) | HTOTAL(800 - 1));
>  	intel_de_write(dev_priv, TRANS_HBLANK(dev_priv, cpu_transcoder),
>  		       HBLANK_START(640 - 1) | HBLANK_END(800 - 1));
> -	intel_de_write(dev_priv, TRANS_HSYNC(cpu_transcoder),
> +	intel_de_write(dev_priv, TRANS_HSYNC(dev_priv, cpu_transcoder),
>  		       HSYNC_START(656 - 1) | HSYNC_END(752 - 1));
>  	intel_de_write(dev_priv, TRANS_VTOTAL(cpu_transcoder),
>  		       VACTIVE(480 - 1) | VTOTAL(525 - 1));
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
> index 625b1fedd54c..480c0e09434d 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> @@ -228,7 +228,7 @@ static void ilk_pch_transcoder_set_timings(const struct intel_crtc_state *crtc_s
>  	intel_de_write(dev_priv, PCH_TRANS_HBLANK(pch_transcoder),
>  		       intel_de_read(dev_priv, TRANS_HBLANK(dev_priv, cpu_transcoder)));
>  	intel_de_write(dev_priv, PCH_TRANS_HSYNC(pch_transcoder),
> -		       intel_de_read(dev_priv, TRANS_HSYNC(cpu_transcoder)));
> +		       intel_de_read(dev_priv, TRANS_HSYNC(dev_priv, cpu_transcoder)));
>  
>  	intel_de_write(dev_priv, PCH_TRANS_VTOTAL(pch_transcoder),
>  		       intel_de_read(dev_priv, TRANS_VTOTAL(cpu_transcoder)));
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 66e652119a7e..0d33815b91a4 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1219,7 +1219,7 @@
>  
>  #define TRANS_HTOTAL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HTOTAL_A)
>  #define TRANS_HBLANK(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HBLANK_A)
> -#define TRANS_HSYNC(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HSYNC_A)
> +#define TRANS_HSYNC(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HSYNC_A)
>  #define TRANS_VTOTAL(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VTOTAL_A)
>  #define TRANS_VBLANK(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VBLANK_A)
>  #define TRANS_VSYNC(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNC_A)
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> index 47681fa69020..09d8960f7398 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -233,7 +233,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(REG_50080(PIPE_C, PLANE_SPRITE0));
>  	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_A));
>  	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_A));
> -	MMIO_D(TRANS_HSYNC(TRANSCODER_A));
> +	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_A));
>  	MMIO_D(TRANS_VTOTAL(TRANSCODER_A));
>  	MMIO_D(TRANS_VBLANK(TRANSCODER_A));
>  	MMIO_D(TRANS_VSYNC(TRANSCODER_A));
> @@ -242,7 +242,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPESRC(TRANSCODER_A));
>  	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_B));
>  	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_B));
> -	MMIO_D(TRANS_HSYNC(TRANSCODER_B));
> +	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_B));
>  	MMIO_D(TRANS_VTOTAL(TRANSCODER_B));
>  	MMIO_D(TRANS_VBLANK(TRANSCODER_B));
>  	MMIO_D(TRANS_VSYNC(TRANSCODER_B));
> @@ -251,7 +251,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPESRC(TRANSCODER_B));
>  	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_C));
>  	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_C));
> -	MMIO_D(TRANS_HSYNC(TRANSCODER_C));
> +	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_C));
>  	MMIO_D(TRANS_VTOTAL(TRANSCODER_C));
>  	MMIO_D(TRANS_VBLANK(TRANSCODER_C));
>  	MMIO_D(TRANS_VSYNC(TRANSCODER_C));
> @@ -260,7 +260,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPESRC(TRANSCODER_C));
>  	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_EDP));
> -	MMIO_D(TRANS_HSYNC(TRANSCODER_EDP));
> +	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(TRANS_VTOTAL(TRANSCODER_EDP));
>  	MMIO_D(TRANS_VBLANK(TRANSCODER_EDP));
>  	MMIO_D(TRANS_VSYNC(TRANSCODER_EDP));
> -- 
> 2.39.2
> 
