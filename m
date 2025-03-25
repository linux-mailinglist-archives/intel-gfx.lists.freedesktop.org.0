Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75998A6E7E7
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 02:17:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 151A610E287;
	Tue, 25 Mar 2025 01:17:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QONl51fY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6367E10E25D;
 Tue, 25 Mar 2025 01:17:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742865427; x=1774401427;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=oM4KQTqW7KrL04he1dWFj2NsWtVon/rBeKmwN1VispA=;
 b=QONl51fYCf9GDnz0PQkUF5jjUHmWcDKxPYmet3lnHhWRkMoLEmeiC/aW
 IztgqNdLLnsAl9lvEeonbVdqz/BCaAlv+vyReglLbvgbgQdh8MaELg8p8
 4yaxVWKMvgqWcqDNhh4E0X5OIljRZxcz3vydecheh1cWGOTPxzFxohTx/
 oRZdW/EIRFC0rhj5QasTwrxusYI5DEUtLidSakwXAinxmEBB+/bgaA/US
 0gF49numJC5qp8D7ytaGX7rMcCAiLHkA9rhGjoMXfthRZ94a47MQhJphg
 PmWS8ljEGg9V6vyj64yTOAbH+oqgKZKUFMI3eT1UbohRx4p2xOiv8Z7Tx Q==;
X-CSE-ConnectionGUID: Qg5L9pgETcGLgW0OZyxd9Q==
X-CSE-MsgGUID: FHUEXX+ZTIGNzR1J5t1HJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="47751119"
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="47751119"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 18:17:07 -0700
X-CSE-ConnectionGUID: OEjnr0bjT4agn5Y/52MV7w==
X-CSE-MsgGUID: dv879RAmQN6OU+qCx2y3PA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="129040441"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Mar 2025 18:17:07 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 24 Mar 2025 18:17:06 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 24 Mar 2025 18:17:06 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Mar 2025 18:17:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vWig07v/E1hgCgc3bMx6/XtmivrrpjG0buzENX5PI05xDPRzKyeAdCbCBRCP2YgbcAS/Y+kThGMZgvfDdiTSEplG4akT6NH9dwgwpWRju6VGro4h1ZYcj5j/1SU7qkuDCiYj1wuB8wtKw6u68GJpcz4K3ItEvWfaDgaU8vo37qyaClL/e3uTXtdhuFBRcf9hHc6GN61FrN4g8LNpkbss6RX1tyDIz4N2GjbPLbgZg2GLlb+O+PU2suzpNgxOB5qJ7P2RGFZMW5d2Jyukfs9CICEojCHNuDEcpX+eb40XigLlUyhA9FR/X0WjAb77meDyz/nXKR0Skd5djO6AyhTOGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oM4KQTqW7KrL04he1dWFj2NsWtVon/rBeKmwN1VispA=;
 b=F0sLmG5lJv5AEz1UeeEP+mYml/z4/RQW2CTg+bmC1hdYZcnYv88CQU2Y0ozfx73tM4dQWn+RUheCNMQK8zPWhYzsT9FIZk6iNiTjGf50g3Gg9GsmD34waT7hDVzkaxUN4xpVku98C97hXxCJ2yQugbDBgwgo3pf4gNK61J0IEtp/nGfTkDXZlD8IMIwWBGT93sUk1zkTwTsV67lMCho3QAQ8EbzDcTQyYrtdrm66iRHGtmmxbRqfDNtW0NbG2bmfWkch0yik6AcOAtxk64TqThzP8eiLlOWaxmpHFkh7a/33nmEfYw1KsElkti0w4NG5bNdoZoHLQvQfkYluCwI2oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MN0PR11MB6134.namprd11.prod.outlook.com (2603:10b6:208:3ca::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Tue, 25 Mar
 2025 01:17:04 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%3]) with mapi id 15.20.8534.040; Tue, 25 Mar 2025
 01:17:04 +0000
Date: Mon, 24 Mar 2025 20:17:01 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Vivek Kasireddy" <vivek.kasireddy@intel.com>, <stable@vger.kernel.org>
Subject: Re: [PATCH v2] drm/i915/xe2hpd: Identify the memory type for SKUs
 with GDDR + ECC
Message-ID: <32lakxysapix2hgoh5e7n2b6zlv544nh6vcvmg6zllzjnlikmd@7k37w7pqy4p2>
References: <20250324-tip-v2-1-38397de319f8@intel.com>
 <20250324200207.GN3175483@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20250324200207.GN3175483@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: MW4P222CA0012.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::17) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MN0PR11MB6134:EE_
