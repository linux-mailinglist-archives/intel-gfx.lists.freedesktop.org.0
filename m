Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KO0qJFB3emmE6wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 21:53:36 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0705A8DB5
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 21:53:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8253710E770;
	Wed, 28 Jan 2026 20:53:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cDKL6FcS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D881C10E76F;
 Wed, 28 Jan 2026 20:53:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769633613; x=1801169613;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=/TZumobF42D1VvR5epxA0jogBltXJp8G6kyoTijXKr4=;
 b=cDKL6FcSBXqE1uabeNMfyABSec35aiw9yalf6FhtlJuGu8JJ9iyPUprj
 dtRvGBSgzNHnnGjzZ5n+f3+9RA1Y/B5H6/o5LF3cezMLM4ZjJopcdrVUQ
 YoktcpV7AjBJQoWFo7lS5xhcsNLdez7572r8SvXVDu5YTPYEEs/GgYXl7
 iHyyMs2YyqazdMRZG0RQIZvJdPI2k07ixEU5gxz5bNTYBbdlVaFJqz4Dq
 3zFhuqIdFgXRMHQAccfLBXmAxLoXcRFXyCRad+deAZtqaYIrj9ZAK/qCD
 mMQvgwi4C5CqlUICNU80xJMG0i6e5lm6kW/6/5DuEijrD+WDKyvGoH3bE Q==;
X-CSE-ConnectionGUID: eGGVggv5SFCZum5Jlm4Vvw==
X-CSE-MsgGUID: V6VJM4i3Qoq5GyXDrJaFPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="74482465"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="74482465"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 12:53:33 -0800
X-CSE-ConnectionGUID: eRsoVpvYR+Wi/onW5x0xwQ==
X-CSE-MsgGUID: gWk4pghUS2iQtE6JTFb3sA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="212917128"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 12:53:32 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 12:53:31 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 12:53:31 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.4) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 12:53:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qxkmea5b3yv90kTkxfRLzVJjjmouvWIgYq0Pp4sJTxvOlsWVSX3pyGMbifyk/HE8vUMMBu2RBIcsoNgg2Nopo+6FZzsxj3VakY1ga2dpNjxMnbqbCTJXO0fk/hvpwPvCkX1y89tNBRaDyKhbLoSKTJ1DdPV/rFlqSPQs/NCiHbPfDgiSSsiVHejcgRO1hd2GevoLud57sBcVWFh5wGqzVfiNcHgt2y1Crj0p6phWQ9/mxcAZUHs4Lnl5DrmC4yFwq2K78hW4dlzD8VZYiCry6wpH//YasWdX5vZLtqbeo4975AKLzXgVem8SmyREMP0aPfq8AQ/XdgyTiLnFQWExxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6ohiIUoUs49uiGEwkWWBZX/OONkztHvlwzo3x9d8H2o=;
 b=JtQYy2QXqWuVEnk/YkBizwage2Kd22LkIspwdRzagCXRgKEOh5VazT18uzxbIFmJ7FfqgLuMjAT03qcgggViqxCnchlEbW5e9c+zGcyPuB0ZHPkiJYCVAbmFU72mY1HKEUFdj4q7LMpcDAz28r7G7wMFxSqVnBIN5kt+FmUAoF9sN5ZMB2TkIrAZbryvcnk3V68zGqLiCUJpZ7P6UezEujLnf5N8yZa//x7Zo6HXhFsBp3z+DZ2hUYz79ry2rrJGeGiE2fqD8/ugEiGYtI/RGGSPbZgF6zDZrvepu1ITD6EFC4w+uFYBDdqgD1AjdUNfp4heBZsIEM0a/KmB9hw00A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CO1PR11MB5139.namprd11.prod.outlook.com (2603:10b6:303:95::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Wed, 28 Jan
 2026 20:53:29 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Wed, 28 Jan 2026
 20:53:29 +0000
Date: Wed, 28 Jan 2026 22:53:24 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, Chaitanya Kumar Borah
 <chaitanya.kumar.borah@intel.com>
