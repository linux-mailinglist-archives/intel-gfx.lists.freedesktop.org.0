Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WFVbC5odqGnyoAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 12:55:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D35831FF5DF
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 12:54:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CFF310E16E;
	Wed,  4 Mar 2026 11:54:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c8rc6QIx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D67010E16E;
 Wed,  4 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772625293; x=1804161293;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=kMqE5gq2sdWKVYqrkT1FX0mS1hCZ8fX5HoS+ouvrV5w=;
 b=c8rc6QIxI6p4qsB8fWFrZ6BWL3kNzcERLxPSFrDd+1BFPkoYzxrlnvdf
 wcX95gNfWUsUzu0gjtmIRJJsJhTZrnZ/GXtyUxFdsqv/HVezxEKaLC3Dc
 X4PhguQsbjWZUk9432fUN4SLOI5jqx78yTxSrzsXnBhGEOJoGBL4z+2m+
 ragsCzAcksXvUtR8YbvEVcVRDYW4TjwWpfRKTC/Sve34iZW+OOq1nqNt6
 V3kywh3vViQpyfRN0vloYU1ztg+gzoLGFcTCtcv3uuS4+uFS6HIveJnUk
 F146ndJOQDd31xYKwIOe3YIAeEiTKH08ii8HYih0yQ+mAnuI99thBBYUc Q==;
X-CSE-ConnectionGUID: qGTTNLONSym4E0ZqEHP3BQ==
X-CSE-MsgGUID: 2mvA5QaNQfusLCjuo2S0wA==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="72880207"
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="72880207"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 03:54:43 -0800
X-CSE-ConnectionGUID: 3l+wTeOqTky/bJsXJBRhJg==
X-CSE-MsgGUID: MGrbkRESRJm4THrlNeHApg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="216630700"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 03:54:43 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 03:54:42 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 4 Mar 2026 03:54:42 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.34) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 03:54:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EkmEKgrhJ3Gj3X4CYct1xDn36FpXvBsYOAGhPUZ/6mSfWsfLEN1N/RT2Z6s0JPdhFUbdsW/vnOhm5d3e0YYfDCHxVRQZ2DeuNciBqeCvHLkcxsTJjL0luCBCux4ScqH1YtU888Zmnq0XGrzOpomCFgo7CzoSKJUjIaPrmx/I2lZu8rGIh12QAxI8PUvDNC/OgVxZFL9fZ+tA1FJ++zEEBKmz4m2mobNERwW4qXJmr1yf855NOaadAZxhSKHhXhGyqXk2xP4x98ynqnOC2m2lOBno0rjXkxSqzoKxU/2CIzlx3Fla9tMKQ9AZkM44mv7Io1LpJ8npBZuG1tTq0HKmNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ez9Jt+qQRFJBINJrD1ep5BgDYXuUgRn/jRRYIAP+jAM=;
 b=vsByYBDNafKkOYRDS1lSkBHqomHAj+5SWV5g3aiNYKstHdDg0o2ig/sZwI7kRROE6mmPg+iiWoEeNCdFY0btXPzVAvyRuGW+TUty3kMbZ9E4A/Z4z4CVzTat6lGA+vF+9p9DYTr6sSEFeet8o0SGdJqhCnt9VQGZPJLoUcdU8F3l2MFM4KOF/aMKRV5RpbKfTi3MrqiSqCpmx6t2Z6fAuXQRyAUNaWyE0Em7wwB34XN0ZTWhi0CwagfXW4ifkntgX5R/NTImd8UGf0qvmi02gbYGa/QiMZQtopqiMC3iTGzTuR2EP880AWdbOkG1zW+438ldOr3JgBNAjGmx2QGIIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM3PR11MB8682.namprd11.prod.outlook.com (2603:10b6:8:1ae::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.18; Wed, 4 Mar
 2026 11:54:34 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9678.016; Wed, 4 Mar 2026
 11:54:34 +0000
Message-ID: <a4264231-0261-4356-b327-dfe40eb742da@intel.com>
Date: Wed, 4 Mar 2026 17:24:28 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] drm/i915/dsc: Add helper for writing DSC Selective
 Update ET parameters
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20260304113011.626542-1-jouni.hogander@intel.com>
 <20260304113011.626542-4-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260304113011.626542-4-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1P287CA0013.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::26) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM3PR11MB8682:EE_
