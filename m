Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5H1+DydXVmqv3gAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 17:35:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB2E7567B6
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 17:35:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="RNuw/abX";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0788D10EDC6;
	Tue, 14 Jul 2026 15:35:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D578410EDB7;
 Tue, 14 Jul 2026 15:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784043299; x=1815579299;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=d8C+7DrYalDMncG2YO4c7XB2tUSHEaGHnAtoMCoFRZc=;
 b=RNuw/abXZLuLJFshDr6Z0vSs65lNbkHll+s7QwtHiLl+RkHiJ0zh9oyJ
 z1OwmEFQulrIHpbOezBz1zwS+h0dO88+17eSAB7O2U8FxvYCyJWKU3OaR
 X5A6ae4NPOiOUFlABUhPOxetMn1iJSylxR47YCUiNlxb9pxOljtC10z2r
 H22jCuqc6HGpo+DAChwwsJjQpOK8jIBYVp7JlZLGmsnq0ZZq7N92Y0rs/
 CYHX7IHxZKwwYPZwTor5k6ma6TJ4yPF70b1tibVNE4RbN5gaT9R1k6yvW
 9W19AnLMYyJuwx5usvv9DL80hC50DQVum34TZsDpj28gcKcQan+jWOiKx A==;
X-CSE-ConnectionGUID: Cf/QWRxQQjeU34ewWVhQYw==
X-CSE-MsgGUID: 8RZEUJr1S2Cw1LJc5ocFQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="88491070"
X-IronPort-AV: E=Sophos;i="6.25,164,1779174000"; d="scan'208";a="88491070"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 08:34:53 -0700
X-CSE-ConnectionGUID: kaM7cIZhTQiCFdW4QxR12Q==
X-CSE-MsgGUID: W1uM54MMSpmwIKmmmjqyGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,164,1779174000"; d="scan'208";a="257845857"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 08:34:51 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 08:34:50 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 14 Jul 2026 08:34:50 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.60) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 08:34:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x+2n4DAV4u4IRwa6pcse6fti4QSKgalMWVlJQuvYalFkxo9FhxFj0BGfsiqnk4KHZpB83ZgOuEpuJffI8JtqfTmkP+YUcms1CeirzkAhpHu07cayVVSzUwD9HdPDuZR6eAFAPtrsjAi0SpQc7ff1nqoaI6ctcjOQg3XuTyW+hZjT4dKz6HyjaeTmSSi+rAbtvQctINuJLKzGNfqZ++huHo7cgm1714hS7ywzHctBekCXVCqFFmAhwXFU4iGLZN8ixLQO8P/25dZ6qNACRpLo6CimiIm7Z2hnzBmY3DVj3h8PUzvFbt2WLxgpG/KAH2izXfu//CWx0u+XwN+pfkgL8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gp0qI5UzDEjN8dKwugQR0dPR+/j4eFu8ck2MsWrFpgk=;
 b=vY/6ycinAur7hF+WKaCmaKN8TsNLseAupuIAckfpQrMhnRlqoaP3GSP29LxWmY8EZFy7ETEmOenZ1ev93zV5OpgRi+oBJ5rS2XOFCwxoTg+0q42FwXI3nycAoJ8NU8G2CINIrWvIEFp2AHw2av8bo4+wvelK/2sS/1ENtCQZiUh+UiIFxW9Imc3uVtkfkkWPVBMVqG5N61HvzyQRYVU6TiXYPkgXksnY4V9FW99/BNw9dXic24DMcq+PSVmnuvvqRSu2K99Gv/Wzp4m4pm7GD6zGCIrlW+XQ7HnsSC2ct2LMe+Hf87tBdofxIJ2EwlObUt5wY4vO7LEAXJbYVPDCiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 by LVUPR11MB9567.namprd11.prod.outlook.com (2603:10b6:408:39e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.223.10; Tue, 14 Jul
 2026 15:34:41 +0000
Received: from CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe]) by CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe%4]) with mapi id 15.21.0223.008; Tue, 14 Jul 2026
 15:34:41 +0000
Date: Tue, 14 Jul 2026 11:34:36 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
CC: John Harrison <John.Harrison@igalia.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "kernel-dev@igalia.com" <kernel-dev@igalia.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v2] drm/i915/display: Fix too few bits in transcoder mask
 variables
