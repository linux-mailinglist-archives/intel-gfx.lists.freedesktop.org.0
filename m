Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA2CB229A5
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Aug 2025 16:06:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F41610E142;
	Tue, 12 Aug 2025 14:06:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ym4pWUcW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2C8B10E142
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Aug 2025 14:06:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755007611; x=1786543611;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=40S98nsYa0paEg8e3/EkMxCkaDULqEnBDEBBl8VwerA=;
 b=Ym4pWUcWnSiDf7OyuWwaPzuj7wfMYyOZzi5/FnwVEifCTY+CAweLwzGi
 oICzxCtvWtKK5uAPxG7CJ2aMyypmzCGdWPDBEK6AP7jkPuPX7zSVtDeKA
 nctBAGM8vpW+O5wW2Di2suNixXp7KVmt/DBJ9Xdx7xCS2u9NHNl6EKCPk
 S28SrEpZWHGorLM8egM/S4kSGQ77kYpsS2keqQnQzANGlFk9YH2GomDum
 74C8O84ZX3699GZkhl0gTDzmuXAUiiM1IwgS9Czu5QTZEwoU6BTktiZb9
 EV4wg8p76oyfE3cyd4gGBSTLOkyJsM2Xu2lEaUN6Ed3cfI+IYJwWjAKmp Q==;
