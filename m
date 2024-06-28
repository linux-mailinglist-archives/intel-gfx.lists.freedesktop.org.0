Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F65791C748
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2024 22:24:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 334F810E0E0;
	Fri, 28 Jun 2024 20:24:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SBrgehI1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 481AC10E0E0;
 Fri, 28 Jun 2024 20:24:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719606241; x=1751142241;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=XzR+S7To6yKxhJzUa26Q6rH4ZQjHd3VIBTPkoRivaps=;
 b=SBrgehI1pai+0vxrlt1q9KJ1haT1qi1uALdt4UvYdrften+uz50fA4Er
 /mIIfZstr4MbFN0G3kq/9tZ0NmNQym1kRWVBu/+kGjcNRZ7oMBXii2iEz
 oHJdlknOUUDMl4Ju7qez0E+jKOlVNcQrwA9+lhWEki4IuGxqpi/kiFeBE
 yjIStrqrF9loA7ppQVq4L98jjqZudYIZB9JJMDKXE3bTEF214tSNQnV0B
 WABltJNKyxTHzm4KIL+kWUosKqGtHLN7Czr9SfSuPVACgD5Khzvjh81lm
 q4uqZ7U5AEYclWLTjshxYsQlOxYc/zXvW7rI+XegSw3VhEBh+trVfhFjz Q==;
X-CSE-ConnectionGUID: vy9dNzgQREis1x7QWuYcHA==
X-CSE-MsgGUID: hCkrK9IYStGHMAgrfCSr4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11117"; a="16682114"
X-IronPort-AV: E=Sophos;i="6.09,170,1716274800"; d="scan'208";a="16682114"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2024 13:24:01 -0700
X-CSE-ConnectionGUID: H2JbK5ewSdya4HeEBonUFw==
X-CSE-MsgGUID: NuWTEK4rSzC0CAOGjqSJ1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,170,1716274800"; d="scan'208";a="76029568"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Jun 2024 13:24:01 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 28 Jun 2024 13:24:00 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 28 Jun 2024 13:24:00 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 28 Jun 2024 13:24:00 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 28 Jun 2024 13:23:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jmAYz6X8Tw8sDcimIWxu59MdIvFhQXb0Cc6+RXsAj7h3VQ+wHTR9/GzKvhspPwKGEh0g6rsZCBAxRqxbKVCKDOnmbxhvre7q5igisn+5ee9VkYmYewdiN2Iw77NlcNIwHeCvWuhDN/gLdchN3aOvd83opXjeQfoh8VdlPb7A9Tb1MV4khePB/egVBrurDiWKd9q9bfl/Lsul/AFtC0Jbd/I82ThRE4fZ1AG5UtHv25s+oL8JcP1Wr3EjPyuWwhdazDYCLQxlHCFXabjog9tBqs0VNNwAW4y8H9IieMNaZDxSVbn8PQm/kwHWxXu7F+b7hgcriI4z7HahcNDZk3rtaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nLUx2Rd7wxRLYkNtSd3m1EJtviDDWNvo6mXl6kTxTQU=;
 b=VlimN5Qin7XFLI0L4Wye1UM3ePCEjgBK4+O6e/hsEx+/2KL9Ko7ZDXaKiFNcGouXeyXJCnMdbGGWcQ/Dvj5/pzkdXCUKvSoaTfWGyOXsQbv+N0og9hEjk6szC7Wcb61ctZniX+cpxua6+Nb6a76+P7Qqh4jgk7smoCgtF3Gr1xEP8fVwM63h/UWQlq4ICmyAaNMCnuM+S6P91xwbZm59OVX2oUpavQR7qFumQeD4BjoSBhBQ+PhPWE4vwKdZo6J+vIkgYa0LRhG/0kolkgIg7lO28GSqkebh9zvHEDXDn42USFzXfndeWfBwbaKThsreCeu/jRVsQtpFY/bkmR6cvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MW4PR11MB6810.namprd11.prod.outlook.com (2603:10b6:303:207::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.30; Fri, 28 Jun
 2024 20:23:52 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%7]) with mapi id 15.20.7698.025; Fri, 28 Jun 2024
 20:23:51 +0000
