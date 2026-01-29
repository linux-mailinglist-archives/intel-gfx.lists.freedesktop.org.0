Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QGdGHCfBe2k9IQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 21:20:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E45B4357
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 21:20:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8559010E26A;
	Thu, 29 Jan 2026 20:20:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PmeHVe+u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BB4210E213;
 Thu, 29 Jan 2026 20:20:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769718052; x=1801254052;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=/uRWbWEfGfg0D0L0RasvpcSg+b9Crg34jkT6LEGWclQ=;
 b=PmeHVe+ueFiEhEcrNXjhWmvl4q9dZNQrjp3CiPR7rQH4BD9qug2Tobte
 kR3LhROOFxZycJ2mwU5Tj2hr+DMLSXQuZ0lMJ2BOBAZCug5fwbuBI1uO6
 KuTg6x5BLDNXR9nNa8GzwS3HrMvxbyAkIuCdEZOspxMyi8Xk9AeG/v9lr
 4C3azgS7EgJmS6fmmkvvjV0xfRVD0SVxkHGwoM3geCt/CHmA2gjcfgRI+
 R6XmFDxlnxx/GCLzwj2goSdUXJ99k3rTpbzyjqmKz+iVFg2NRbTRyheLn
 Y14UrfdJmMiQnz5JijJTZsiZ6uJUhs9INNo7hhRRaj8pOJOtnnqk/oDsm w==;
X-CSE-ConnectionGUID: 7xXRpKyVQK+yWmh0f2phwQ==
X-CSE-MsgGUID: TQwsGm76T++j6eKoUS97Og==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="71007511"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="71007511"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 12:20:51 -0800
X-CSE-ConnectionGUID: Xs/yfTxnRoadAhoch9Ylog==
X-CSE-MsgGUID: VO4N5nq9Rrqj+wzQCZ/XCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="239397988"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 12:20:51 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 12:20:50 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 12:20:50 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.64) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 12:20:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pUXM66wqj86Iy99vXJZ1E1zikrE/oiNLF3u9iWMABlpeeLOnNXUWEJ4oEOvmr7r3Rj9oL9Xe0KsTFMQfEHbRuiwiD6Ecv/QNbDgVOCpX3RVlH34b1GWc8EbSW1pW1uBbAJUAZM9akYesgNSwlJ32fRrEr5zupHg0fIGgmHZVSR2l+NCd5qk00uk6n8+MlAh+xGjoP0icEsKS1fDyci+AJzlSW4tQeVs6YLtopBSAms5G4zZxPtCc2loCrbbi5h48xYu6FzZU5TEsoyiAySQMYsP76Wa8jrFJghbOCBbOaJ0/Sf6mykVBYtj+yO9JayrZ/QvUWnNJFkr/p35rn6dP+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X/6hQx01wmMlnlRWzIVwYe5F13CRgKUykGq8G5cxY3Q=;
 b=S8by949z84IjGz+LH3n6fn0EPfp1HUC0TG4EJ8jmXO7p4H7eET1PBJA8TCXXMB/xy+8OvoCksK224fpjSbhk+QnW08jLeY4qtr6AjXAKsOpiZXKoq2MnF9M+bmpXDslT6aTjKoVDOXqlbf6UkTMTRhkc+0Wsfl6O5oSxAEXXhTrJqngojsC/Gq5OAoMS2kEl3ERb+QoUdJZQZznmL7mQmQ2ZJiNiQe7yVi4rL5EPpXNq0PRg3tmy8hMP0b9UZo6uWVz/SzVv7mbpzZUDfygGCWnSaxFJrTaTdy+dhPitNcNDQ5eKEnQBA7wUyh0W0ynuDG52/dq5tVvZ+HL8Xoi39w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CO1PR11MB5043.namprd11.prod.outlook.com (2603:10b6:303:96::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Thu, 29 Jan
 2026 20:20:39 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Thu, 29 Jan 2026
 20:20:39 +0000
Date: Thu, 29 Jan 2026 22:20:34 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 14/16] drm/i915/dp: Account for DSC slice overhead
Message-ID: <aXvBEqaFv6iUI6ai@ideak-desk.lan>
References: <20260129171154.3898077-1-ankit.k.nautiyal@intel.com>
 <20260129171154.3898077-15-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260129171154.3898077-15-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF00023A0B.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::212) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CO1PR11MB5043:EE_
