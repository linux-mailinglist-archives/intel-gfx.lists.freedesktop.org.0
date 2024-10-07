Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28158992CA1
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 15:06:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B222710E394;
	Mon,  7 Oct 2024 13:06:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RZ1DkimR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F35010E394
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2024 13:06:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728306395; x=1759842395;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2qyxCAqYmctf0fX8EfL9iR3mmKof6ysuciQcbCasVW0=;
 b=RZ1DkimR6qjekPfo/L4Xwk1tg9w7bXY3gjtlLxP2k8YgxBUGluYdAkgO
 uLIgZT6XUTTFG4ESi2yR/5hH2KyyvxwJ+6wGsfZiMR5qVrhe/MatDjnqQ
 ra3jbzv/b28bjkginZ7Ae+ISWx/2M59COGxgWIOXSYakRTcsz+Ha1UW5X
 8rj4qKRRGtHaS6PWnruaDrEDJxDkY2/dbIZFgKrmgNblxuVEGnzwYQ6q2
 SQoNaErl3dRS2MmAcglzV+ohxxVgu/CmX8dNaUnKrKK4747dJ6HQeHzju
 mai7aJ5oDYFOdLZLcbH+AHDk4+Zfm5yRIRwH7+xLSKtqdaHEEMATpBHOb Q==;
X-CSE-ConnectionGUID: aCOVbdPVRtS5NklEviJbTw==
X-CSE-MsgGUID: EvZsUBYKSbiBWCC9WEp9QA==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="38023307"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="38023307"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 06:06:13 -0700
X-CSE-ConnectionGUID: mo3A69NgQOSzDzEUhcY9Hw==
X-CSE-MsgGUID: zgtSO8AWREi1rOXWqFHOJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="80262572"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 06:06:07 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 06:06:06 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 06:06:06 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 06:06:06 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 06:06:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eCkxKhWcy7TlRswfnx4kjq/mLOo0SQqkD6VJSHxtRu9ead2pWVom5LxGzv5FlsxAg4vSusAUjJJxmpjPV9PqOS01AG1/RlDYB7Xdvi+mEAOTGFlEJmxzdLmVCrnBjzQi6I6sEZ15I+jl2MHjH+EII5O3ZFU1PeXFekk5iW6AJn3ZqT3ripIy40Qs0MPsq/5Z0X9gBr8WmnnRSZDOfWCKgd9CkgoXyIjDRlqZWNOtPCSRaSGw4FWeZhOChlz+YTfJq3QcEKWzopdP88SXVdSRaGe/8jbOtzz1RvKWyxzKP3M+xwipCXW5Eh0ztEpM4jACljU6J4eyI3xPvJ/2Fe/VdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zXHmcCMbYb+W/1imI6aNtEsuFdb+oy9hG/sg57z4vlQ=;
 b=riQapnwRMO54f3dUIfVoTIhhaTjcrttalaLVl7ttvs2uPUMJbcfbhS8xd4xCSiKdFKGoeDohanWRPEnFUW3bud4Id9MdquQylA84ZphtFoB4wD4ewWmihuyWKkb3oNZ3Pkhhu2xaBzvapVNv7sSE/GrTt27ervLbySqfZfWeKYv4jClsx8GH6MRUfEuCsBEzvI8Lb4KVAfdfu6Is1wBTXdlEkmCRGY3jie+RCvDYoNUDiweYwCx1mqAhk+LgAy15aao2x5yvZrTcNloso1g2ssJy2OWaLoLFYFKNkPdIExBp8cshZtVJVpywxbui+qzQ8VuJR0b7w+xUtWGi19C/lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by PH8PR11MB8106.namprd11.prod.outlook.com (2603:10b6:510:255::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Mon, 7 Oct
 2024 13:06:03 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9%6]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 13:06:03 +0000
Message-ID: <a1c257fa-9362-4669-a0a0-3e1c6ebbfcc7@intel.com>
Date: Mon, 7 Oct 2024 18:35:56 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] drm/i915/dg2: enable G8 with a workaround
To: Raag Jadav <raag.jadav@intel.com>, <jani.nikula@linux.intel.com>,
 <joonas.lahtinen@linux.intel.com>, <rodrigo.vivi@intel.com>,
 <matthew.d.roper@intel.com>, <andi.shyti@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <anshuman.gupta@intel.com>,
 <riana.tauro@intel.com>