Date: Fri, 28 Jun 2024 15:23:52 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: Matt Roper <matthew.d.roper@intel.com>, Matthew Auld
 <matthew.auld@intel.com>, <intel-xe@lists.freedesktop.org>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/i915: disable fbc due to Wa_16023588340
Message-ID: <gqpfyt677ovisjdi2fzqqzjwugcvs6hxxqmkbkfckoacwpomn7@ngbrweofy2tu>
References: <20240619143127.110045-3-matthew.auld@intel.com>
 <20240619143127.110045-4-matthew.auld@intel.com>
 <Znw5jj7YROnoWD9j@intel.com>
 <70fd9b0e-36a7-4247-914f-ac71c33fca7d@intel.com>
 <ZnxPKAIPax-95pyk@intel.com>
 <20240626174224.GZ2906448@mdroper-desk1.amr.corp.intel.com>
 <thill5bemih77oisv2fcbgote36xbuh6bbzobt2ppvqabb5rp7@xfwvht77tien>
 <Zn8CoGF3QXVuZdc8@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Zn8CoGF3QXVuZdc8@intel.com>
X-ClientProxiedBy: MW4PR03CA0227.namprd03.prod.outlook.com
 (2603:10b6:303:b9::22) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MW4PR11MB6810:EE_
X-MS-Office365-Filtering-Correlation-Id: b1086a68-4428-42dd-0651-08dc97b039a5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?KB1H9I2oAxG7E/KgyafAk+sXYyrxBTMyhNnNz6Rxu6Ljl9O5+pPvyB9Wqr?=
 =?iso-8859-1?Q?vWmEWfODclHSOIYUi9DMscl/+FgDhd8S8kvg2cQ98u0kSQUCIvqA/ALLf1?=
 =?iso-8859-1?Q?mf9aeS3LPVLbD9fXimWE2u6x5EXINr7w4AqVLSvmNHHMtvdQss0vvsLinK?=
 =?iso-8859-1?Q?RaCndhMz2GTDdAUCTm3gbIN2/Qe8RtuAwQfuf6/WxrL1yb9HJnG06eGpT6?=
 =?iso-8859-1?Q?Ghv8F8Nqk+MgMJMq1DyETnfIMqxP4U5ENZdJi6f2RklCM9G+1ytQGPrpPT?=
 =?iso-8859-1?Q?vxMKC75aRiOR5fQ6odyZHrNnyRH4Is9CRq6y09VI8kZ12FlX1NmikdcBw8?=
 =?iso-8859-1?Q?//6djN/wrSoebj5xwOSTxltTHpMXczRsTr1RZdFDQhHrBP4pjyKbhHjxxx?=
 =?iso-8859-1?Q?3+PAEVOIDwxRyE+GBd/iOe6erlfYm8FQ7N596OpdNsw0c5v3G/YOTZs+HV?=
 =?iso-8859-1?Q?KbDznXfAhNQsk6drTRPothSsd+/l7xnL1RgkiY9lkMtXIdxhPVth4DUquR?=
 =?iso-8859-1?Q?CXeknJK3Icoe2xfV+aeznEQ0EFYZLYv1XhLSaz8wQAvGOjNEKsDzqiGYh+?=
 =?iso-8859-1?Q?rY1t/9V/bnNAx5m0b3eG10uHbDBiDKyELh1GrvreoXAfxp/9ofkqV3UiCQ?=
 =?iso-8859-1?Q?aejnDuT+wXeHAujCiLVM/kl4+RtUUWz8Jd3Td4DJkEJfEWQMmTvcn4NoS9?=
 =?iso-8859-1?Q?LBoaIfBzNUF+fyd8S4FI6RX1E8jdqMtYHAH7IxfUIr0He8iK8L6V4a384S?=
 =?iso-8859-1?Q?DmajleaQyu2DdljHb3XXQb6BCJqGpzxxJG9kMLbwDHP5T7tYLsHnpdDRvg?=
 =?iso-8859-1?Q?UTXundZyOiCo2rgNwl81TvvkBfFXpaYYPO7fiqnj+QztiWQon5Txfkf5+7?=
 =?iso-8859-1?Q?TU0BKf52/eQ5Ui2baO6mzoDIg0S0XTIby+S+o3H+KNzj/yrW7IYDqHGzbz?=
 =?iso-8859-1?Q?AE4CyKlrtHvQIsfqShwJZXefveAJZC2P8IrHsg/lBqbwBPPwM7DqFDEPbg?=
 =?iso-8859-1?Q?YQFvEaYKg5pnqiQtHcmiVSXrVkk06fAS+8yh8wUrgTMMbVvmLioPY8C3tl?=
 =?iso-8859-1?Q?r80Mn7iCzJoH+NepL3KwQ5M4AfV2JLZT/DqdyveUQSXiFIhZs+BoykmUGO?=
 =?iso-8859-1?Q?5bFtYDDzRfLGF71Y5pBE5vh/kG189iiyo/17cd6R0JOj+36tC+Dt+qJnZa?=
 =?iso-8859-1?Q?cchkEGeoj0Vb5rXP8NQhzYyhmfhAdzLkBiAKpTjlBR1hLfxE1ke+PdSijL?=
 =?iso-8859-1?Q?+V+XZLosMi2QfLZyU/VZmgEyaARIoInXTZ4lDeBcQJQN4R0ITHo60K+w9q?=
 =?iso-8859-1?Q?Aw+0GuGSTvkUuGFEO3F+6bOKag8cYqDXVzqaly0OsbMCQa6C5KU1WYjTAn?=
 =?iso-8859-1?Q?X45ADtxAAdvCUkjOqlfjvRrx+0s14Yeg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?pHKdjv19lRDVimy9BIajRflQvoRJXxIJXjrAcSv+bwB/xPys/V8yEZnjU4?=
 =?iso-8859-1?Q?FXConvRXLQFGmOdej19AHEX19wWFnEcg9fgS1j25mnZNGej+5ZtjnN7uB/?=
 =?iso-8859-1?Q?idbuCQt0fdbXHYaf6AIKk16z/xPrPwSMb5xONwAW42ubb8Kk9klQzYR2q6?=
 =?iso-8859-1?Q?8MaIr7gdeKsAqFQjgt50KbOkzXQ+cLM5oSNVZcB1cFgVamH8PdNJ5jVbMb?=
 =?iso-8859-1?Q?7sXKNsxUKd+EIODhxvBA9thvbBF+QavWunoBfzXqdsSYMg92/2ss01q7HT?=
 =?iso-8859-1?Q?67hqCFH+icLf1gR1bmH2V2qVwVr1RzuwYxnJJjU38eQ1XTusyAUaDLgAe0?=
 =?iso-8859-1?Q?04UfQx1dLnlVudgLXAzZrkCbHuQnMi/b7L37H77kL/o8zBOxD/TG9huQ5y?=
 =?iso-8859-1?Q?phY5YC2lvBp6zdl8CIdZcnyq6DvO9N9beqLvgiyWHRquLt3PpoHl6slATq?=
 =?iso-8859-1?Q?zuJXKUakGKSIG1btaletnCB0lI5C5XjN8CfkB3KBHN9ZHFB+I4lsaMZrlj?=
 =?iso-8859-1?Q?W4Yds2xPQtHice40iDBxVtiVwhLB7PFg6Y+TEECw4fa46N+RlNOPt6blUH?=
 =?iso-8859-1?Q?4QthoBOWFFs4nGQCXbF04UJ90lXPn/u6bDbpkERBXwE/fdVSTcr88eUZS7?=
 =?iso-8859-1?Q?3rAUUFiMlip18A+Ds0hWZX6cCE3ZtWN1NLrotCB1nXei7fPj8sOBY0Ld6v?=
 =?iso-8859-1?Q?HkitYK1w5u7HJ2EPxQLvOOEZNmNddp5VCJw+mDqXsbS3N+g4n5KjSbsibN?=
 =?iso-8859-1?Q?Mxa4h2xQYj+EgG8vc13ATZw+Zbjpv0NV8IbNnybCyWWuI3TKBYlbOIPAKl?=
 =?iso-8859-1?Q?QiOsIV35eOFyTzBzvRRygOlr/m1gftEltT7I9NGzFRLIQ6hVTHBQKCtV3K?=
 =?iso-8859-1?Q?jpASDO/uxEDGirXLfLcPtvBXt9FdcSMuel1+I+v15Ap/ytuLKjVKjsF8TJ?=
 =?iso-8859-1?Q?LQgUj1QRTczP/frlYlD/V+ATut6TgwXEG8+lFh8SK7j+Wcgf2Cyh5592Xv?=
 =?iso-8859-1?Q?GtbRWIqqUHWMBZ2eNYFi0VVdfs04J1mDGd1b6vCd9wCa3xMzde5sd3JEL9?=
 =?iso-8859-1?Q?wq4YX6Tabz8aj6uWcecl8EPrCGiR1/ieRkdQevBFjAOIkblTtgrGlFOI/g?=
 =?iso-8859-1?Q?laWGluFD8mt6shQ9IybhxOiP0Y4IFzbDNp3U5tZTtL8bIUe9m0p5NXG3FS?=
 =?iso-8859-1?Q?NxKMk8V0utrQSSGmwmR/iL9XzhUUKvIU1f+WB3KB3t3+ai5dpbig2dmZaX?=
 =?iso-8859-1?Q?+gD4qmShKGo69W0BiwFluclZVQ4ljHzUvgI46cA6qQJLGc15I1HVnQAKGj?=
 =?iso-8859-1?Q?3GpvDlOkrMbxK7i/dZrK8D9KpaVGv9PsVRnVuvShqziLSN7V1G39IsYDAN?=
 =?iso-8859-1?Q?Mz2pm5D4m3ZFOTrYB470u1BsdQZmQPt7egX9tqnCt06vbmt/B5X+QzY7fY?=
 =?iso-8859-1?Q?WTom0tNsZNGmTccay8imFzuJ1whH7Ydm010SdGAZeZNnEMwvXtezGt3Pyk?=
 =?iso-8859-1?Q?KHKRTNm3JDHMB+g5jhzFYp2DktrzNCubHyR6NlulfTQ745tB9malsk7Lc3?=
 =?iso-8859-1?Q?McgrYCV8ksYDomB71z8zknhsCIDlWkrixo3SRrVAewCAtkYgLmgv4xFt5L?=
 =?iso-8859-1?Q?PpasjrjFFHuZ+1L1QBEGpbeK9Ha0fS/muzTUgQDad69tNLwSriT36mfA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b1086a68-4428-42dd-0651-08dc97b039a5
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jun 2024 20:23:51.9441 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6iXbZidQ+nHse6GVpdeqM8Vw+FsJkShMb5QYKMlCB96tZ/wxHs/nG/bqLThbQXWD/fHPwUzSjMTnCRbK0CJz9pdsnyTroLArblRln1NkDhw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6810
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

