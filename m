Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gJxNNn9002lviQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 10:53:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1BE3A2623
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 10:53:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4CCC10E20F;
	Mon,  6 Apr 2026 08:53:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XbVpViex";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 699CE10E20F;
 Mon,  6 Apr 2026 08:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775465597; x=1807001597;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WkmXy5YG9uPMumA/Vgl3zm5GskwehwIZNk+h05vOKrc=;
 b=XbVpViexMCaYx0RkA9Glwcz1WGveYCYW7je//pbtsSDw57GuB7Xdx7vs
 6586RcLnMLIymlp+zbPCOYK6Jpb20utItfrO+n7XZboh7uB7qOvPwBHzx
 EHow27Ib4Iz4X6RqmaVMtep+poa5md1v5kMX625H4Nq3Fy3YDl1AoINqA
 M4DaoxjzgQpWKW7I/Yj7NKKplH0ahyD3SF4iWtiAOtKOCkPZ0lvvbnlTu
 15hGtIyBL2lsZaeazUNC73mVb7P3Z+zVlbjgDvh/aDhJjHC3KTjtm5gcY
 IEacsI/XsAnJKEXjzWjZGmet8K/aXtGc0NbSCbOd0Vh20HwW+O3DKQv2X Q==;
X-CSE-ConnectionGUID: /sbV8hxdRbKGn2Zb1mpB9g==
X-CSE-MsgGUID: cMNFA2XIR3uqEaFgrE8KbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11750"; a="80277027"
X-IronPort-AV: E=Sophos;i="6.23,163,1770624000"; d="scan'208";a="80277027"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 01:53:16 -0700
X-CSE-ConnectionGUID: OBR9LE0jQCmJt2s5T7FPNw==
X-CSE-MsgGUID: SmucXuXzQ1eo48KoHpPdQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,163,1770624000"; d="scan'208";a="265797391"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 01:53:16 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 01:53:15 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 6 Apr 2026 01:53:15 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.21) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 01:53:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gNgsmcawSw/IxCAPk9bjMy690pnnpI0r7Td++cUl8WZiFMWSRkImXErnQUaAq+sKsh2tzrQwtCiT0YfblbN++eCnIEjaw1kvWyjvQHk3PxSjcjgK8LDWtmvvTYiKMg652abW9EBMPl5t6PTQ23H6E9sBfLhJz8L+nTgpdYwoH6mKI8Z9lECJAZpak73gvI1QCwv8pIRaamugS8ptnGbpRXKlJePOurBE1E0EDjtlpJr+LXmQH2JD3nKVggLRxrloE6s3VYu5EZV1IjDPZddaFE9mUPyKN7R8HRx/o/Ezanrdi9E8d+B6DyJ8BZvaYe5om9YTJj601zRsO8wSLyItdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NuUfqpbQrpGaW60PXzt1IrxyrY3/xnxatrVQ+A1lW2s=;
 b=KbPq+nTVrWlce703/0CY1tFwmtp4pAJzQ16XwPaEGJyA6XITT5i3fg1dIe21KZxWsIOPr2b0JCQm74XHAKqDUa+c7g7ba4Eo2EGg+j3rqcxB9VwAgh2WIAWmviYXnvdf5A49MHfX79yyu7IboQuDf/u7xEVkmdToF4Wo3eiP6LvAZpRHdUSqbO+WQ6jqCDb4K3pdHd0RLQ1aUsemtVymdDn4me2I/m7qINiIaIaa0FIWUbbzqM/o6h82bVpXVx6cTsbrMm6AglyUihc4LHeSYTFFZoOE7jgnDvYYIUtt4eS8utoq2gZ4qS+QClXLWQ/1rPeTcwHy8oGwFbiVTBlNEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY5PR11MB6389.namprd11.prod.outlook.com (2603:10b6:930:3a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Mon, 6 Apr
 2026 08:53:05 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9769.016; Mon, 6 Apr 2026
 08:53:05 +0000
Message-ID: <2a285e7d-edcc-4398-b870-61836b3cf495@intel.com>
Date: Mon, 6 Apr 2026 14:22:58 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 9/9] drm/i915/dp: Make the RGB fallback for "4:2:0 only"
 modes the last resort
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, Nicolas Frattaroli
 <nicolas.frattaroli@collabora.com>