References: <20241007122424.642796-1-raag.jadav@intel.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <20241007122424.642796-1-raag.jadav@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0123.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::6) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|PH8PR11MB8106:EE_
X-MS-Office365-Filtering-Correlation-Id: c42ff945-d3c4-4b4e-b03d-08dce6d0cc2c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K01XYXBhRzR4V25PUTdTZHIvQnMrN2EwWThxN1FhT0dKK0pjc1BDb3dUa1R3?=
 =?utf-8?B?ZXU2K1I4WDdUK2hqUGN4N1hmYUdBejFJbFA0cmx5Z0JTQjlZSG1DcEo4ODB3?=
 =?utf-8?B?ZEZOSldkektMYjFaTTJVZCtpYUhWbXRBM2FJM0dNTmxCeDMyZ2ZtaEpmNHEw?=
 =?utf-8?B?Z0dZSG1KYi9CTTRVUnhWWFhjQzRZYnRtQUNoODdFYitBTWZTR0s2R1VubFl1?=
 =?utf-8?B?c0QxcjhZOUUweWlpdzF6dkFYS0VvSG5zTlZISEw1MTl1TmRpbWZ2RGZjcjhZ?=
 =?utf-8?B?NldidUZjeG9OaklPKy9pVy9uTWtMWnJGaW9iR3lTWWs0b2loUlgwdURMZVBW?=
 =?utf-8?B?UjkzK1ZnR2p2SERBY2NUM0VYL0tMNTZmVjdhckRXNGlVTkJyZXJlU3NLVEQ3?=
 =?utf-8?B?TFpRWCtIUzlEaWl3Yjg4SzlRWE5lSElOZTBkcFUvTzN1ZWpPczZBT3ZEWmlK?=
 =?utf-8?B?R3lJcjkvZEtVT2UvYk53VzE1SkJGeEZqSkowZnRXWEYvMlpYVGJmQUJERVYw?=
 =?utf-8?B?cXRxdjRwVWxUeHNmRFExeUtGTExJVE82Y1ZHY2t6RGttNk1rV0g2Y3RQOE9W?=
 =?utf-8?B?MFFvN2wycVMxUzUvZjRZZmVwZDRpU3h6dE40M2p2MWxqL0srdnNXNEpQaDVQ?=
 =?utf-8?B?Z05SQmlzNkF3YXBzZmlLUFJvaUUyVjVYdHF6bzcvMUJKbWlyOGFhM0RSZ2pa?=
 =?utf-8?B?QlVyNmVMZkJNSCtjRnE3cEljRGMvVVgyNWg4R0RnREtPQWFJQTVGdVRLVHlw?=
 =?utf-8?B?U2RaNHl0QWxvRUhVUi8wc200eUFpTXNBekFzcW4xRjRNVk16Q2ZSUDhMcDNy?=
 =?utf-8?B?VU9XZXFwVFZwaTBxMW5lOWNOdFJKdjZDc2p3T3dvVGVQVldmanRpalN2Y0lx?=
 =?utf-8?B?N2VqMWdYVEZPRXl6UmFXWXQwcUFSNW9SdUdvTHljaHlOOVZSK2hCL21rRzI4?=
 =?utf-8?B?WXQ2K0FScjdFQU85aUh4TDNtVDRqWUZ1ODh0SWZCYmQyaUl3eGhXNjZuSmF5?=
 =?utf-8?B?UnlnZGp1L01Remt5M1V2Y1FEY2NBTlU1dHpRaFQ0RnhXU1hyVE14bTJWOUNM?=
 =?utf-8?B?MHVKY25FaHJzR3V5VnpJVHBSUzhIYWdXeGdFcWd6ekJTOVhDbWFtM3Jkcldl?=
 =?utf-8?B?ODB4OHFrWjRRR1JuN2hKRjQyNUpRU0FhRWJMVm15TFNjeG8wY01xM1lva01K?=
 =?utf-8?B?UGZqcWdyNkxYV2tqMkJvVFZzV0g1M1Uwc0g1M21wb2ZqTGI2RlhJNVRkaUtS?=
 =?utf-8?B?Q2V2RzV4dlFPMk1KZXpTaGRqUlV0UGp2cU9jMkRBdjBwbVFmN25qTE1KQVZk?=
 =?utf-8?B?TWphVDd6RWNNMHptRFlJMXVuRHdtM2xpT2d0d0tJc2NpaVZVMlUzOERKUFhl?=
 =?utf-8?B?N3lBVmpVc2JqVDl3eU96VzFiMFJ3VGluOU16Sk1vZkp4bWRjMDZxYXpXeVIy?=
 =?utf-8?B?NkdFYndaakN6RDQxQ3RYTG81WXRNSDVhbGJxWVRxK1V1M000dUZXa21zMG9Z?=
 =?utf-8?B?Y3lieTNUaEFXNDJnWVdnb3JDVkJHUUtFUVh0VjlEU2lSODlGRWtVMG1lcEps?=
 =?utf-8?B?Qzd6NmxPbVJQQlVDNk5zZ1R0UmE3TFpwbkFDcWJVRVpqY1gxTHlSUjhablVi?=
 =?utf-8?B?RURUbm05b3BDbXJyaVJxVFhlR3kydkhKTTM1YnBYb0ZIWjZTOVFYSzlEWWRm?=
 =?utf-8?B?MXlRbUJUckw2a2ppZ04vUUJhQmc2TmVVVjVSMXJYZXVHMDFMU2w2NExRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y3NJVWVkdEhidktKb05MbTlOQWZISDZGK0Z2T0UzcDJmSHlTNXlyeDVGa2dk?=
 =?utf-8?B?cVA0Wm9CdzVFZTVBaUxRc3R4ZmRZYVdaNFdXYlE2UlNwMVlzNmVSekxOL2Qx?=
 =?utf-8?B?NW1kNWdqUERUY0QwOW9pc2hWUWtURE5sVGRLUWtGYmRHVnQrcTZvbm04OUlX?=
 =?utf-8?B?ZEsvQWRNUGEzL2djdVFGUVVOSlNNT0ZMSzZiZ1JQZElOVHZ2cTZDby9ScDFF?=
 =?utf-8?B?T2Noc2Z0aFMwSldxSTgrdjRITGQ1T2U3WGZOV1lFUXRsdlNxSGZHVERHdkYr?=
 =?utf-8?B?U3BQUTZGdlhVNDlsSHFycSt2aWlPQ1ErbDNqc01ibU9QMHB5QWw5YkVpcGMw?=
 =?utf-8?B?TVVUZEJBeEtCVGhmZ1djMGFUWHFOMWxma1FZTEtaQ1VIVFp3cENMR3RJVk1B?=
 =?utf-8?B?akMyUFNVQ0liVE9CeG5NUDJDRTlicGRwd25maStDNWZFbk8zYkg3aTRTdUZx?=
 =?utf-8?B?NU5nZnJpbThDRDNqU0JKU0tpMkYwcG9rNGVKcjBFQ0NmbHR4UUIvVFdVaE5J?=
 =?utf-8?B?SVFHQi85eE85Y3ByNW04UStZU3M3aCtZT3BveEsxMnJxM2xBZ0JnSUpvMmVx?=
 =?utf-8?B?c09FdVA1Ykp4bnR0RUZsbDJNd1lKR3VmU3NLT093RlAxZTdFNjlqajU4UVpa?=
 =?utf-8?B?OHRvZU8vNXNrajVYYmtENnNMUlpWeTc5MGlKSCtFSUgyNjVvSHlBSkFmOURz?=
 =?utf-8?B?d2NJb0FRQXBqSnovbzg5dHZBVmVIZjdkUExNdm1LQU45Y21CeTFVQ1krMmFa?=
 =?utf-8?B?OGNWUjlyclNQY3hhYzBNcy94Y3B0WGsrWWI5QlNQZFZYaWJpS1BFZGY1ZmRn?=
 =?utf-8?B?U0xuejZoeFRaM1B0b1MvaDNiR2llcjQwZFB0Zk1EN0UyYStmcVNndHVrNm1j?=
 =?utf-8?B?OEozQTNCQ0tObEM2OE11VlpNbXdDOHEzeE1mb0hkUHZmY3hNVTA0WUpIVkNr?=
 =?utf-8?B?TUJYWGs2U2c3Vy9KeThmNnZoYnFDVHRaRjNOWEVVSVBGa08rOXFRODhXNG1z?=
 =?utf-8?B?RFovYmhQcHdudmhiUFRzQlh5bzdoRG5reDdPNTBnN2JQMnJlYk5LTmJrcys4?=
 =?utf-8?B?dGRNMFJCRWNhTno2WHZGaTgvWU80MGh5azB3cHFVWWdJOFVOYVBSeXpJV3dR?=
 =?utf-8?B?TzhvMFF2RysvVWkyazVGaHFMay95T05heFBIbEhVbVh2VVVRY2RXcmY4OHU3?=
 =?utf-8?B?bEoxMFJRbzRlSjhjZCthWFA5aWJEN1hFZDhWcEZ2MU9NVlBoc2RlMVhRWkdI?=
 =?utf-8?B?RG9rM3J6UW1PUmlwdUlhZ0V6aGNYS2UrcUY2MlVBZjIxUFVpZzlKVXlHWlVI?=
 =?utf-8?B?Qzh1bURZd0dYMXg3V2JFUFkwVGFuYmg4L3ZHRHZtdml1M1NxZ1UrVzk3cXdX?=
 =?utf-8?B?OTAwb0hqOVVkK0ZlZE5WTEVVQUVtMDFVWXdZTS9ieEV3WVFEdFB0Z1p1d1Zk?=
 =?utf-8?B?Ny9VMG12VTh4K3FWWGxyVktJTk1Ea2REN2N3UExaRk1DbmFGQkN5enhWMzZo?=
 =?utf-8?B?UGh6QkhTaHE2czhvcDBSV2V1OXFvTERSZ091SXhsQzFYOHd2UGFzWENPRnhz?=
 =?utf-8?B?UWNHUGVXdW9VL29Bc1RBMm5FNFpHcjFrcGQySzN1SFBwcHJPdCtWZ3pUVlhl?=
 =?utf-8?B?SmQycmpkRjk2dEY3VEg0ZDBTSC93WW5xaS9pTkRWbjQ1cXJITVI1VnpRQ0VE?=
 =?utf-8?B?Ym5DcWJjZTRtSjh6a3MrSW9FbFFjcXZ3dGwwTEErdmZHbzZMbWJGWmNDSm9L?=
 =?utf-8?B?WWdMemhtcmF5NnNjNkxBeGJMR2JZWE1hbEJBUTlXREJ3aytxTVFIR05wamxy?=
 =?utf-8?B?WW1nWUVPQURpNkRaTU0vRjhBS3FkS3N0SU1TcXRJNHpNQmt0RVJxWlY2d2Qx?=
 =?utf-8?B?ZTg4RzJlVGRLNU13eVlMV1pPZk5PTndiMDlFd1lqM1h4eElRT2dSUW1xWmUr?=
 =?utf-8?B?eDErTlJmd1VmOUJBWjlJYUIra3JPdkRkZnZJb2VFWXVOazl6YVdUUXJxZlpW?=
 =?utf-8?B?Qm4wYm42S2laQ1FOb2pnZVRndnNYY1dlRzB5elkrczYvbnVQbFlOeWtqMVBM?=
 =?utf-8?B?bkVDMGV2NzdtcEpKcm9nMjA5bVRoRXZVSzRXMENwdUxwdlpoYWJTNjdmYW90?=
 =?utf-8?B?R0pXaU55SFpaVXlGNWF4amVlRCtlNE9jSDJXSDRDQ2MzM3MyTy9nbTFRZVhM?=
 =?utf-8?B?UWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c42ff945-d3c4-4b4e-b03d-08dce6d0cc2c
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2024 13:06:03.6982 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K2CXRDaU5zIZuz2bpY/6KZCZK7tFkKQCOeUduyna8K50iFYV8tIIOl+d+dTMq/YepTEB/xeIGJ5iTSNeUXHnnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8106
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