X-MS-Office365-Filtering-Correlation-Id: b93582c6-3b83-4d9c-15b5-08de79e4cd91
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: u9f7BG3wE7TGa4IFj+thWg0b0O0zU7YZz4HXPG9nEDa1aVOK6M/fDB44ABHZqem1lGWrgCKMzEHKMosJuoOI6OwYIq1G385zc85ie2DOcQEpsg9c6sAQAKB7P4/E0D77DnO7VemNhvUgcHDQcB6Nq50WO2Hk7QjRBZPQfXn/z1EbeRWYaRZMlVKEvPRr11NDgErMZYDWBH819n98X/jW19ikcH73tjLEFttmbd++I3xSjRjL1iPyzKtbmiyhy/FksxWGwFXtGRiMFSSKYihObi2paKhnUuozmEXKg1LlQlyYaRGGusj8JfpqEYRyt9l6CVrvrJ1IqvuJdUVoQNRYe6uMnML/Y/ZOtstfVWep6TUV5sVIV797wqZp07giceBPs/dpNOOF8W1Gozf4imom72Fvvg1y9oo+K+4GdGidQDXhxft8m1gvrBRiqEHVi9fFB8l9bixYK4eJAj/KeBXknhCv2NzMXO9VPvRxSp4kRUnxAi+nxNB38N6RjbX9Vpb5/9YAtdM+L3azvvFrsWy/cAEjjLSrhlgGt+l8ou8osECB7Molp7GU8f4F+Pawy/XdtHllWy6eD/1h+SEPCe7coseUHVLYwiIMFb9QG+RDfI5t6ixzNu1g6T0GRctX6uzvr5a4Afwd1HRCU1eKmh5H0oPN3Lz0BSAXczlUE992o+NxDefRnNlUsGLN9vbRUzBTyh1t/iaSW/NjlXftaIaDzq9iySUHHih25gGD2X5eqk4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K0g1cTd3NTRrcGxRc3ptME9CTkRWanBVNnM3NjlmTnRubXM3LzdvVkdLa1Nu?=
 =?utf-8?B?RWk3NmJMVjE4bHFRcnhnUkU5SGxKemkvWGVZdlc4RHZHRGZ0MTBnanVTOC8r?=
 =?utf-8?B?Y2tnVnBhTnd1bUhRU1BuT1UvdFE3NTFGZXRzc29JMWcyTXo0T0RiVjBjNS9M?=
 =?utf-8?B?MnNJMDNZQ0ZrU2sxVUZOSDdVeFBTYytxdW4yTk5nWEtUSDRzeVlibFJmYlRB?=
 =?utf-8?B?NklWazBBM1lNb29LdEdrWG4yMzNHcDJhYUl5bzJlM2VWLy90QlJCb3NUTkNI?=
 =?utf-8?B?S3BrVGlwdkd2azVXTkhEU0ZRWnVsc243L0xNalFDZEd0SGdxTkF3YWhqTFlk?=
 =?utf-8?B?ZDZoK3d1ZzhMOXV1aU1zclFabXVvalFCdnZ1RGNJNmkrUkh4dGNLZWc1N0VW?=
 =?utf-8?B?K2VySnV2ZnJBckhuaGR5c2hCUkRpWjV4cDkzcFNobERvWVk0UStpMWNkN2lk?=
 =?utf-8?B?RmpETnpTRWx3anAxZXJvM3lnSDV1Ujcyai9XUmkzTHRxeERORkIzaFJMSEpZ?=
 =?utf-8?B?bTVYZTVkZTEvemlLNEc5MzNpQ1dZakhGN2Vxd1lyRXNyOW01ZVRyZGppOVVl?=
 =?utf-8?B?cnpvMzF2U3Y0NGZ5V3JDTXBuejh5STFnanZ6UHhOclAvcFRtVFVtMFg2VXZa?=
 =?utf-8?B?ZnNhOW5mM3BXSnVib2xJNmFPTUVjbHN2OTgxMi91eEUvOWJ0WnhySmFDVHB4?=
 =?utf-8?B?SjkxNUx4SElFUm5PZVhBM2ZtSmx1OEpPb2RsSkY4SXJqVlk0cW0yL1RwaURK?=
 =?utf-8?B?Z3liMGEzTzBBK0psTVVHbHozazZoTm54V1AzR1RGbVNlckV6dWp1MFhJMzJx?=
 =?utf-8?B?VmxLVWZsR09XNkl5TTNoMFRBTTM0NHR1T2U2UGhoRDBKN3B0MjFEU3FZTlIr?=
 =?utf-8?B?dkg2ZkdHbkEyOVd3aXRPd1FnL3ZaY0g0bnlDV3lwa2RZREFDd1cwelZ1ZHA4?=
 =?utf-8?B?ai9UUVlaQUpZdUMvbm9aU2xlV2NxY0dSMHVESkdsNCtCcGU0Vkt0bXNJdFNt?=
 =?utf-8?B?V3VEV0ptMisybWdUOHA0d0prVzN6RmxHRmxFbStUUnMxRGJDTmEzRXRJWFQ3?=
 =?utf-8?B?UkgxdEYxc0JQd2FiQkxYblZ3RWl0K0NSOGdsMThoTnI3eVFhS28yYTFOcHBC?=
 =?utf-8?B?V0NJNlZRRjRsUzdROTFXYVBhYzQ2d1JidkdaVk1xM3dManFiaG0wbDdGNVlB?=
 =?utf-8?B?NDhRUVFIdEpvSHgvZXo2YTlPOWxjUWpaak5LMUE4dnRtRitST2FXeDh2a080?=
 =?utf-8?B?c202ZWZYTzJqUzBHcHhEaWxCU21DQk1YTXRDM0JSeUlmZ0x5RnZtdHFZQXFN?=
 =?utf-8?B?LzBxM3hJS2ZMZmFoWVYvenExd0lQTGp2WlZVcytGWlMxSkJhNVp6dkdkR3RE?=
 =?utf-8?B?SXhBbU5YZ1pHZ0pGdnczM3R3VUw3M1h3MHVIRWNHSW93empoc0E5SnBGKzIz?=
 =?utf-8?B?UkVmTGlwV3EzUEd5aXBaTUN5aE9nNlVvZHl1RmlKdUM2Q09WWmt0KzhlWnBu?=
 =?utf-8?B?bURjK0NQY0Uxa1ZYL3VlRnp5TEJJWkw2N1A5WWFkNnIxMStYdzZqWmJKbDNl?=
 =?utf-8?B?QkdNeCsyQXZ5eTBuaUE1VU5xdTRBV0prbStrbWR5S2ZKN3FiOTBSdXNnOGor?=
 =?utf-8?B?ZSszR0FCdDhNQlVlTDFtSnJEWkc3R3poWHUzOFRjV1dqbGpxZFk0Y2RQcVVw?=
 =?utf-8?B?VUhMREVDQ2lwczJLUHlBajV3dEpFMHYrWG41c3hqbnRScXZKQ1N4MUFUQWVB?=
 =?utf-8?B?dGxpdzFLZjNYRVR1aEo2bnRURXFlTUVOYnVKSXE4T2Z6U0JBQjlQRm5aQWpk?=
 =?utf-8?B?dEU3ZE9DWGZ2dWVkSnlDSnMzdXk0Qm9mTWVLV2d2MDVIakozVHUvWEZEczIw?=
 =?utf-8?B?K05McTM5QllDSFV2bHdqelpaUStDem1uUktFUG56emJRK2p3Ry9sTCs3ZExw?=
 =?utf-8?B?NTZVdXdLUHF0a0FOSEgyVVdpeTgwRGx2N2xSb1NDRi9sZjR6L201U3EwUjQ0?=
 =?utf-8?B?SzNmc1pCYm82YStES29MT21lcHk4R2hOdWpHTXV1dFI0NE52K0EyQW8yQXRr?=
 =?utf-8?B?dHdsUWV1b3d2R3pHNVVtWmUyaHRiTnFzMjNZMlFKczhWVVpySUVTYUZncFhx?=
 =?utf-8?B?TUxibEg0cE5qbGZNN1pBWjc5QVZzV0duaVBFUXM5dlZRMTh1Ykl6WnozcDUw?=
 =?utf-8?B?UlRDUU5BR25pRDFjSXBoTzM5WndzZDZPT0dON25ad2RyREg2SjFtTlVaSWFu?=
 =?utf-8?B?Mk14TEt6S3Y5L1FrYytiNWR2WDcyQmNUQkFGaEduOExGZjVpSFEraXpjTHNk?=
 =?utf-8?B?ME1VMVJnYkFhL3d1NTFVUENuWTdNOWJWcjRTbTdKcTRMdnN6NXpNcGRhNjJt?=
 =?utf-8?Q?Q4Z7/6kWan+ARF1k=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b93582c6-3b83-4d9c-15b5-08de79e4cd91
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2026 11:54:34.6471 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vTrJBC9GTcaOk8nzVkZCM4RRQrw1NUd7PDqfXqmEODWAl/Dtxeiimj+UGnljs6P3cNtSSrMh36gO4J6w5z4W9+joEdNsxZYM6b2X62UBWOI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8682
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
X-Rspamd-Queue-Id: D35831FF5DF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[intel.com:?];
	RCVD_TLS_LAST(0.00)[];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[131.252.210.177:from];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:mid,intel.com:email];
	R_DKIM_TEMPFAIL(0.00)[intel.com:s=Intel];
	DMARC_DNSFAIL(0.00)[intel.com : query timed out];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[10.60.135.148:received,40.107.201.34:received,192.198.163.18:received,2603:10b6:5:390::22:received,10.18.126.91:received];
	NEURAL_HAM(-0.00)[-0.991];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action