References: <20260330235339.29479-1-ville.syrjala@linux.intel.com>
 <20260330235339.29479-10-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260330235339.29479-10-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0116.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d0::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY5PR11MB6389:EE_
X-MS-Office365-Filtering-Correlation-Id: c02d360c-0022-4962-3046-08de93b9eaea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: kj6qVmOPgk0JuzKxHI72GGwW1ZJbRWqq7bMQmi3ksZL4ffxprOkCg0ajfgxpuvP/wxUPNJPCHlQz0r4wjWfkJPZz8kPZ6a3ngM37EkT7EwGFHz0KFuIotROzsQJGZ9fkjVBLcSOpccXnS0+A4s0g6LnI53E3iEc0LDT8l3dSje7w+Bi5sH3NkLE5aHH8Qy0hWcoRvbcj3iFv6Hk6GpS86Xe7v90bXfVpPWo0I109WBWkpLkm0YJ1wNrflcbb9qPBSedENgVg20ev+MZUVV+rDgssyU/ElcYhcdR7HY62rTcsDDVIeVt2P4lUmtw12grYud1imadLJOiUtHZn6lBo1DhivoD2cUK29OsNniLqQx4topSMYDGtaMt1J30No8cyZafUYn0ub9OBEj7qqs+FrDWwM7AUrH1hzShhTX5jb44VhNGp5DP9ZozAaOpX5FGPyRAQoOErjsyjTYyhehzw1MxMEM91aneODv6F0/+sKrMWHH3tblUo8EHUtevJ47tkTFD+NFnhlkRU+HovkZ3aXMYSdvgQF1ZsX9cZcmgM1gox2oaSd6cJ6ThsLfJfQoPmbVeZJJ1w9pyh1VSj0Q/sHvdif0hAUOVGeVG/k4lwpx4uxRSKxmMjnsGtvF4wXTYT6I9cgwErHnmVpyBV/RFR72OF/6Ws9cwatO82rg4HO3ZJ2/aPgVtwUowUbfng4ZIxhJUK0UsSsKssggyqQlNZGRJXf+aM1xPKoAFt3uA8hGY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a2FKaXpQaEIvdGVOSTFZQ0lNalY2K3FrNGNIcVBQaXlnSGsvS0o2amQ4akpw?=
 =?utf-8?B?TVlJZm5HSmNxeFBIVVFiTVZnZWNVcVZhSHQ3WEFHVTJMdDc1SW84S09YMFd2?=
 =?utf-8?B?L3F1aFROa3FLTzBvd2RlOXdOWTJQeHh6cUJ0RlJnbjJHK1AxdVRKMFU2S0tE?=
 =?utf-8?B?clNKbnlpZHh1RFVVMlMyZy80OFFQY3ZON2JmVXlHSU93eFlUTGxhUVJwZ3FT?=
 =?utf-8?B?NXpZZmRMdEZab0o4TUt1UDRFMnVqU1REY3NiNDViVTY3SEJSanpCYjcyYkZO?=
 =?utf-8?B?T21xRzQ0NXp5SkJOcGJrUEd1Y3d5cHdiWWNGODJVdTdwTEJ3dnpGYjl2NnRQ?=
 =?utf-8?B?OFl6Witpd3ZNZVRrejV2L3lOQXFlaXhFK0NFNUhSaHZ0RTR2aE5ocjVqZ0ZH?=
 =?utf-8?B?ZDNUSnVyWkh0a2QzVXdHajdEQy9Vc2Z6djhTSXhIVzNJVXdvd05JM2thdFRW?=
 =?utf-8?B?QW91d2xJdWVaT04zczNnbWlJeHREaFVvTktLKzZaM2pubWdDMlJjajZqWlE2?=
 =?utf-8?B?YmdDK2MrRXJLSUxpU2xMaXR0TFZLTkVtYTRQZFJJcng1UWloRHROVXI4MzJM?=
 =?utf-8?B?V0l1dUFvZ0VqVGZqeCttU2oyZG5QOHIyeEJUSHFLdGRxbDhWMUJ5QUpPdVVM?=
 =?utf-8?B?ZG8zNXdQQzlTazdyd0RZUkFNNXM0UC9rRUp0Ui9tdTN4bWovdTY3bklVczhQ?=
 =?utf-8?B?R0FDM0M4cVRJMnYwMXl6eTdaNmNGZTg0K2o2Ymdscy9tYktEczczVzcyOW1Z?=
 =?utf-8?B?SEtEc2Q3SG9IMnFrUE9XODNscSs1eHJYODljY2txdFNzVHdoMWNYVkppY2ZF?=
 =?utf-8?B?UW5wQzBVTlJLQlRRUVNYMkpiS3kvU3N5VVNYQ0Nvb00zVk9yMmdjSmh3OHVK?=
 =?utf-8?B?YmVKRElvTTBHNCt6YllHSzZ0M3hKQ1NVcHhxU3JZYXBpTC93Z1A3a3BPM28v?=
 =?utf-8?B?U2dGM2w1U3JlRk16UU9VOEJ5ckJGZlprTUgvQ0tLditmekI1VGVsUlhlY0hB?=
 =?utf-8?B?YUNYTC91R0VVOXNiWWFaa2VvMnh0ckJPRWMvTG9ZTE5SeEk3WXlBZ0pkOHJk?=
 =?utf-8?B?QUNnb2tSRXBoOUFSdTE5bVlnWGZyb2FrQlVOeUhJWVJZckl4aE83NWFTc1VD?=
 =?utf-8?B?b2t1aTBtUGFJTEFrWVZyOTFIeXVXS29ILzRtOTVha080VjlHWnZSNHR5ZUoy?=
 =?utf-8?B?OHo4QXd0U3Fta09ubkduMDlRNExiSHUraTF2M085anRLMWxrOWplTmZaeGlB?=
 =?utf-8?B?UFhObmpuU3J3VmpzcDZVYnd3K0p4bEJheXp6MVpXRzh0aDdLSk1aTTFsVE5q?=
 =?utf-8?B?N0VGbmVUNEJwaE5JZzJFNmRjWlQxUUJXYTl2RHcxLzI3SURIRkxaaytGai9U?=
 =?utf-8?B?NVkyNzdVKzdMRFk0cC9TWjRGbkhpZ1RkVXZiK1oydFZjY3RTL2VmaFFUQSto?=
 =?utf-8?B?aVcrL29FQjFXMlZYaGdFZXFpdThGay9nWXpYb2kxdk1rZ3BZb3dReGQ0dWRh?=
 =?utf-8?B?MlZqV2hFRUxzaVBiNnJ5T0piUFlOUW9UZnpUcVBSSlMwYWhkUFp3K3YzUnVt?=
 =?utf-8?B?bzJoSjBhZit0Skk0U0w4bERHSEg1NzV2VHorc1AzZjV2alFjYUlPdlo5ZnZW?=
 =?utf-8?B?UHdURmRGdWVUMXpzdlZRUW1HamVhNHc3cDhZcTBMb1JKM0RCSTV0ZmNBVWM4?=
 =?utf-8?B?UmZ4ZkNqTDdNMEdVc0FGazJ5TWJJUDNMak0yZ0toenowTXhjYUZsaGN5N1VD?=
 =?utf-8?B?dTVqZkpCM3pPRng4bTY3Uld2WXQ4TDQxdmtGNUFUSFRBdlFkVWUzU042Qm5S?=
 =?utf-8?B?Umoxc3Q2YjBJc2Evc0lCZDlvYktOQlhtR3A2QVZlaU1wckVsam5sNDBIU0x2?=
 =?utf-8?B?R3FKaXhqcjR5NkZMMktLZjNkK2dTMy9ObEFDTzFtVjlVVXl4ZUdXckpQMEYz?=
 =?utf-8?B?UkVPQkh4YnFNaVh0aUY5N2dZN0lYaGcvdldOaklWMktMSkE5ekgzN2RoWDJr?=
 =?utf-8?B?akZYNENjdmY2TFVnQ1dWY1Noc2N3Y2hNVEJxdmlKMVFiSXRhZ3dGZEo5QlFG?=
 =?utf-8?B?VVFYU0NFdkRJL29XMVJ3T0hSdjNoTVBMSVZXR0tpWFk1TW1aU2dwZ0IwMHBu?=
 =?utf-8?B?VUd4YXE5Q3RSck12SVFmdk1TbHFISWc5NUhjUU5sOEJsa2tySGxoWk5GR0FC?=
 =?utf-8?B?UTdsYzNHU2NmT2RkZDVLYytveTBoL0YrbGp4aVlFd2p2bGZhZUxuTlJ5MWhZ?=
 =?utf-8?B?TzZtY0VhUEJUTXFxSnlRaFpMSjdyUVYyS3psS3c3NDlUOVovTFVKdnJzN2hk?=
 =?utf-8?B?cFAxdTEyOC9LdEs0b3FkdDdKREQ1dE5QeVNqcUpGVXNOVFZZN1VYYXVFNVdL?=
 =?utf-8?Q?wlnUr6iLAWKAEzaU=3D?=