On 07-10-2024 17:54, Raag Jadav wrote:
> Host BIOS doesn't enable G8 power mode due to an issue on DG2, so we
> enable it from kernel with Wa_14022698589. Currently it is enabled for
> all DG2 devices with the exception of a few, for which, it is enabled
> only when paired with whitelisted CPU models.
> 
> Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 43 +++++++++++++++++++++
>   drivers/gpu/drm/i915/i915_reg.h             |  1 +
>   2 files changed, 44 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index e539a656cfc3..b2db51377488 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -14,11 +14,30 @@
>   #include "intel_gt_mcr.h"
>   #include "intel_gt_print.h"
>   #include "intel_gt_regs.h"
> +#include "intel_pcode.h"
>   #include "intel_ring.h"
>   #include "intel_workarounds.h"
>   
>   #include "display/intel_fbc_regs.h"
>   
> +#ifdef CONFIG_X86
> +#include <asm/cpu_device_id.h>
> +#include <asm/intel-family.h>
> +
> +static const struct x86_cpu_id g8_cpu_ids[] = {
> +	X86_MATCH_VFM(INTEL_ALDERLAKE,		NULL),
> +	X86_MATCH_VFM(INTEL_ALDERLAKE_L,	NULL),
> +	X86_MATCH_VFM(INTEL_COMETLAKE,		NULL),
> +	X86_MATCH_VFM(INTEL_KABYLAKE,		NULL),
> +	X86_MATCH_VFM(INTEL_KABYLAKE_L,		NULL),
> +	X86_MATCH_VFM(INTEL_RAPTORLAKE,		NULL),
> +	X86_MATCH_VFM(INTEL_RAPTORLAKE_P,	NULL),
> +	X86_MATCH_VFM(INTEL_RAPTORLAKE_S,	NULL),
> +	X86_MATCH_VFM(INTEL_ROCKETLAKE,		NULL),
> +	{}
> +};
> +#endif
> +
>   /**
>    * DOC: Hardware workarounds
>    *
> @@ -1770,9 +1789,33 @@ static void wa_list_apply(const struct i915_wa_list *wal)
>   	intel_gt_mcr_unlock(gt, flags);
>   }
>   
> +#define DG2_G8_WA_RANGE_1		0x56A0 ... 0x56AF
> +#define DG2_G8_WA_RANGE_2		0x56B0 ... 0x56B9
> +
> +/* Wa_14022698589:dg2 */