X-CSE-ConnectionGUID: x7Xncx/nTeOG4Tu+LQzKSA==
X-CSE-MsgGUID: pejyrfa4QrGHsbBNr+9LGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="67886910"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="67886910"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 07:06:49 -0700
X-CSE-ConnectionGUID: Jitp7/TTS3WnZeWyaSIrUg==
X-CSE-MsgGUID: Q6WC2aLXSWyW5ni+GCCYKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="165427080"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 07:06:47 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 12 Aug 2025 07:06:46 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 12 Aug 2025 07:06:46 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.82)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 07:06:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RAbzuydqANRXMP44DMEpfhSySqdCqly/swJs7KSjTHIbMue1Hmcy2gF2/fdtquNZYb/gG0JSAKf34SXEha2edI6eoWC+E6JLl4xyysIHaTbOQLItaa8Pt/cSH3BGe4S62vJehcePCVeNiZRuaje7oKf5QW5boVUAweSh6DeLhg38QLpPm+2/hgP9tBuKSfDJYYWmQ685M/8/yb9Eq7BeYav5Qw3+M3amUHAG5EAwmG7nJsNoRBpOQySWSKINC9/okfHxEDLK4B2YjcICBHH7asXXUdkV8B+Cl0+Qcq09jHC4huwmdgUheJ0PrsMNH1xRUNIe+qb6twO3BRFLHouIMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kVq8ibXY62jY8GOQ3BZwIUa4WXQgJciETx4b7pLtguw=;
 b=Tv3pG+xW65O/Q08tuE8nx0LQ5Fp/DyctT+FXLY2C2xavPcox3WMwPLoO9Wtmb0sz2+++RhFRl/QluYOKqzhYZmXPjaf1/agARsREvgw5g7M1mN/9Q8UV1bzhisEoxrAh57lHlXzfqYMWMyT6bXDHuFMQLmH00Qwfy7he3W/37osTmLNRHQrIuhakq50pcKtHF05CADg3yKpSAgrOr74nf2p++P30tQs10r7BEX8eWRP91JvjgN2Ci/AbXHMjh6VgssalZfm1kNWCakkm6ISTGoFBJEQJ30pOdXGyDUzfqW3ySf6gLRH32VbKJC4gmRVaLwcqQpTsak7CeWIsYuPVMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by IA3PR11MB9206.namprd11.prod.outlook.com (2603:10b6:208:574::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.13; Tue, 12 Aug
 2025 14:06:43 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.9009.017; Tue, 12 Aug 2025
 14:06:43 +0000
Date: Tue, 12 Aug 2025 10:06:38 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: =?utf-8?B?6ZmI5rab5rab?= Taotao Chen <chentaotao@didiglobal.com>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "tursulin@ursulin.net" <tursulin@ursulin.net>, "airlied@gmail.com"
 <airlied@gmail.com>, "simona@ffwll.ch" <simona@ffwll.ch>,
 "oe-lkp@lists.linux.dev" <oe-lkp@lists.linux.dev>, "lkp@intel.com"
 <lkp@intel.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "brauner@kernel.org" <brauner@kernel.org>, 
 "oliver.sang@intel.com" <oliver.sang@intel.com>
Subject: Re: [PATCH 2/2] drm/i915: Fix incorrect error handling in
 shmem_pwrite()
Message-ID: <aJtKbg28QMPgvunP@intel.com>
References: <20250811093050.38930-1-chentaotao@didiglobal.com>
 <20250811093050.38930-2-chentaotao@didiglobal.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250811093050.38930-2-chentaotao@didiglobal.com>
X-ClientProxiedBy: BY3PR03CA0018.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::23) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|IA3PR11MB9206:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c4001d5-626f-4ba6-6814-08ddd9a97746
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?b1lGVktsVTZiSzBvZEtuci9oUEp6M0dwb21KZ1RXKzRNSHc4RHN3K2U2QnRI?=
 =?utf-8?B?clNXSmxwc29sbWJjRk56M3BIbUF3S3VPTjNzcUl2aVloL3Y3Tll2OHpoT2Fu?=
 =?utf-8?B?REtRUTlMR051Z2d1ZWtuRlJxbTNGZWxwYU9oVi9JQ2IrRHdHZ0czTlE3Qloy?=
 =?utf-8?B?RklqdUx6WnNCMnAyMDJ3WEJSSklmbitUL1JkbjVDMjFwTktQM2lLYTRlWHdl?=
 =?utf-8?B?d0w0QVlvZzR0VWt4Z3BFWklpUVlxdW9GWmU5TW44UW1Zc1hlMjBDQ0pvOGJl?=
 =?utf-8?B?TndObmVCTVJweTlkaFlZckFOSEpFRUg4MzZsN2I3aDFYdGdFZlN3NHNxQ2Fh?=
 =?utf-8?B?aXVDam5hNnQ3MGkxV0drRndacnh5bjRidTNEa3pxNE9HS0lSWE1MdVF4WDRH?=
 =?utf-8?B?RVlkejFmdHk3Nm4xM0hrK2hzOW5UUDd0bEwzVnEzNlNWWFR3RGJuQVZZaXNu?=
 =?utf-8?B?bVc4SWJvSndXQXVBYS8wWTVqMzR6VDE0MVhKTndJb01MYnlwMjFObndQYVBE?=
 =?utf-8?B?Z1hRNnZjREplN1NXMmJ0aEZYb0IrOWJ6bHMyN3I5ZVRVcGVycjVvdzhCVVgz?=
 =?utf-8?B?L3U4eXBnRG14ZkNaenFpUEwrcXNxMlgrMkQvMXJKVFliMmRQQW03aDV6OUFm?=
 =?utf-8?B?MlVLL2tDQkc3bDExcWZNWXlmQjhGZmxpeW1md2RIaDZkM2ozTGRRd0libWFq?=
 =?utf-8?B?cnZDcUtnbHQ4ZnVYT3FDZXpLdzNqbGpzTGllYnBwNzl1ZnE2N013aUhmM2Ri?=
 =?utf-8?B?cGhKSnpLNjlmUlc1dE5iVDhXaTdOeUJxd3IzY3ZNVm9McHYvUTU4eTlWZjhU?=
 =?utf-8?B?b1pEdlRMK05leUlrc3lQTFlMTjhHUCtSeldGaEhkRndEUFVxYzZydmpJOERD?=
 =?utf-8?B?NVNxSlFSWW5vemJHOGkzLzFPd21DRDMveXZmNHRIT28wRnpRWG9ERXlDQTRk?=
 =?utf-8?B?OUhKQStCUXMxeWx3VjNFT2hUUElydDdDSWlIZjZubWI0T1RWTU9yNVhEQVpa?=
 =?utf-8?B?bVk4VmFlRnEyUUtiQklZM3NhZkFtY0pWOVQ5dy81QkxhcmtsZnZac1l3U21s?=
 =?utf-8?B?aTdlcUV5NGRWT1hIdU5pUS81QjF5R1dURUMyb2tqdExzMnZCZzdXYjBKZjIx?=
 =?utf-8?B?WXRSWVhxa3c1VnhlV0I5dko3c0ovR01iWjlNMGRXczloRld6TTk0TC9YdVdj?=
 =?utf-8?B?UFE5NnIrNnNDMkRuV2pPMHdGNWVybUVOZDFNenhwYTgvMjM4U2EvMXJLU09C?=
 =?utf-8?B?R2VCcGdqdWJoQk4vMi8yYlYyQlh2T1hCQU5qRnUxQ0phUU5JRk92WE5WaWVK?=
 =?utf-8?B?ZmZ6R0ZNekFhSWJ1dHdVdjI2elRSVmlONk5aNE8yR2Y5ZHR5eHRRcndwWGtn?=
 =?utf-8?B?Q3ZLZ0tiaTI2NHF0ZkJtNHVKalN4WklkeGZISXNrZndKTThXc1EwcVpyV2ZM?=
 =?utf-8?B?Z1pEelN0YnVGRGttQklUa0tzc3c5bWxaWG5BUHNwZ1JVMDZ0eHlmS2lJcGxh?=
 =?utf-8?B?NTluaDN1enREd0pUemdrMXhCbHQzbWQxbDZJWlFzZTF1eGtCL0doSFRWaUxO?=
 =?utf-8?B?bGNkMk1HNEpLZ2hta1h0Z3N6U1dqZjl5UUo0SjJuUUVETzdHU0J5RlF6a0E3?=
 =?utf-8?B?Y0RUSUF5WkIvTWRaUGJHa25BeXFTdFdhcDNBM0tob1FBNEtGTUtKajF0S0Fm?=
 =?utf-8?B?dXlYajdLb0RqQVRBZnFLQi9KdXJUUXhBRUJpRE1ORUwvSExpWDIzdHNGcWFK?=
 =?utf-8?B?VFhiSkZFNkQ3S2hUTjhiOGZnMGNJcWtrbVE5ZHlNN1VQd2tJQ0JXUkEyKy9Z?=
 =?utf-8?B?YXBGUTBMS0k3Rk44dlVqc3pPKzhpNTc0dUx1N2tqV1NzdS9GWmRGYURsa2Ux?=
 =?utf-8?B?WGlqQ1BLUUErQlVONC8wd1ZETWliMDBzUSsrZjk3Uyticmc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NGxac2VibWJaVS80cGlWck8wbHZiS1piWm82aXlvY2t3QnBYVS9LQ0JYMTVh?=
 =?utf-8?B?bzZad2IvcjJUaXlpZXY4Q1Y2cG1vZXkvekNmeU5iT1RMc2FuUFFMeFIxYmNy?=
 =?utf-8?B?RGNMTGpoQXZjT3FVN1VRSDdQQy81TlljZXFxQ2tRVDY1YzJHQTRZSGdSOUI3?=
 =?utf-8?B?WWNoV3ZxbHZxVFM4eGpQUXEyYkZLNldoZVBLY2pyN01rUS92ZmF1NTc3b2NS?=
 =?utf-8?B?Y0pEQXlvL2pPTDBQcktRVHJTOXU0S3JmYkxzWmprVVBBSENLY2s4V3JnZ0ZS?=
 =?utf-8?B?SnprTXFIbXpnWDVWaVZyRkVvelR3UHc1MFhBc1dESlNEVktPZ1BGTGRMSFA3?=
 =?utf-8?B?QUw4MVA3Y0RZRDZEUElWN09xTzlhZ1VLTlExZFoxUG5kS3lOZU9qMVljZktM?=
 =?utf-8?B?UXlRVmFjMWQ0WGVSOTR3TGNYWXd4MTlyU0gxcS9Ra1JJY3VXdTE5VENOekRK?=
 =?utf-8?B?Ym1iR3JtdzVwWDk3MXFiUWZoMmFIMmdHY3YrY1p2VzZDRGhzR1ZqSWtvL0xh?=
 =?utf-8?B?ZWxMbUd3SWorOWV0ZFJ5a3ZaSGVDUmZiM2FndS9EL1Vmd3FueGREYU1ZcXg3?=
 =?utf-8?B?S1NINmppcXErbmd5TDhyOGZjVW0rTlh2ZnZMdjRzZmtxYys1S3JERlUrUTgv?=
 =?utf-8?B?RHozMlpHMUthVWk2cVM4VkNBR0tPZXlHRWViM2Z0UktNVTFBNnhkUXQ4K0VS?=
 =?utf-8?B?aGdXbFFtc2pzSGVrKy9lZFI2SEsrbXE4ODVtdndSUDFZaUI1cjZKVXh4cUNH?=
 =?utf-8?B?aWgxQVhYd1M0ajRSMnVGTmlIWUtJNWZZYzU5c2U1UEVMVXdDVTBGalVyeFJQ?=
 =?utf-8?B?TkRvU0cwSm5wbXkxdjl3ZkxqeVNKbklnbzAxRlh3Lzl2TEt4NFZ4RXJ1cE9u?=
 =?utf-8?B?dHMwMjRtTmxGSEw0N3lWYkFvY3FNT1lNNVJkK21VTW5mOWVpUGhZMU8vVzdU?=
 =?utf-8?B?QU1EZ0NhT2NVNlkwOFYzL1ZKRFJudThrMHprMlFza053VURtV2NRcUZGaEJa?=
 =?utf-8?B?TDB0Q0ZjS0lyL3dHNWlyc0NOb3JUQ2lYNUJob2syMENoa2NmZUNvYzNReE52?=
 =?utf-8?B?cW05TjFkYm45TEJLVnhrM0R3NUJzR1FuZ2J3MUt0Y2cvVHhxM2NTcWtvejk3?=
 =?utf-8?B?S0lXVkNhVjNrVG5HU1o3ZkhYOTBrWVVVQ09nc0dWemtmcjEwYjRKSXNSdmZC?=
 =?utf-8?B?M1VEazlqbWM1OWpMK3QvSXRKK3lsSmRLcjhHelhud3dpVUVoOWVMMm9veUti?=
 =?utf-8?B?RVY3bGJncDNTY2IxRFpCTkN4QkxaYit5a3JjM1JCclFJSUxLVS9qYUswbjdD?=
 =?utf-8?B?YmRiRmljLzEyWDhidWZzelBIM3IweHNvdHo2U21ZblZCZ3B4V05QeDFKOGh4?=
 =?utf-8?B?NHIvL1dZMlo4d242NjgxMzFkR3gva3hDQVRoNlVGclJtSE5lMU05UlBTcjFw?=
 =?utf-8?B?WU93S2k5TU45Ylo3dGYwOWI2anV1SHU3OWpaVit5ZVhMY2ZOazRBb2Rzdm1w?=
 =?utf-8?B?bk5yQXI1V2VNU1Q5VHNha1pHRlgrMnZuNGt2dVRjZDhLc0UwdXFzZFhzMnM4?=
 =?utf-8?B?V3VGaDUwQ1JFZkk1UU9seGRTSzExV3JsSjQzT3g4MlNkOXBnNUx5STI4dEZp?=
 =?utf-8?B?bVBiNHNRMG1QQUtRdDFpR2VCSWo4N0dsY1lPRVVKU2libVBnSC91djk0SUJo?=
 =?utf-8?B?bDljbmVmVnJkUnFveWx2UTVzcWtGNmJJSjJSdzNLMXdNMStRQ3N2M3hoNEpL?=
 =?utf-8?B?RTRnNmQxZ2pMNDlzU203VmxZemkvbHRNeFNybzZENFIrcnB2a003Y2NZcnZL?=
 =?utf-8?B?dUV2QVcxTm1WWCtpdzJvTlU3ZHhxYWtRSlNZNk45d2hOWWc1anY0SW5tY2Na?=
 =?utf-8?B?YnhYUFZidld4TXl0d2NaWW04OXoxbUcxbzlJNENnRnpoUWhMSDBRckM4b1Ba?=
 =?utf-8?B?cDdzSFAvUFNrcXExZGpISFBOMU1lWHpzOHVZM3JGRnduSFNTVC9LQ3JIc3hi?=
 =?utf-8?B?RlQ4bkVjWnJNYzFiRE95RG5JajU3V3FmdXFLT2I1Nms0TFBTUFR0VGJPV3gz?=
 =?utf-8?B?OElIWjV2TWt5dVpHU3ZoU3ZQR01mRmJaYkZPRG5nRXNwL1FhM0JPVHdObUFm?=
 =?utf-8?B?ZDRwRzhwSUZZNU9TbXc0THB5eGRJbUdVM0svYTNtbmZnMzJrenNKT3JuQVZa?=
 =?utf-8?B?M2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c4001d5-626f-4ba6-6814-08ddd9a97746
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2025 14:06:43.2012 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UKieUMrzUmHieRpMwacuaLOhJ8tmvNymsIhhZOMGrUziPV7s/3Sn+udLJ29q0ZArXbttkqB5lvzL7S4EMg7Gxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9206
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