X-Exchange-RoutingPolicyChecked: Qml2AkIW2SxBL1cHFEHPngq2U8FbvCXp8cHZHgA+/o0irsJ74XS/5FWoVp4T9Ov1xkrnAjSnij4dNnej+F6rTx3G7pAeyHiRB23TVjB+T2k2zgiikSnSm+nx7FmAOphEUATWAuJ5FUTk+C9IZc1nTb0pUwjOf7uhUkb5BK1XvjFj/24q17dZTNkCVI0k5V+LYyk/9uypFPGkDPfDl4KqzXU4VO6p2Twt+2j3716Frg3jtgkSKUHo6je6Zi9O26uGqj14Jdp6JpTno/o8XgczidXNAlQWCb3pdKcskW7rLY3RDH3C8dsL27pOzYdwSe42a+Baisy/bgh5YtXnzHpI3A==
X-MS-Exchange-CrossTenant-Network-Message-Id: c02d360c-0022-4962-3046-08de93b9eaea
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2026 08:53:05.6331 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ESVJH+x9XxNwYtlqU6YenXOmP0zdLDEMuFGXJiFaGmVPlt5ICSgKPWdcW4+Aq4hpcCkKhwordasiRf+TorDCT0VSch5kajhtV0yh8mltP/g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6389
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 6A1BE3A2623
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/31/2026 5:23 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Currently we take the Hail Mary RGB fallback for "4:2:0 only" modes
> already during the first pass when respect_downstream_limits==true.
> It seems better to try everything else first (like ignoring TMDS
> clock limits) while still preferring 4:2:0, and only if everything
> else has failed fall back to RGB.
>
> Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>


Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index ed89fbcdd549..e23162fc3f8b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3405,7 +3405,7 @@ intel_dp_compute_formats(struct intel_encoder *encoder,
>   						     respect_downstream_limits,
>   						     INTEL_OUTPUT_FORMAT_YCBCR420);
>   
> -		if (ret) {
> +		if (ret && !respect_downstream_limits) {
>   			drm_dbg_kms(display->drm,
>   				    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
>   