As per bspecs correct Wa id for this Wa is 14022698537.

Regards,
Badal

> +static void intel_enable_g8(struct intel_uncore *uncore)
> +{
> +	if (IS_DG2(uncore->i915)) {
> +		switch (INTEL_DEVID(uncore->i915)) {
> +		case DG2_G8_WA_RANGE_1:
> +		case DG2_G8_WA_RANGE_2:
> +#ifdef CONFIG_X86
> +			if (!x86_match_cpu(g8_cpu_ids))
> +#endif
> +				return;
> +		}
> +
> +		snb_pcode_write_p(uncore, PCODE_POWER_SETUP,
> +				  POWER_SETUP_SUBCOMMAND_G8_ENABLE, 0, 0);
> +	}
> +}
> +
>   void intel_gt_apply_workarounds(struct intel_gt *gt)
>   {
>   	wa_list_apply(&gt->wa_list);
> +
> +	/* Special case for pcode mailbox which can't be on wa_list */
> +	intel_enable_g8(gt->uncore);
>   }
>   
>   static bool wa_list_verify(struct intel_gt *gt,
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 41f4350a7c6c..e948b194550c 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3568,6 +3568,7 @@
>   #define   PCODE_POWER_SETUP			0x7C
>   #define     POWER_SETUP_SUBCOMMAND_READ_I1	0x4
>   #define     POWER_SETUP_SUBCOMMAND_WRITE_I1	0x5
> +#define     POWER_SETUP_SUBCOMMAND_G8_ENABLE	0x6
>   #define	    POWER_SETUP_I1_WATTS		REG_BIT(31)
>   #define	    POWER_SETUP_I1_SHIFT		6	/* 10.6 fixed point format */
>   #define	    POWER_SETUP_I1_DATA_MASK		REG_GENMASK(15, 0)