On 3/4/2026 5:00 PM, Jouni Högander wrote:
> There are slice row per frame and pic height configuration in DSC Selective
> Update Parameter Set 1 register. Add helper for configuring these.
>
> v2:
>    - Add WARN_ON_ONCE if vdsc instances per pipe > 2
>    - instead of checking vdsc instances per pipe being > 1 check == 2
>
> Bspec: 71709
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vdsc.c | 23 +++++++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_vdsc.h |  3 +++
>   2 files changed, 26 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 7e53201b3cb1..6c09c6d99ffe 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -820,6 +820,29 @@ void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
>   				  sizeof(dp_dsc_pps_sdp));
>   }
>   
> +void intel_dsc_su_et_parameters_configure(struct intel_dsb *dsb, struct intel_encoder *encoder,
> +					  const struct intel_crtc_state *crtc_state, int su_lines)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
> +	enum pipe pipe = crtc->pipe;
> +	int vdsc_instances_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
> +	int slice_row_per_frame = su_lines / vdsc_cfg->slice_height;
> +	u32 val;
> +
> +	drm_WARN_ON_ONCE(display->drm, su_lines % vdsc_cfg->slice_height);
> +	drm_WARN_ON_ONCE(display->drm, vdsc_instances_per_pipe > 2);
> +
> +	val = DSC_SUPS0_SU_SLICE_ROW_PER_FRAME(slice_row_per_frame);
> +	val |= DSC_SUPS0_SU_PIC_HEIGHT(su_lines);
> +
> +	intel_de_write_dsb(display, dsb, LNL_DSC0_SU_PARAMETER_SET_0(pipe), val);
> +
> +	if (vdsc_instances_per_pipe == 2)
> +		intel_de_write_dsb(display, dsb, LNL_DSC1_SU_PARAMETER_SET_0(pipe), val);
> +}
> +
>   static i915_reg_t dss_ctl1_reg(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
>   {
>   	return is_pipe_dsc(crtc, cpu_transcoder) ?
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
> index f4d5b37293cf..3372f8694054 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
> @@ -14,6 +14,7 @@ enum transcoder;
>   struct intel_crtc;
>   struct intel_crtc_state;
>   struct intel_display;
> +struct intel_dsb;
>   struct intel_dsc_slice_config;
>   struct intel_encoder;
>   
> @@ -37,6 +38,8 @@ void intel_dsc_dsi_pps_write(struct intel_encoder *encoder,
>   			     const struct intel_crtc_state *crtc_state);
>   void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
>   			    const struct intel_crtc_state *crtc_state);
> +void intel_dsc_su_et_parameters_configure(struct intel_dsb *dsb, struct intel_encoder *encoder,
> +					  const struct intel_crtc_state *crtc_state, int su_lines);
>   void intel_vdsc_state_dump(struct drm_printer *p, int indent,
>   			   const struct intel_crtc_state *crtc_state);
>   int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state);