X-MS-Office365-Filtering-Correlation-Id: 5aed4613-78d1-4ea5-8d54-08dd6b3ac0b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?81QhyAmDGiQ/2pFSoOqMzxXtxBlL8ko30J2kGZDNVgBhK5EucZzmWuAXkvb6?=
 =?us-ascii?Q?3PosJL0VqZenj61wIDgs+GmE5BPI9TRbwt2PHMSPV4cbgntcQSVIRIzTMjPZ?=
 =?us-ascii?Q?iXAXArnOFsyToBOCuG2DoX0g2S8Sc89e00xHmvfmnuyKf0pbRrBbdi6zA609?=
 =?us-ascii?Q?ZWFOSKb9ilQ6bJ/5AOMpBLRogdA/jpqxE+HiGnSWLRvohggLoQ1NC77KBYHx?=
 =?us-ascii?Q?zoo1MW1id0h6kBYX6l3R73QULsJ88z219PE1YEt/ican1pfs3rtyZNZtPCGE?=
 =?us-ascii?Q?oO/nViEVCex7SbSvubjLeA5rNAch3iYOaZd/xElRBdPlx2/ohPO4SVlzfQAB?=
 =?us-ascii?Q?IHdiCO3aE8kxUzNHf60O9mcy0Rv9oJrSISCMEdQxNi4gIaJHdCoqY5lCo0b/?=
 =?us-ascii?Q?EjhmcVNowmaCSajTGogUy2Dto38SMzusbwffvmbJODbweviyvj2bAt0uscXc?=
 =?us-ascii?Q?n2kEPSooJE2ce64m9YWGBLN4kiz99Z4+JDN67ai7FIjsJ1qyimEPFOYsnHxP?=
 =?us-ascii?Q?mDytKfsWP6s00zwkipMzaAS83BRIv4iaBcFdkDhJBjwx0+4DKPaWXJyeZABg?=
 =?us-ascii?Q?nWAGk4W9BOllOJ8b3CScGo6LayvprzbjqUyOgiHQFp57MuwVlsK+KMDRubE3?=
 =?us-ascii?Q?vKUcff+a/4kL2i8s3GsK2ELgepWC+CvXCKEzGTWj3Ee0/pale9RrEwvuvI/r?=
 =?us-ascii?Q?SccWtkvSG1NNgOt/bseLfmhAu1EJZ4FORPB+fQ+/3z6iNNFsCU1L79akvThw?=
 =?us-ascii?Q?gKuUcz911HkCbfJBEJE7ZXWDc0PSY7lKx1sKadLl1LjJMl7lDIQPJsWt3rgH?=
 =?us-ascii?Q?+B5/blZj29qGh7X6gB4zTNTJS9S0tvbR6D95/WLVzDDlb4MpC7+N270OUtJg?=
 =?us-ascii?Q?cR3U63cQ7De9QA2A3dAxSLTA1onEgIETK0zXu4fvx8wx6U6nUAyPaSmK8vfm?=
 =?us-ascii?Q?FFGiZXiYohii1HR8uTekMMtU6sHADD9y4JIQpywcUucwr6N49xj1X97XPHO5?=
 =?us-ascii?Q?DD+AlGEwnX/G7wQBToB14Zy4bDb10jPKEGklXQJwN/pODaYOFK/+S3LWerNZ?=
 =?us-ascii?Q?f4DhLRXWjy4qPZN5dNvBN40udoSpm6O4MlFN17hG2IXo9CwZYjCm8HQLKID1?=
 =?us-ascii?Q?eWOBvPKuUqiDMuh7F/rFsrfQ9ZriYKtmH9WDiWq/mOgmpNew3aw9E7UmpPTQ?=
 =?us-ascii?Q?10VFvrNHFp4UYV2zW4ariCia//wqhlCwISYllsoD1fghba0HzkSg+nZpRBzZ?=
 =?us-ascii?Q?hxF46PmW5eAkXKxUGDMa5PadRTyKopWLx2QkJ33njTvp4+WJKJ0YEt4gBiHy?=
 =?us-ascii?Q?LvCDl97PU7dI86xyklbSo1wxQ5Ie7gws852mxyNc0Tct4x5n8WGnLdkQhtCL?=
 =?us-ascii?Q?JNNSHn+qVGjtg7nxjcYdKIlKsxBa?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8anWCPQhUxrTkrSvCCxgXMsVAvYYp5GI9xbrd1xlnSE77rcK4tbcYlvKTgS1?=
 =?us-ascii?Q?Xwoo/H5HeWy8pDFEq+tknf9yvE0zk3caZp+hxP9Mo9wC0LNxOif3fDxp6Xnr?=
 =?us-ascii?Q?NRk1ooVALCe60FMq9YKj5vVd8GqzGoKhfKjI33/iVTbfPXwk/n9K4awNgTWm?=
 =?us-ascii?Q?QKU+5XAUk+Oj9dCvTtZkawi80sNiVk3XUilVHMQ0qMVd5G7jZW4EQ0zt28e4?=
 =?us-ascii?Q?1axVMGdKBhvAfwTVFSQ/Yr0RVNbBoXzUIq+Crx+jimyv/v0yTAu2WlG9tFDQ?=
 =?us-ascii?Q?RXVaJzH8TXK/mAfNGGgFeF94yIdTnfggue3OiPl9dsl/0YnkCorDDzek2DcM?=
 =?us-ascii?Q?ODz6Si7MC7IaAGZpbevsunX2ZFs+jw4nGZ/GQu+msM5TEsGLIVOJQai/h46p?=
 =?us-ascii?Q?puAS9juX1Hzbif6VeU2PxZ5fhCJ13lA5vRd71dKqwQRKqKA+6aHwRRDgoxqy?=
 =?us-ascii?Q?VQf2iJHYoNsOiK2gzAqJnU8wZVwezWu49fEznL9IrZ5KAUoX/EsBwi5Ay1su?=
 =?us-ascii?Q?0ikcV22LCJ2WvD1+Pg3jsujE2BNAYu4DgERX3PB0G6a4koKpXOm0XDgUGnJY?=
 =?us-ascii?Q?FWH6SHoNwtIqktE5YdnBYImEeSv6dfnhaAxVCmZx4tOvd3+QY/W/yx3qf6v5?=
 =?us-ascii?Q?R7QHQqVYaFvvoN06ioA96y9TYIbJuiE62qy7yD688kWS92uqKdRfeeZTWVz7?=
 =?us-ascii?Q?ahHvpX7oxr+QR4BZrmgCXNXx24Rsxd//GbBPStZgGruWVDSC8mP+QTQG6S7O?=
 =?us-ascii?Q?6eVHI+y46RXtIp31DWiM8Rxbt/IBcCC/VsvAIOf4bfrXfaAmzqH8hnzezXiB?=
 =?us-ascii?Q?z1mtZvAMYRmvY545A9Lw5K6P1YQTp9glZLfZkreQr23pE1wZmPt56II3uaL5?=
 =?us-ascii?Q?RourqPUimmLDUqfB5bkm5YSiUSzHtXwodvU4a7fYhZR3A4QgO59SbDhwZi2L?=
 =?us-ascii?Q?Ey+J/U6HP0VHozgFZQeAq3KC7YNMZxw82D1X1I1/de4JswuNLQzSqOmNYyp+?=
 =?us-ascii?Q?Z0Jm9t1uZZHtf1ng2g+y9+NGRHZkY4LhGm8gh06KjGMrE0CU6qxympHlm6Ed?=
 =?us-ascii?Q?6nsxMSsky6YNMevpUzTqyDitHmal9bfVs/YzTxSjopFILANYguZr1WZtVKGS?=
 =?us-ascii?Q?WIew71wrLScEGElmfz+Np89PJoxCYmPZ3VRmyY/h0BjmgKJaSog0ZlMTgspB?=
 =?us-ascii?Q?3a15EJ1seGfXPv3+MdNKBndZcCe1MxhsxSrF1JX8wGkP1pk0C6etbzdotxhJ?=
 =?us-ascii?Q?+Ca3dqMVlkvn7BJRAvwnajwYVKUuQPBpMIU5oQZpBDbTxNpLJqN4FDkn0YBf?=
 =?us-ascii?Q?QOkhgQ78deFlwBi1zHhCIk0Jm96ofHP8q57obWlwOmMX69yCHPaBE5wdFb+t?=
 =?us-ascii?Q?EPEtEJAIdigAvUDUzrI3SxAfytIe5DzMVTPDt49OEsQWBP6pVXcusQKifsz9?=
 =?us-ascii?Q?5qkSQ2eN66AMcpxsjHtDQ361c5zZiWL6Gddy2/SWnBdW7Fy+9Ujz0bZ+YMls?=
 =?us-ascii?Q?2vAg48dEo6/ENTG1Y6GKDUMs8BMPTO4L/ywvIEf62r1zx7dP1W+ntFEtkYCO?=
 =?us-ascii?Q?JPokZKAUU1mMko/DKTIW2ImhBslP9t2wpFHfmHUpt6endKLMSeuiOHJ3mF4a?=
 =?us-ascii?Q?6w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5aed4613-78d1-4ea5-8d54-08dd6b3ac0b9
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2025 01:17:04.4071 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OIWjMKgzvviGqhobL2DPiC5KmWv0R7tVsLhTchKyQQHYN77pLKHLdnG8yOkngSaq1KezV713tLaH5KOAMdu6MtS/RzqUEhEyvVgymCWQFCM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6134
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

On Mon, Mar 24, 2025 at 01:02:07PM -0700, Matt Roper wrote:
>On Mon, Mar 24, 2025 at 10:22:33AM -0700, Lucas De Marchi wrote:
>> From: Vivek Kasireddy <vivek.kasireddy@intel.com>
>>
>> Some SKUs of Xe2_HPD platforms (such as BMG) have GDDR memory type
>> with ECC enabled. We need to identify this scenario and add a new
>> case in xelpdp_get_dram_info() to handle it. In addition, the
>> derating value needs to be adjusted accordingly to compensate for
>> the limited bandwidth.
>>
>> Bspec: 64602
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Fixes: 3adcf970dc7e ("drm/xe/bmg: Drop force_probe requirement")
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>
>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Thanks. Patch pushed to drm-intel-next.

Lucas De Marchi