Message-ID: <alZXDLcIsUFOLp-J@intel.com>
References: <20260713234138.3861243-1-John.Harrison@Igalia.com>
 <DM4PR11MB63600E599CB8DD515C93430BF4F92@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <DM4PR11MB63600E599CB8DD515C93430BF4F92@DM4PR11MB6360.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR03CA0031.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::6) To CO1PR11MB5073.namprd11.prod.outlook.com
 (2603:10b6:303:92::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:EE_|LVUPR11MB9567:EE_
X-MS-Office365-Filtering-Correlation-Id: 49c28022-c141-4542-89bf-08dee1bd6b83
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|18002099003|22082099003|6133799003|11063799006|4143699003|56012099006;
X-Microsoft-Antispam-Message-Info: xmaVT9adpk/fOknfXPj+0SSw/05s80VpBHUkqJ7AKcd0GQZP3rVitr9DBKUNUqNV9fCF/iVyX982quiubuei/HZiSLav8opAlIbC1C7vf2G13zd8EzXl5ALI6ZN9U8ptEytPaWn0lh/KrR0S2YO82dAo3++lSMwS2mpGyD1/Hl12K58JQyTkGOH9z1IpREWqiZr9OOJdkaTE1lyYFOXhtaa+WNQQ+YYb4idhueLFimOQkejC2vqQbTG8Tga60dBfeZgkCU2XdvXVkx2gP851/DwxRjQyD3fuyh4zf4M1mGwl2ROlCNbgL11MzW5LxdJbG+ia2KWbsBWnqxBlhFshN7DM2NMGmCYXz/qjnk2PKaq6cutrMOUC7JHf4OuZvlmR+9VGuvUW7YLvQ7LlzXAmU4QFQXXaLtk2xmK4ALDO1ZTm5FkUFRK6EUwEmQYAR+ur65+O4kYBsZwTvxx3l+ux+4lWzUPit+3YtCHGJjNX47QK303kHqW3x9RvJzHmfsF1dVc2f1t0hyTg4DYJSKcMupPdBZe7YWcOr5eGXfr4nd4iwtI//QjKeZHI56L6y+ZrjsJV5dx0BoFUSkw5bPSAqkI72ZZNmEttrJWN+hOJAuq4c8cvPDv9mvWjIM9V9afNmfRyu07ilEl/I3xSkZsu2PsiCoA6jGK5FkaUsXNMRyk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(18002099003)(22082099003)(6133799003)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?eNacFmCFc5frJiTdQuqMx8G7EhO2SGILPi7sEzMqan99WlRMkYqHWmiQPiNV?=
 =?us-ascii?Q?mR8IJojfFEXbWD077LaA+FUAGQpjErtZ71fPjfFUQu7xHmPpV0F/OXqq5L2w?=
 =?us-ascii?Q?UZg/LH3tDOcHDOCz4GiKfwdGxneCdJaHHHVnk+YJTzHMU7/xOTYvQ78uKfVg?=
 =?us-ascii?Q?SKF3Jz17ElCrXeONf7dZtqmI08W8X8SUrByCDV+GPyhm8YLfOELnAaxdV/d3?=
 =?us-ascii?Q?k9fi3St1CzTI9ibm7cm1V/cPVwNErFhH6ULJJ2ur9DK04YVLs1fyGCExxW4h?=
 =?us-ascii?Q?LJQRHpznB0ijKollaoeGZKt5KvARuIdnzOD2gbfq6m8vD8NBNSBfSfKAM6WZ?=
 =?us-ascii?Q?ObmMgSzY/vinIbfhlWIYu37OGQ0ljjW3R0kzPOqM95x8/Wbx3CkLyTXRGUh4?=
 =?us-ascii?Q?bD+0ap6VDaGx0VvXKitnPzN4RBso/1v+992pRbU+lKiQKDCzicbfjpLMjoJB?=
 =?us-ascii?Q?Y2kwdtDMCZRsKaX8h6fqREyWxNZVzp1JgVFqCjgU9j+AcJAs0M/9tsfsiSio?=
 =?us-ascii?Q?VcZ/FolYRM6wvsb2wNjL9GT7UDAMgpWM+mutT+W8oDTWKqY8xvvxC9aB3DrL?=
 =?us-ascii?Q?QX5+5htESqeNuZDk3TnigK5fxRVGdKyXrdEc/2yq0AqwDGj3g53NL49akYLt?=
 =?us-ascii?Q?g9llhIFgBvYkfe5bfQiAQYqk8jDW5Pe+A4yzou49U/hv2mpx+gpx3Q0YoQhY?=
 =?us-ascii?Q?OvEydXgYM3jyF/9mt/F32/UqTYZZQuZG7kIYvaGXNPijoQwusFyrcbR6quNg?=
 =?us-ascii?Q?x6r4kGxJ9mp9iYAq6NWeRkV36pseOjrWfuAdJSiS9bjGTwuTJahQJYsWO+Ff?=
 =?us-ascii?Q?zpM8oqvFBocspGDbXHfE8+BoDRlm2tqq+pgaq17+go0NruhtWhimwN84OawN?=
 =?us-ascii?Q?i+LlZVgzSx5EJGBHiYG/wL+3yBfSXmhWmNbIYj8MwS2B6EfevRqr5X5XmAIu?=
 =?us-ascii?Q?JB6xoJM+k8hiqf5kVeAfZRwreVGcwLSHpSjFIEYE6kix//ykb40tjrk7MHf7?=
 =?us-ascii?Q?WQqY1678dZDLq4Ckt9AgIiTO89Tbuf2Or3ssmRHz0tN3A7s5bgcUjsKzQSKd?=
 =?us-ascii?Q?/F4v0Nd4VdEtcn6zkS32AFCZGTwOyPOcbaLatfEWZNDbNd+xSjpHvnjOri0p?=
 =?us-ascii?Q?kLB5GY3aYrky4KZnpQFWAUTtsULcIEUKSh2O9xTzilJk1F5k/Kh5yD2GQJhX?=
 =?us-ascii?Q?p+CZgUt72qxfb0UWGtlia8/xZl+yK7GxQ11dXvmF3/mgmfkXziBszHib5rtd?=
 =?us-ascii?Q?O6u7Cc5t1tJ64y/KpjosAHUqtz3++Vj5xoed2XmKKGW265dj6JMncJXhJYEL?=
 =?us-ascii?Q?lrUjCESwdA3rR4wdMf2/cpj+rByj7ajitvTJOQ8Z2ThCR5Z4s90bPTDyJjpQ?=
 =?us-ascii?Q?sqM4euZsIIJFw2XWP8AfhkatlyVyKcX5PdosIM/3YJ0HUMT/AChzRlgJspDn?=
 =?us-ascii?Q?vxWojqmiRCjqC513/7lPA4WfJSYb8CM6p0VnQbI9vxkIn7II9P/j7Q3WmA7D?=
 =?us-ascii?Q?ZApSG7fkoKNsDzlfA9QtX42zNYOhZXm3J89WBT99+BJGtGu5TNX/kygA6ZWQ?=
 =?us-ascii?Q?er3QgidDXVOaAn3AMITFxfLlzQs2malPgRHOB1rz3gRnk6LW4Ea5vmkL0deq?=
 =?us-ascii?Q?EzEb6zAxPumojp9zv3Kg1wp5quFTp2hupcp9FKDVmDfMrSEBSP+Uv3eegmDz?=
 =?us-ascii?Q?ERQBH85W6NFcYpcQBwx8v9IY3vTzH2Ohwv1TzaKKoymdPPA0TYsVfn/E9f+v?=
 =?us-ascii?Q?89U8QYKfZA=3D=3D?=
X-Exchange-RoutingPolicyChecked: PVy4x4KgD9feKvKJ7nYFuFY9rugQ+x+ObMQ122KeiN0DdzYIIlj25C1kpjPqMwZN6aBJrhPXiqx6R2BCaW5qfP2exs6+dnodsQ7WKnuKrpnsmWcNBCMHOblUgEG1WmXbzCCb4pTS0DePG0K5gIgkQ9XDm0YU9+ZCRu0MDQZj/hFhAe1Z4OgQMUslOdcC6LPnJACAWGFLgCm6vdoXiHK/qQQuu7J8tb7LV1sYoHbJL0aBEKUhpyOsVn2CfMqH29h7mGt7nmwwcBASt1+uyUvKW0G+fvRrUeFACk4sTw6l918ryQ+ymLPB8O+ZQ+X0VU6qOPEllMVLAnTX9j4SYOrDMQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 49c28022-c141-4542-89bf-08dee1bd6b83
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2026 15:34:41.0937 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5Wi3IBk0SW2mplx4vFfPtl/G0aPUon+vkIfWhgbbNsPaHb/VthX7e2aISsOLdoHrfhG2NP3mb/UjViazblA5rA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LVUPR11MB9567
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:mid,intel.com:email,intel.com:dkim,lists.freedesktop.org:email,lists.freedesktop.org:from_smtp,igalia.com:email];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8DB2E7567B6