On Fri, Jun 28, 2024 at 02:36:16PM GMT, Rodrigo Vivi wrote:
>On Fri, Jun 28, 2024 at 12:30:57AM -0500, Lucas De Marchi wrote:
>> On Wed, Jun 26, 2024 at 10:42:24AM GMT, Matt Roper wrote:
>> > On Wed, Jun 26, 2024 at 01:26:00PM -0400, Rodrigo Vivi wrote:
>> > > On Wed, Jun 26, 2024 at 05:17:41PM +0100, Matthew Auld wrote:
>> > > > On 26/06/2024 16:53, Rodrigo Vivi wrote:
>> > > > > On Wed, Jun 19, 2024 at 03:31:27PM +0100, Matthew Auld wrote:
>> > > > > > On BMG-G21 we need to disable fbc due to complications around the WA.
>> > > > > >
>> > > > > > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>> > > > > > Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
>> > > > > > Cc: Matt Roper <matthew.d.roper@intel.com>
>> > > > > > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> > > > > > Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
>> > > > > > Cc: intel-gfx@lists.freedesktop.org
>> > > > > > ---
>> > > > > >   drivers/gpu/drm/i915/display/intel_display_wa.h |  8 ++++++++
>> > > > > >   drivers/gpu/drm/i915/display/intel_fbc.c        |  6 ++++++
>> > > > > >   drivers/gpu/drm/xe/Makefile                     |  4 +++-
>> > > > > >   drivers/gpu/drm/xe/display/xe_display_wa.c      | 16 ++++++++++++++++
>> > > > > >   4 files changed, 33 insertions(+), 1 deletion(-)
>> > > > > >   create mode 100644 drivers/gpu/drm/xe/display/xe_display_wa.c
>> > > > > >
>> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
>> > > > > > index 63201d09852c..be644ab6ae00 100644
>> > > > > > --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
>> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
>> > > > > > @@ -6,8 +6,16 @@
>> > > > > >   #ifndef __INTEL_DISPLAY_WA_H__
>> > > > > >   #define __INTEL_DISPLAY_WA_H__
>> > > > > > +#include <linux/types.h>
>> > > > > > +
>> > > > > >   struct drm_i915_private;
>> > > > > >   void intel_display_wa_apply(struct drm_i915_private *i915);
>> > > > > > +#ifdef I915
>> > > > > > +static inline bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915) { return false; }
>> > > > > > +#else
>> > > > > > +bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915);
>> > > > > > +#endif
>> > > > >
>> > > > > please avoid the ifdef I915 in new patches as we are trying to get away from that
>> > > > > in favor of a clean separation.
>> > > >
>> > > > Can you please share an example for the best way to do that here, with clean
>> > > > separation?
>> > >
>> > > hmmm... looking more to the patch now...
>> > > I don't believe that the WA/RTP rule from Xe should leak into i915 to be honest.
>> > >
>> > > It looks like we are trending to a separate intel-display.ko that shouldn't depend
>> > > on driver's declarations like this.
>> > >
>> > > Ideally I would also say that wa in the display code should relly on the 'D'
>> > > (display-id) of the GMD-ID. But I see that this 16023588340 is for the 'G' ip.
>> > > So, perhaps the display code should inspect the 'G' id from the device inside
>> > > display code?
>> >
>> > This is one of those rare cases where a GT-based workaround also has a
>> > side effect of "oh, and you also need to disable FBC in the display
>> > driver."  So as you said, the need to disable FBC is entirely tied to
>> > details on the graphics side of the IP, not the display version.  :-(
>> >
>> > So there are two options --- either you duplicate the logic to decide
>> > whether the workaround applies in both the display driver and the core
>> > (i915/Xe) driver, or you make the core driver the authoritative decision
>> > maker for GT-based workarounds and give the display driver some way to
>> > query the core driver.  The patch here is following the latter approach,
>> > and for the short term future while display code just gets re-compiled
>> > into each core driver, this seems to be an accurate implementation
>> > (always false on i915 builds, and querying RTP for Xe builds).  As we
>> > proceed with moving intel_display into its own standalone driver, we'll
>> > need a more formal display<->core driver interface and it will probably
>> > make sense to have a formal "query a GT workaround" entrypoint as part
>> > of that interface so that we don't need to keep adding more one-off
>> > "needs_XXXXX" for future workarounds that wind up in the same boat.
>>
>> agreed. Let's not leak the decision on other places: it belongs in the
>> core driver.
>>
>> When there's the proper separation, then I believe we can just copy the
>> root_gt->wa_active.oob over to the display struct. And then implement a
>> macro on the display side to do the same check. Or we may have a set of
>> function pointers and one of them would be to query if a WA should be
>> enabled.
>
>Fair enough. Perhaps we could at least define this in i915_drv.h so we implement
>in the compat headers and avoid the ifdef I915?

yeah, I'm fine with that approach.

Lucas De Marchi

>
>But anyway, if this is something that will remaing for later for the
>separation perhaps one extra ifdef doesn't hurt.
>
>Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>
>>
>> Lucas De Marchi
>>
>> >
>> >
>> > Matt
>> >
>> > >
>> > > Jani, thoughts on this?
>> > >
>> > > >
>> > > > I can add a new .c just for intel_display_needs_wa_16023588340 and move it
>> > > > there, which then avoids the ifdef I think, but that then adds an entirely
>> > > > new file just for this tiny stub. Unless I can dump it somewhere else?
>> > >
>> > > One temporary workaround that I see without the ifdef I915 would be to
>> > > declare this function in i915_drv.h so in xe you add to the compat-i915-headers
>> > > instead of creating a new file there.
>> > >
>> > > >
>> > > > >
>> > > > > > +
>> > > > > >   #endif
>> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
>> > > > > > index 67116c9f1464..8488f82143a4 100644
>> > > > > > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> > > > > > @@ -56,6 +56,7 @@
>> > > > > >   #include "intel_display_device.h"
>> > > > > >   #include "intel_display_trace.h"
>> > > > > >   #include "intel_display_types.h"
>> > > > > > +#include "intel_display_wa.h"
>> > > > > >   #include "intel_fbc.h"
>> > > > > >   #include "intel_fbc_regs.h"
>> > > > > >   #include "intel_frontbuffer.h"
>> > > > > > @@ -1237,6 +1238,11 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>> > > > > >   		return 0;
>> > > > > >   	}
>> > > > > > +	if (intel_display_needs_wa_16023588340(i915)) {
>> > > > > > +		plane_state->no_fbc_reason = "Wa_16023588340";
>> > > > > > +		return 0;
>> > > > > > +	}
>> > > > > > +
>> > > > > >   	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
>> > > > > >   	if (i915_vtd_active(i915) && (IS_SKYLAKE(i915) || IS_BROXTON(i915))) {
>> > > > > >   		plane_state->no_fbc_reason = "VT-d enabled";
>> > > > > > diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
>> > > > > > index 0e16e5029081..f7521fd5db4c 100644
>> > > > > > --- a/drivers/gpu/drm/xe/Makefile
>> > > > > > +++ b/drivers/gpu/drm/xe/Makefile
>> > > > > > @@ -34,7 +34,8 @@ uses_generated_oob := \
>> > > > > >   	$(obj)/xe_ring_ops.o \
>> > > > > >   	$(obj)/xe_vm.o \
>> > > > > >   	$(obj)/xe_wa.o \
>> > > > > > -	$(obj)/xe_ttm_stolen_mgr.o
>> > > > > > +	$(obj)/xe_ttm_stolen_mgr.o \
>> > > > > > +	$(obj)/display/xe_display_wa.o \
>> > > > > >   $(uses_generated_oob): $(generated_oob)
>> > > > > > @@ -192,6 +193,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>> > > > > >   	display/xe_display.o \
>> > > > > >   	display/xe_display_misc.o \
>> > > > > >   	display/xe_display_rps.o \
>> > > > > > +	display/xe_display_wa.o \
>> > > > > >   	display/xe_dsb_buffer.o \
>> > > > > >   	display/xe_fb_pin.o \
>> > > > > >   	display/xe_hdcp_gsc.o \
>> > > > > > diff --git a/drivers/gpu/drm/xe/display/xe_display_wa.c b/drivers/gpu/drm/xe/display/xe_display_wa.c
>> > > > > > new file mode 100644
>> > > > > > index 000000000000..68e3d1959ad6
>> > > > > > --- /dev/null
>> > > > > > +++ b/drivers/gpu/drm/xe/display/xe_display_wa.c
>> > > > > > @@ -0,0 +1,16 @@
>> > > > > > +// SPDX-License-Identifier: MIT
>> > > > > > +/*
>> > > > > > + * Copyright © 2024 Intel Corporation
>> > > > > > + */
>> > > > > > +
>> > > > > > +#include "intel_display_wa.h"
>> > > > > > +
>> > > > > > +#include "xe_device.h"
>> > > > > > +#include "xe_wa.h"
>> > > > > > +
>> > > > > > +#include <generated/xe_wa_oob.h>
>> > > > > > +
>> > > > > > +bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915)
>> > > > > > +{
>> > > > > > +	return XE_WA(xe_root_mmio_gt(i915), 16023588340);
>> > > > > > +}
>> > > > > > --
>> > > > > > 2.45.1
>> > > > > >
>> >
>> > --
>> > Matt Roper
>> > Graphics Software Engineer
>> > Linux GPU Platform Enablement
>> > Intel Corporation