Subject: Re: [PATCH 16/16] drm/i915/display: Extend the max dotclock limit to
 WCL and pre PTL platforms
Message-ID: <aXp3RIoDVWKn7sQP@ideak-desk.lan>
References: <20260128140636.3527799-1-ankit.k.nautiyal@intel.com>
 <20260128140636.3527799-17-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260128140636.3527799-17-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVYP280CA0035.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:f9::28) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CO1PR11MB5139:EE_
X-MS-Office365-Filtering-Correlation-Id: 65a44898-7b66-40d9-ff1f-08de5eaf4a9a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?20G+n6bfBdO8uwaVgatZvNzoqq0z+Q+9RP39nnssxV9Gpe+SpyqXWBPdgs5R?=
 =?us-ascii?Q?rAz6SP4GAyIMni4Xu34GDF9fVbr2ICLfHm6bMcERHEPRmW7adRhcWg4DuQVI?=
 =?us-ascii?Q?CzioNojPkWZc8r17eJsHQBBZb7K0fbIYZycdV617/1FDdH9UA1oCJjAcbM07?=
 =?us-ascii?Q?lc+cxEFELWIT5BCTq8AdKhReFsZoF6sTOSY3J8Ft4ebwhj+DIItK9VBIifCn?=
 =?us-ascii?Q?uYvgLHr1Z+kCJSg6DLV/Oa1Xi2owaYhzl0lBiL680MwWEjOlsag1KhKBbwzh?=
 =?us-ascii?Q?hD6XtkAgJ7QcL6Yw/iB+hHpDAREE+YsO/QI6jknj8gA3YsYZuw8rRyndChk5?=
 =?us-ascii?Q?WZZSGt8oXTDO/ToSS6FhkdmdglEd3nOGikrPIjkK1hlSWhSqm3ANZDsROETK?=
 =?us-ascii?Q?rQwywW/HEuqnLlDBWfNzh9nnDpcIG+xai/uJt0cnyNIKK929BGg94EnVnLon?=
 =?us-ascii?Q?W70E2GNnkD3+3Ik/QoTGnjzHVz/7Mfb1O6fUXA8rAZnhLfzHC4tFj+rpGzG+?=
 =?us-ascii?Q?IAxNprW8D6ZbUxiApV27xR90vHIvWNDt39rtf1rwyREap8nXcWYzTitkQGfC?=
 =?us-ascii?Q?/4OabmlRlTPYrL8WFgn3AyLSuK8tM1cXLkJbSZ4x3bepT6ogmesbb69QH62s?=
 =?us-ascii?Q?OgX7ow1vx1ZLZPY74GRdPBkpuud7Psrvbo2evM44otX7cfOqWSzXIjfS+etV?=
 =?us-ascii?Q?Am85HWviCLot2fL2E3S5UPh2HFIXV/Y8gwZ/3n0WeXteJRWQwHFgkq+fh2W6?=
 =?us-ascii?Q?pUcnZxz4FBoEoM4omAPzEZViI7Sj7rtGAn89hJBD877EwsA6YYeokXXbcXsP?=
 =?us-ascii?Q?NcV6URXD/JNL40OGQF1hX2if4LyTlSHkNU8YhC/zAJowd+am7K/7wbY7qGCb?=
 =?us-ascii?Q?04kTMb5gGgxIOf4AXwk0TL4QGkSNhUDi/ZrgU6/qxK4jp918uVBE4+0KRhbz?=
 =?us-ascii?Q?sqRtGIsL+0iZGbLxNptYzCd9El9pJWPEnTnrdWNBc7c4FcTMjYn5K7ug6/l7?=
 =?us-ascii?Q?FnLW1KB4Ff2EI5btM7a71ZweDHQRmVmloK6fg7ypqNVPGsAi2pnTREBzaWAV?=
 =?us-ascii?Q?FarKEyQ8JWQSvbncxIk+2UOwUoFKrVnKUyypQk4IRlbe36UOUs2VS9jSOk26?=
 =?us-ascii?Q?FeF6u180+6MVAtN3hws5cRKoWGlgKD4FA7y2/zMAAPlaTAch02HF5cyBk0eP?=
 =?us-ascii?Q?HZTizQl/eXPUa52rTS1roJTNYlmQWSi3HLXwvdADqPB50gGlIbEunX49n1N+?=
 =?us-ascii?Q?vII22yRDVSOvHr+YgFK9959QXr+DYosh+yp4uXHaaSGkzD2GYkN5cGff1WQy?=
 =?us-ascii?Q?0cVnn1Mls9GLpIbIFnq8kU3f8/UF7VWDKvbb7dbCjkR0y2TkEGQr9LeyIZSg?=
 =?us-ascii?Q?XGOaRdPqWmnLS0miguB4B8fOXgBJhG5JkzYkRJgFMFUvGxzbyBfGjvohG+Y5?=
 =?us-ascii?Q?PB9yi5WJzqBCDan2uFvlw8s3M7JX84sFQBQo1tag8NK2sFmvcMkwMZ0EaXJV?=
 =?us-ascii?Q?kqYxztcUUvQI9qnpw3H7ICcsJ8S6ODy7TEAWOwlFD7+Ehbzrc81n4FZrhmiw?=
 =?us-ascii?Q?RhArnV35E5yfuSRUbaQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ahC01tuIhB8EyIFx9QsgvtQuUIvg/FsDAl3+xiRHmGqubaIlt8n0pBvFx1WD?=
 =?us-ascii?Q?i9OR4zSCumbnsuNdH1Guq98dlNok4aBOZ6RE0Hcx4MtmhrGpM/pbQKozTotH?=
 =?us-ascii?Q?HuKybpJUeG2mAbp3ekIvJskwHui5F8TYAqvxOqZwkSkH+8735Q76jodXvUMw?=
 =?us-ascii?Q?1rW2GZEw1ob+EWtlsFGdU2lrrjz4ha5XLeeO67uyTcxnxSKUh8je77P8TZlP?=
 =?us-ascii?Q?88fGQL2lfiKLELg/sUkiE8J6/Zkphr/lJUCeC+NMyUbYVMn6ojYmA8d31fxQ?=
 =?us-ascii?Q?5N0Wzknw5YfG2SLlS748EUk95lMRxScvHYqZE3Nh9a9qMWYLqsM7y21D7H8d?=
 =?us-ascii?Q?A0sshrQQGDKabjWzbMzwwOA9QAVpmqTLmMgK7tdQq7DAcUK+SYUuPmqRjL76?=
 =?us-ascii?Q?h0nZ4bS0OWCbdTjJo2plp7+A/BzHlOVhTDvyJ7KijLdp+WDHBx+ULXLT6f6M?=
 =?us-ascii?Q?xMgbGS05D16t8mju1KUuZBseqpH6UpNtFd95cwO6NXlIui5B2WUa8TOIlqc3?=
 =?us-ascii?Q?InbOApatVntC0c5iCyiRQJk+ILMh82YXR3xeZByn3ydPx8aYG/8a46KKq9mB?=
 =?us-ascii?Q?aAxIXQR6DlZjM0RiYK9YmZeU6gouz4FqFYu2snj/21WOkW76pWrQCTmToURF?=
 =?us-ascii?Q?DUxnVvIx/KYHhbhfJ+5WgJZYaeLxq2l1x2J/w2cAytUUEfj0hmwVWeZTqXOg?=
 =?us-ascii?Q?TeiGIzw1L79X8t2YoMS3q3kf1epGAB+SwsvxX14wyPLOL361gYCgziQtV5Lb?=
 =?us-ascii?Q?N2hLht34zeIJJV49xyC9sAxRb5LGs9034qnucAIx5moDs/c3TZuQJLjV3pPB?=
 =?us-ascii?Q?i957maxjNHYbao9KuzqZbmi2bYOQGeKsz+RuxKxo0FLELEZF9MX6Ue3o3LYM?=
 =?us-ascii?Q?4UzX8w8zL/GjhQHuxY4eQxkrVTcowHefHGnpBPmEyvbb4XB2GIJ9OUv/wNBv?=
 =?us-ascii?Q?DW0uQ7VL65dFRWzbGpAxScNt4xqX9v57QllGktcgXMZjQivPx/N89nLVXe/G?=
 =?us-ascii?Q?kdXDr5FWjZsdHv6D3d+gwVjy33qDPLqeRnfJsMI5I4eAq5dfF4J6LPAENIrs?=
 =?us-ascii?Q?/nm09865pLngeWWt4iaP42qRk0Qn4ds5iIhIiCmgjsHhVq5mO1RoXCUyPB9k?=
 =?us-ascii?Q?GLBBAwfRzKmaIVmSAu3zmKNiJSVQMT5pGDMxY2hsXW04nAcluZLnFOFI8xT6?=
 =?us-ascii?Q?MUZiNYKy4YLd0TioYG4YmXlWzQME/oTi/Q1YbLjmVezomQ39kRsis+XkF7MD?=
 =?us-ascii?Q?JETqX3dNRYHYirVC24d/62iK1/eXqb7ZA4+ON/F3K6W5zBBaG5EYAwg6ze6H?=
 =?us-ascii?Q?BJMrc1ZQMuQdr18boExqZtkCwp6KKUzEjMPy6a/VbU90OcglRwDXwTORoPiq?=
 =?us-ascii?Q?tPdl8z49uhOY3o02EbmU/8BNRri80JVh7l98oMuYNXwLvk6hn/07PSEmilHY?=
 =?us-ascii?Q?mXOihnLVTKTaxRkWQRFJJ2eX8hGnD8+gAq+saJP+7bmM+UR+Xxpgg1LzX7qc?=
 =?us-ascii?Q?nUGQgPKdRH64z4P3JiMCLW6mB0usSov9tmNCyKIoXBr4XhILkz0eG6QvV568?=
 =?us-ascii?Q?t3JNjl7EKwjSz9d3rWEzvVFcXzmnIKtIYdJhgpYSHUD4EiErgAK74MDq+Q17?=
 =?us-ascii?Q?ywhxQzN99G9bzl5R5sROd5W85cqH0C9TUycQxWuk2oUthQnxCWMY9SGoKECE?=
 =?us-ascii?Q?jy391gHEeNe3Bs8NMB7VBGv5neKOheCEiMW8LzObdRw+5vhQBEY+b22qxnvI?=
 =?us-ascii?Q?bZ1/ngc9iA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 65a44898-7b66-40d9-ff1f-08de5eaf4a9a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 20:53:29.8201 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pg8uFAAno1UUp91sgrCWbimLtsh164HrszTv2tETCD4VrMvmTXEudwmkpi3N+s4UDVqllGUTScd5HsaJzDIY9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5139
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,ideak-desk.lan:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: F0705A8DB5
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 07:36:36PM +0530, Ankit Nautiyal wrote:
> From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> 
> Add upper limit check for pixel clock for WCL and pre PTL platforms.
> 
> BSpec: 49199, 68912
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

I'd like to ask to merge this one patch separately from the patchset
once it's clarified why the limits are not used in Windows for ICL-MTL.

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 9cfeb5530fd8..2cd950b57918 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8006,8 +8006,14 @@ int intel_max_uncompressed_dotclock(struct intel_display *display)
>  	int max_dotclock = display->cdclk.max_dotclk_freq;
>  	int limit = max_dotclock;
>  
> -	if (DISPLAY_VER(display) >= 30)
> +	if (DISPLAY_VERx100(display) == 3002)
> +		limit = 937500;
> +	else if (DISPLAY_VER(display) >= 30)
>  		limit = 1350000;
> +	else if (DISPLAY_VER(display) >= 13)
> +		limit = 1200000;
> +	else
> +		limit = 1100000;
>  
>  	return min(max_dotclock, limit);
>  }
> -- 
> 2.45.2
> 