On Mon, Aug 11, 2025 at 09:31:00AM +0000, 陈涛涛 Taotao Chen wrote:
> From: Taotao Chen <chentaotao@didiglobal.com>
> 
> shmem_pwrite() currently checks for short writes before negative error
> codes, which can overwrite real errors (e.g., -EFBIG) with -EIO.
> Reorder the checks to return negative errors first, then handle short
> writes.
> 
> Fixes: 048832a3f400 ("drm/i915: Refactor shmem_pwrite() to use kiocb and write_iter")
> Signed-off-by: Taotao Chen <chentaotao@didiglobal.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> index 2b53aad915f5..702532eef207 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> @@ -441,12 +441,12 @@ shmem_pwrite(struct drm_i915_gem_object *obj,
>  	written = file->f_op->write_iter(&kiocb, &iter);
>  	BUG_ON(written == -EIOCBQUEUED);
>  
> -	if (written != size)
> -		return -EIO;
> -
>  	if (written < 0)
>  		return written;
>  
> +	if (written != size)
> +		return -EIO;

That's awkward...

I mean, you are right that we cannot overwrite what is returned from the
write_iter function. But perhaps this != check here should be before?

Or it at least deserves a comment in the code telling what's the intent
here. why != size is -EIO... but it was already written :/

> +
>  	return 0;
>  }
>  
> -- 
> 2.34.1