X-MS-Office365-Filtering-Correlation-Id: bfd1c7cf-1852-4c86-94f6-08de5f73de96
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?u2TkHasOBo3W35vRGQOUN5/mlR2SygUpf5EhTCyZvh4A2O1LPozlgM2iqtJn?=
 =?us-ascii?Q?z6oqO7fgRqRNiCXxZXhH7riekILC/4s8QFjyl1m+BH/l07sv6dW1gADJE+2B?=
 =?us-ascii?Q?FyVa2e5PL+vEMClbvjnNMETpddNTk44jm4EeSoCNx4gP58PUlJxzJSLr5BgF?=
 =?us-ascii?Q?JSQ7AiZIGDb4G4UE6aejiEQaKmptcGyCqNBQ94yom0RLSG2XPIzNu25cRuPk?=
 =?us-ascii?Q?KOGRyuG/414AIKjYMrC5LGjm6Tu3c3CJHAW1gBWSyTFoOk+lOfZLUzw3++l/?=
 =?us-ascii?Q?feJrT5eX/dxA4wfJm3hW2+676NOh5A5KaiOWQXdbQjq9TkFI1AzgmZ5PYMdS?=
 =?us-ascii?Q?tPvSayV1Gbg4fLH3d+z8LbKggqzOal/mxRX89/eVKqKLY2pnB/FNPKn2vaGW?=
 =?us-ascii?Q?8DZUx9QJE5FLbyWSpDRyawkvcS5NJLUdtKLZiqITCH2YmoCcg29T4cREvTZE?=
 =?us-ascii?Q?k+ALSnbrGy6oGW/1lOCsGHcGgHZD6V/VR9WqwlIexH2D6CQTyEcYL+4+j4Nq?=
 =?us-ascii?Q?dJYVCcYtHq5DSNq3de7jJS1TIHWN3OrQ5ygclyI8r5tRO/ij7d/DflmLHbRy?=
 =?us-ascii?Q?GoPgobWdVnSkj8WjQK0DpZ3p8LUpWw3W4vWciZTfEtJRHvWfZPYbvaLCgM5B?=
 =?us-ascii?Q?BYUhBLjwRKr1AYsMTEuJ9/ovqG0iNBcRfhpTt5xJpYbPYb8hJcRgTi4jk698?=
 =?us-ascii?Q?6iRk+yux1GnAoLMT/12mqUdnmB4nc+LJx3W8USmkwnNrRolFeAx78j/KL+By?=
 =?us-ascii?Q?wYcFyFJKqGIu92UEYigpQa/VUlixbyg5KrIqyptRlqzcuJIPTETo7Ap36vki?=
 =?us-ascii?Q?CGgktL7TU9jUwYzpSversgHABE9cN75CI76p6XBUlsI+DdRRpMV3NPqe98CA?=
 =?us-ascii?Q?yDVEx+flE6BwvTD66DMfPrrRmNmRMj8gPugmSbhXbJSyljYx9jLXJ9b7oqIJ?=
 =?us-ascii?Q?YC+NQR7fuddJce1uAwVfvCbIrQLpLL7AB4tPRu1HKLH/NUfozrM9/gAOHckv?=
 =?us-ascii?Q?mXCUuHK/BlzMQLlMMfJ6KNv+f5nT3WSoXcUrzjRAaaOzgJdcXBWPIGd/8yZ+?=
 =?us-ascii?Q?6ic5psd1MTdxu7K1drZ/Tg595pTqTNVYl9gaOP7AkMreB2G8AGve74Y3yijJ?=
 =?us-ascii?Q?d+Nfw1rFR2yLoqEGkLsSqeYxOdR+zOeGYPxv64ilUZndpiDAINDoYAFLAeOQ?=
 =?us-ascii?Q?EY2bPnN5VxfayQPe9phBHGS9ONdQKctGsrMoWABqmndJ/aQRFMfhpRjsyILv?=
 =?us-ascii?Q?0zLBhAdyM+P94RPMFmoWNFsetoM9+8TGHxgvJ9qzxMZk/y63qXhQ65qgoNsa?=
 =?us-ascii?Q?1oN/waseY8Do/gLaux3sibT4IIRyUXfnXxw+oM+hraHiWFYx3ZoSYSUb9VGc?=
 =?us-ascii?Q?afd7DF9rehmldiBQiqlIzu2GcgFxydf/gdIRR0LHmLXMj4lpo4/xvyGpa1We?=
 =?us-ascii?Q?NPRoJdjkQb79LmzOkO/EYg25ddWmOhucYLHOyWITKbfgEmzUl96GPFzV57Bx?=
 =?us-ascii?Q?8OzuiINYe0k2zZBgXPH3lFgenQ6YH/Bw10B+302TkUAdotlwlVZu7t0I/b/B?=
 =?us-ascii?Q?4QfL7dHUKSdrx3tvXDg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?e88UchSBBksQz0vL1oQdieWMxJzqlGhTqRrbPkMkATAOAl8Sx8L9vR1WUGCj?=
 =?us-ascii?Q?qbQQ7s45Z3uMi5X4ENpbihrVxEfYKJjZ7ok1T1KcgUAku6fVCgdCvbtMZRUA?=
 =?us-ascii?Q?VOSMa/w26pye72JJyFNUXVA4Yx4+EUYo/EIzUS555uPZ7hIAkml/5pUF6Qcz?=
 =?us-ascii?Q?Uvq2cppq2D9jnDnZKJPabUrbP8jGXOPZwh3SQf5Km8xIQZgulN7+4DHEQWT1?=
 =?us-ascii?Q?bo0Rcu2E5xggnNYBxJdg3Ie+XTg5KH5NvVGJSTlLt29hWPSCwJnCeBNu2iOO?=
 =?us-ascii?Q?rlS05STdmQ33yfKxrYLi9r2s/rtl9msMU1EqEANRGaRk2DSbijJdj3QcKKAs?=
 =?us-ascii?Q?SOhdr1Fur9mGu/H973gwTpDw5Chv1gV30zFNA9JI1DK2FBRNRcXLLj05BFYN?=
 =?us-ascii?Q?gITiHXRYIq2jLrwLI/bUqIw4fujY7y218y5DI6eM9zXksoop7DtahXd0LVUf?=
 =?us-ascii?Q?IkSwt0uaz7dY5jJjkl2E7Yx3E7w4YlJsGCil0oj6N6kHtLa+ZMU95XQ/sWSO?=
 =?us-ascii?Q?Nv0OAzU9KwE0BwSDM/JLDpwUyMhcxSsHOzy9Zmlx+TuEhZoevInOCPdOba+S?=
 =?us-ascii?Q?T2ouyeScrE6EfvKFgT864jPyzU8NLQcrDDO9CxyYbfEjW9BBtbMmvO0TFxBy?=
 =?us-ascii?Q?oMiHhOCwVDUkPeLSCcjUVrGZikgfN9MnuFOq8gpaGYCB2ll0lzVxng/CDisd?=
 =?us-ascii?Q?EXb7+ZVN/dmLE2/gB/6J3nT+JbVOmlm51vLsLXeO7FkADhBZiiZiT3/+W8c7?=
 =?us-ascii?Q?2vFn3jjq5R+7bRwVPa4MJl9BmVVMdfRa1jKkIBVOfzx7zXIlI9Gw5nmbsmH/?=
 =?us-ascii?Q?XnXRfdkapa7nRlxiOMxRskmNShHcmKJFzpuV3+XlncsnAgb3IFfCmmxAYuho?=
 =?us-ascii?Q?tmFRixwFtYMvbTlp+rL7EpGwgDG4iuyvjH48CHYS6CFDevtPgqTqyLObjZq9?=
 =?us-ascii?Q?eNFwgyQkxeTWCN0Fmw5BGmglI3ozWvAAmbw98NnQbQrHVQxiIzgsHz6MH4u2?=
 =?us-ascii?Q?jXNNlFwE+IAX4gn4Ed+i7yNvcUtbGud3+lsmrNoe6zAjILLwqg+3eXBQAgUg?=
 =?us-ascii?Q?QMaCpOD6eBEWUOu+/SllBkqAfjrvI4GupTZV5waEAHiGG8vKNrWB1MqXWQWC?=
 =?us-ascii?Q?6rmqvEjol80dW2gUh4XAmRIFlAOSHJIo1zcjfamraChetbN30w97iZmLoG87?=
 =?us-ascii?Q?KWzYzheYv/9MUD5u78iLTrVAvJs1KiZrX3+C6QDaJVlUhk68DQ32mPTY8grY?=
 =?us-ascii?Q?a2h/jBHy4ygouyO94qF+U1Ems+QkYKO7Vyspqoe9GUQiYtz825rQIp0GFn0l?=
 =?us-ascii?Q?hakMwSHSMX0DhGhS2GE9rb60l2x/vYL3KgF+PaDzHTej8S2j/uITqXbfFpMf?=
 =?us-ascii?Q?Q94QE7LQrrWSPVKI2WehrvtH/ZyEvITWkNruLLhqGwdHC0N9HYXZDn9blQER?=
 =?us-ascii?Q?/vuMNyhI5T7Uxh4SslSWC7ZPhVBnQrA0KtuvuuwGQgywlNXFvl3949HG4x7d?=
 =?us-ascii?Q?nTlX8ArDZ5NdvPZy3E8nhGmNTzdBT6yk1uCxTanGS7s0hRD2G7z8Z4fEZQqj?=
 =?us-ascii?Q?H7LREVV/lhOBIPcA+XG7yOdmUmA2dhI6MMg4cx8Rup9CPBiZnQenb6+nM1vD?=
 =?us-ascii?Q?nl3QQJwE701MhdmOOaxht5LMJ+2Dzu15zVzlsH7zbiEWAy0wR+5WWNczDgMd?=
 =?us-ascii?Q?VfxDwAPwYIqDgXtaT1QytJMy+Xq/4yLpggW+hqINNmIfq0kt6901TCvtvMy7?=
 =?us-ascii?Q?y6HadK3Xjg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bfd1c7cf-1852-4c86-94f6-08de5f73de96
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 20:20:39.4632 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lFN6zQTd7NPVTghioIR2SKkto0I0Jwyp13y9aopE7GXKrMYbX1JxsOKRr1jOP4fuc4eXi4eed87gvrDXpApyVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5043
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:replyto,intel.com:email];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 91E45B4357
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 10:41:52PM +0530, Ankit Nautiyal wrote:
> Account for DSC slice overhead bubbles and adjust the pixel rate while
> checking the pixel rate against the max dotclock limits.
> 
> v2: Add missing assignment for dsc_slice_count in
> mst_connector_mode_valid_ctx(). (Imre)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 20 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp.h     |  2 ++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 19 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_vdsc.c   |  1 -
>  drivers/gpu/drm/i915/display/intel_vdsc.h   |  3 +++
>  5 files changed, 44 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 69a87c5933b1..798a0d192b72 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1414,6 +1414,8 @@ bool intel_dp_can_join(struct intel_display *display,
>  
>  bool intel_dp_dotclk_valid(struct intel_display *display,
>  			   int target_clock,
> +			   int htotal,
> +			   int dsc_slice_count,
>  			   int num_joined_pipes)
>  {
>  	int max_dotclk = display->cdclk.max_dotclk_freq;
> @@ -1421,6 +1423,12 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
>  
>  	effective_dotclk_limit = max_dotclk * num_joined_pipes;
>  
> +	if (dsc_slice_count)
> +		target_clock = intel_dsc_get_pixel_rate_with_dsc_bubbles(display,
> +									 target_clock,
> +									 htotal,
> +									 dsc_slice_count);
> +
>  	return target_clock <= effective_dotclk_limit;
>  }
>  
> @@ -1553,8 +1561,13 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  		if (status != MODE_OK)
>  			continue;
>  
> +		if (!dsc)
> +			dsc_slice_count = 0;
> +
>  		if (!intel_dp_dotclk_valid(display,
>  					   target_clock,
> +					   mode->htotal,
> +					   dsc_slice_count,
>  					   num_joined_pipes))
>  			continue;
>  
> @@ -2787,6 +2800,7 @@ intel_dp_compute_link_for_joined_pipes(struct intel_encoder *encoder,
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	struct link_config_limits limits;
>  	bool dsc_needed, joiner_needs_dsc;
> +	int dsc_slice_count = 0;
>  	int ret = 0;
>  
>  	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
> @@ -2815,6 +2829,8 @@ intel_dp_compute_link_for_joined_pipes(struct intel_encoder *encoder,
>  		if (ret ||
>  		    !intel_dp_dotclk_valid(display,
>  					   adjusted_mode->crtc_clock,
> +					   adjusted_mode->crtc_htotal,
> +					   dsc_slice_count,

Nit: It's odd to pass dsc_slice_count instead of a literal 0 in this
uncompressed case. The variable could be then also better scoped. The
same applies to mst_stream_compute_link_for_joined_pipes().

Regardless of the above:
Reviewed-by: Imre Deak <imre.deak@intel.com>

>  					   num_joined_pipes))
>  			dsc_needed = true;
>  	}
> @@ -2841,8 +2857,12 @@ intel_dp_compute_link_for_joined_pipes(struct intel_encoder *encoder,
>  		if (ret < 0)
>  			return ret;
>  
> +		dsc_slice_count = intel_dsc_line_slice_count(&pipe_config->dsc.slice_config);
> +
>  		if (!intel_dp_dotclk_valid(display,
>  					   adjusted_mode->crtc_clock,
> +					   adjusted_mode->crtc_htotal,
> +					   dsc_slice_count,
>  					   num_joined_pipes))
>  			return -EINVAL;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index edeb09372d1e..95a38763a367 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -226,6 +226,8 @@ bool intel_dp_can_join(struct intel_display *display,
>  		       int num_joined_pipes);
>  bool intel_dp_dotclk_valid(struct intel_display *display,
>  			   int target_clock,
> +			   int htotal,
> +			   int dsc_slice_count,
>  			   int num_joined_pipes);
>  
>  #endif /* __INTEL_DP_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 129ea3e3916e..1c4b3014ba33 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -608,6 +608,7 @@ static int mst_stream_compute_link_for_joined_pipes(struct intel_encoder *encode
>  		to_intel_connector(conn_state->connector);
>  	struct link_config_limits limits;
>  	bool dsc_needed, joiner_needs_dsc;
> +	int dsc_slice_count = 0;
>  	int ret = 0;
>  
>  	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
> @@ -626,6 +627,8 @@ static int mst_stream_compute_link_for_joined_pipes(struct intel_encoder *encode
>  		if (ret ||
>  		    !intel_dp_dotclk_valid(display,
>  					   adjusted_mode->clock,
> +					   adjusted_mode->htotal,
> +					   dsc_slice_count,
>  					   num_joined_pipes))
>  			dsc_needed = true;
>  	}
> @@ -670,8 +673,12 @@ static int mst_stream_compute_link_for_joined_pipes(struct intel_encoder *encode
>  		if (ret)
>  			return ret;
>  
> +		dsc_slice_count = intel_dp_mst_dsc_get_slice_count(connector, pipe_config);
> +
>  		if (!intel_dp_dotclk_valid(display,
>  					   adjusted_mode->clock,
> +					   adjusted_mode->htotal,
> +					   dsc_slice_count,
>  					   num_joined_pipes))
>  			return -EINVAL;
>  	}
> @@ -1531,6 +1538,8 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  	}
>  
>  	for (num_pipes = 1; num_pipes <= I915_MAX_PIPES; num_pipes++) {
> +		int dsc_slice_count = 0;
> +
>  		*status = MODE_CLOCK_HIGH;
>  
>  		if (connector->force_joined_pipes &&
> @@ -1553,6 +1562,11 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  			 */
>  			int pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
>  
> +			dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
> +								       mode->clock,
> +								       mode->hdisplay,
> +								       num_joined_pipes);
> +
>  			if (!drm_dp_is_uhbr_rate(max_link_clock))
>  				bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
>  
> @@ -1575,8 +1589,13 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  		if (*status != MODE_OK)
>  			continue;
>  
> +		if (!dsc)
> +			dsc_slice_count = 0;
> +
>  		if (!intel_dp_dotclk_valid(display,
>  					   mode->clock,
> +					   mode->htotal,
> +					   dsc_slice_count,
>  					   num_joined_pipes))
>  			*status = MODE_CLOCK_HIGH;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 642a89270d8e..7e53201b3cb1 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -1104,7 +1104,6 @@ void intel_vdsc_state_dump(struct drm_printer *p, int indent,
>  	drm_dsc_dump_config(p, indent, &crtc_state->dsc.config);
>  }
>  
> -static
>  int intel_dsc_get_pixel_rate_with_dsc_bubbles(struct intel_display *display,
>  					      int pixel_rate, int htotal,
>  					      int dsc_horizontal_slices)
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
> index aeb17670307b..f4d5b37293cf 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
> @@ -41,5 +41,8 @@ void intel_vdsc_state_dump(struct drm_printer *p, int indent,
>  			   const struct intel_crtc_state *crtc_state);
>  int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state);
>  unsigned int intel_vdsc_prefill_lines(const struct intel_crtc_state *crtc_state);
> +int intel_dsc_get_pixel_rate_with_dsc_bubbles(struct intel_display *display,
> +					      int pixel_rate, int htotal,
> +					      int dsc_horizontal_slices);
>  
>  #endif /* __INTEL_VDSC_H__ */
> -- 
> 2.45.2
> 