On Tue, Jul 14, 2026 at 11:02:04AM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: John Harrison <John.Harrison@Igalia.com>
> > Sent: Tuesday, July 14, 2026 5:12 AM
> > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Cc: kernel-dev@igalia.com; Shankar, Uma <uma.shankar@intel.com>; Manna,
> > Animesh <animesh.manna@intel.com>; Jani Nikula <jani.nikula@linux.intel.com>;
> > Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > Subject: [PATCH v2] drm/i915/display: Fix too few bits in transcoder mask
> > variables
> > 
> > New transcoder enum values (for CMTG) were recently added which pushed the
> > maximum transcoder mask beyond 8bits. The patch in question updated the info
> > structure's u8 to u16 but not any of the functions that process transcoder masks.
> > So fix those as well.
> > 
> > v2: Fix more instances (found by Sashiko)
> 
> Looks Good to me. Thanks John for the fix.
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

Pushed to drm-intel-next.  Thanks for the patch and review

> 
> > Signed-off-by: John Harrison <John.Harrison@Igalia.com>
> > Fixes: 789dda6429e0 ("drm/i915/cmtg: Add CMTG transcoder offset in struct
> > _device_info")
> > Cc: Uma Shankar <uma.shankar@intel.com>
> > Cc: Animesh Manna <animesh.manna@intel.com>
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org
> > Cc: intel-xe@lists.freedesktop.org
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c      |  6 ++---
> >  drivers/gpu/drm/i915/display/intel_display.c  | 22 +++++++++----------
> >  .../drm/i915/display/intel_display_types.h    |  2 +-
> >  drivers/gpu/drm/i915/display/intel_dp.c       |  4 ++--
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 +-
> >  .../drm/i915/display/intel_modeset_setup.c    | 18 +++++++--------
> >  6 files changed, 27 insertions(+), 27 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 2b7eb010511b..617106c68cb4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -4563,7 +4563,7 @@ static bool crtcs_port_sync_compatible(const struct
> > intel_crtc_state *crtc_state
> >  		m_n_equal(&crtc_state1->dp_m_n, &crtc_state2->dp_m_n);  }
> > 
> > -static u8
> > +static u16
> >  intel_ddi_port_sync_transcoders(const struct intel_crtc_state *ref_crtc_state,
> >  				int tile_group_id)
> >  {
> > @@ -4572,7 +4572,7 @@ intel_ddi_port_sync_transcoders(const struct
> > intel_crtc_state *ref_crtc_state,
> >  	const struct drm_connector_state *conn_state;
> >  	struct intel_atomic_state *state =
> >  		to_intel_atomic_state(ref_crtc_state->uapi.state);
> > -	u8 transcoders = 0;
> > +	u16 transcoders = 0;
> >  	int i;
> > 
> >  	/*
> > @@ -4616,7 +4616,7 @@ static int intel_ddi_compute_config_late(struct
> > intel_atomic_state *state,  {
> >  	struct intel_display *display = to_intel_display(encoder);
> >  	struct drm_connector *connector = conn_state->connector;
> > -	u8 port_sync_transcoders = 0;
> > +	u16 port_sync_transcoders = 0;
> >  	int ret = 0;
> > 
> >  	if (intel_crtc_has_dp_encoder(crtc_state))
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 214454f419e9..38763a6802c5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -3767,9 +3767,9 @@ static void enabled_joiner_pipes(struct intel_display
> > *display,
> >  	}
> >  }
> > 
> > -static u8 hsw_panel_transcoders(struct intel_display *display)
> > +static u16 hsw_panel_transcoders(struct intel_display *display)
> >  {
> > -	u8 panel_transcoder_mask = BIT(TRANSCODER_EDP);
> > +	u16 panel_transcoder_mask = BIT(TRANSCODER_EDP);
> > 
> >  	if (DISPLAY_VER(display) >= 11)
> >  		panel_transcoder_mask |= BIT(TRANSCODER_DSI_0) |
> > BIT(TRANSCODER_DSI_1); @@ -3777,13 +3777,13 @@ static u8
> > hsw_panel_transcoders(struct intel_display *display)
> >  	return panel_transcoder_mask;
> >  }
> > 
> > -static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
> > +static u16 hsw_enabled_transcoders(struct intel_crtc *crtc)
> >  {
> >  	struct intel_display *display = to_intel_display(crtc);
> > -	u8 panel_transcoder_mask = hsw_panel_transcoders(display);
> > +	u16 panel_transcoder_mask = hsw_panel_transcoders(display);
> >  	enum transcoder cpu_transcoder;
> >  	u8 primary_pipe, secondary_pipes;
> > -	u8 enabled_transcoders = 0;
> > +	u16 enabled_transcoders = 0;
> > 
> >  	/*
> >  	 * XXX: Do intel_display_power_get_if_enabled before reading this (for
> > @@ -3844,18 +3844,18 @@ static u8 hsw_enabled_transcoders(struct intel_crtc
> > *crtc)
> >  	return enabled_transcoders;
> >  }
> > 
> > -static bool has_edp_transcoders(u8 enabled_transcoders)
> > +static bool has_edp_transcoders(u16 enabled_transcoders)
> >  {
> >  	return enabled_transcoders & BIT(TRANSCODER_EDP);  }
> > 
> > -static bool has_dsi_transcoders(u8 enabled_transcoders)
> > +static bool has_dsi_transcoders(u16 enabled_transcoders)
> >  {
> >  	return enabled_transcoders & (BIT(TRANSCODER_DSI_0) |
> >  				      BIT(TRANSCODER_DSI_1));
> >  }
> > 
> > -static bool has_pipe_transcoders(u8 enabled_transcoders)
> > +static bool has_pipe_transcoders(u16 enabled_transcoders)
> >  {
> >  	return enabled_transcoders & ~(BIT(TRANSCODER_EDP) |
> >  				       BIT(TRANSCODER_DSI_0) |
> > @@ -3863,7 +3863,7 @@ static bool has_pipe_transcoders(u8
> > enabled_transcoders)  }
> > 
> >  static void assert_enabled_transcoders(struct intel_display *display,
> > -				       u8 enabled_transcoders)
> > +				       u16 enabled_transcoders)
> >  {
> >  	/* Only one type of transcoder please */
> >  	drm_WARN_ON(display->drm,
> > @@ -5880,7 +5880,7 @@ static int intel_atomic_check_crtcs(struct
> > intel_atomic_state *state)  }
> > 
> >  static bool intel_cpu_transcoders_need_modeset(struct intel_atomic_state *state,
> > -					       u8 transcoders)
> > +					       u16 transcoders)
> >  {
> >  	const struct intel_crtc_state *new_crtc_state;
> >  	struct intel_crtc *crtc;
> > @@ -6516,7 +6516,7 @@ int intel_atomic_check(struct drm_device *dev,
> >  		}
> > 
> >  		if (is_trans_port_sync_mode(new_crtc_state)) {
> > -			u8 trans = new_crtc_state->sync_mode_slaves_mask;
> > +			u16 trans = new_crtc_state->sync_mode_slaves_mask;
> > 
> >  			if (new_crtc_state->master_transcoder !=
> > INVALID_TRANSCODER)
> >  				trans |= BIT(new_crtc_state->master_transcoder);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index c048da7d6fea..8bd213db5e7a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1372,7 +1372,7 @@ struct intel_crtc_state {
> >  	enum transcoder master_transcoder;
> > 
> >  	/* Bitmask to indicate slaves attached */
> > -	u8 sync_mode_slaves_mask;
> > +	u16 sync_mode_slaves_mask;
> > 
> >  	/* Only valid on TGL+ */
> >  	enum transcoder mst_master_transcoder; diff --git
> > a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index ade7e51e7590..799dca78767b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -6583,7 +6583,7 @@ static int intel_modeset_tile_group(struct
> > intel_atomic_state *state,
> >  	return ret;
> >  }
> > 
> > -static int intel_modeset_affected_transcoders(struct intel_atomic_state *state, u8
> > transcoders)
> > +static int intel_modeset_affected_transcoders(struct intel_atomic_state
> > +*state, u16 transcoders)
> >  {
> >  	struct intel_display *display = to_intel_display(state);
> >  	struct intel_crtc *crtc;
> > @@ -6631,7 +6631,7 @@ static int intel_modeset_synced_crtcs(struct
> > intel_atomic_state *state,
> >  		drm_atomic_get_old_connector_state(&state->base, &connector-
> > >base);
> >  	const struct intel_crtc_state *old_crtc_state;
> >  	struct intel_crtc *crtc;
> > -	u8 transcoders;
> > +	u16 transcoders;
> > 
> >  	crtc = to_intel_crtc(old_conn_state->crtc);
> >  	if (!crtc)
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index ecc90e8faee1..507e2156d905 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -776,7 +776,7 @@ intel_dp_mst_transcoder_mask(struct intel_atomic_state
> > *state,
> >  	struct intel_display *display = to_intel_display(state);
> >  	const struct intel_digital_connector_state *conn_state;
> >  	struct intel_connector *connector;
> > -	u8 transcoders = 0;
> > +	u16 transcoders = 0;
> >  	int i;
> > 
> >  	if (DISPLAY_VER(display) < 12)
> > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > index e8730b5baf2a..e27a531e1aa2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > @@ -186,11 +186,11 @@ static void
> > intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
> >   * Return all the pipes using a transcoder in @transcoder_mask.
> >   * For joiner configs return only the joiner primary.
> >   */
> > -static u8 get_transcoder_pipes(struct intel_display *display,
> > -			       u8 transcoder_mask)
> > +static u16 get_transcoder_pipes(struct intel_display *display,
> > +				u16 transcoder_mask)
> >  {
> >  	struct intel_crtc *temp_crtc;
> > -	u8 pipes = 0;
> > +	u16 pipes = 0;
> > 
> >  	for_each_intel_crtc(display, temp_crtc) {
> >  		struct intel_crtc_state *temp_crtc_state = @@ -214,7 +214,7 @@
> > static u8 get_transcoder_pipes(struct intel_display *display,
> >   * For joiner configs return only the joiner primary pipes.
> >   */
> >  static void get_portsync_pipes(struct intel_crtc *crtc,
> > -			       u8 *master_pipe_mask, u8 *slave_pipes_mask)
> > +			       u16 *master_pipe_mask, u16 *slave_pipes_mask)
> >  {
> >  	struct intel_display *display = to_intel_display(crtc);
> >  	struct intel_crtc_state *crtc_state =
> > @@ -243,10 +243,10 @@ static void get_portsync_pipes(struct intel_crtc *crtc,
> >  	*slave_pipes_mask = get_transcoder_pipes(display, master_crtc_state-
> > >sync_mode_slaves_mask);
> >  }
> > 
> > -static u8 get_joiner_secondary_pipes(struct intel_display *display, u8
> > primary_pipes_mask)
> > +static u16 get_joiner_secondary_pipes(struct intel_display *display,
> > +u16 primary_pipes_mask)
> >  {
> >  	struct intel_crtc *primary_crtc;
> > -	u8 pipes = 0;
> > +	u16 pipes = 0;
> > 
> >  	for_each_intel_crtc_in_pipe_mask(display, primary_crtc,
> > primary_pipes_mask) {
> >  		struct intel_crtc_state *primary_crtc_state = @@ -263,9 +263,9
> > @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,  {
> >  	struct intel_display *display = to_intel_display(crtc);
> >  	struct intel_crtc *temp_crtc;
> > -	u8 portsync_master_mask;
> > -	u8 portsync_slaves_mask;
> > -	u8 joiner_secondaries_mask;
> > +	u16 portsync_master_mask;
> > +	u16 portsync_slaves_mask;
> > +	u16 joiner_secondaries_mask;
> > 
> >  	/* TODO: Add support for MST */
> >  	get_portsync_pipes(crtc, &portsync_master_mask,
> > &portsync_slaves_mask);
> > --
> > 2.43.0
> 
