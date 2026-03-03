Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KJhNJEerpmn9SgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 10:35:03 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA3F1EBEF3
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 10:35:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0993810E16D;
	Tue,  3 Mar 2026 09:35:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HfQT0hI2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6877410E16D
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2026 09:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772530498; x=1804066498;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=4CdYpVCzVzI7R2VETYMxJOAgaJKe3DjSh2wq21Pn3aU=;
 b=HfQT0hI2IAG9peouBrWgomgjanP1Y/W0SmSyXxYiytBDugbIK0i6UnBY
 WYX7s6kIA34SECymMw8P/LpGshfjB/RRAZR16/XN8IZtz9pu7lxrJw8wP
 kJa9jDWS7ImW2a3w4rtBJOkxKdk7qNpy87pnesF1qkHRmfd4CFZ/XIqd4
 ltvmDFvkiPt0elXYaFoqBnKebMZr8VmefHyKPrM3Llylf/Q6WWNj7yT+g
 iWhpMRJXGyp1qPVnj+r2Jrk++WJMxdII93lxgier+DvhzEwB0Jnb53FWk
 w4YFB3GH9VXo5QwKaCLxyjEAIcyPaWbOQJS9T7RpPkfjmsPsD2ZNfkv4C Q==;
X-CSE-ConnectionGUID: ggwBVLeOQxeENkrcDb5yaQ==
X-CSE-MsgGUID: z0a/ye40Shm3GBxC1IadGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="72759148"
X-IronPort-AV: E=Sophos;i="6.21,321,1763452800"; d="scan'208";a="72759148"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 01:34:55 -0800
X-CSE-ConnectionGUID: oMnicFM+Sc60fx4EOcHuaQ==
X-CSE-MsgGUID: iAUnqKneQyi3YXfLbWoIKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,321,1763452800"; d="scan'208";a="222430514"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 01:34:55 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 01:34:54 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 3 Mar 2026 01:34:54 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.33) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 01:34:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lcmXgGTtPDQ1pjVGX8iMBc1PuyKBBMqrLsqlBmda3FgMDzhHl1nms6E2GloN2wIAQ+3dF0YLoXuqAUd2GffI2Jj4SBr3bIx+GK83oOKj4+Ignf4rxJBdtNKCgPolnVKmCoi/hbZhqc9bM5PJXZneAb6laZe45zn+K+ZqP8ZprZJFg3RsR4f2CdXPmheHyFJzV8j/rY2+EWDrtwFQ3g/Q6MXeWZb8Z4qNtLDXPok87jcvkwoUDNtBVun1tNG3t575qGA7xfk6c+EkexwBysqBfS6r6q2ZX1HcAIIVOSvCt/6RTUmpNAVZLY8B/dE986y7vgIUMcmRHD3NsN2HSnJoSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Takv6aQp/QqNXMVJ9/iCFEe2EJy+Wo0/EvhJP0a90H0=;
 b=dXm85RCsktV5n/UNTJ7oCNqiJ6ApGs4nV4c61ZYx2TOfNtJRqOfg+vmuuIY4oZuwBln6243712DKaaEjdmDU1GTHimBMqwltL0q40jE4AMh+ccui9clLTwQ5IrcVGPZjtrsM1s7vcfGDvdFv5YRFY1E3i9JD7340Or0PplTJByWOy9ib7bESAA2s1FNUyh1lyRTDbUmlPF6gk2xJZNUZp7zdei38Yofy0EGYS/2+fBFNWAp9AB45wV7d96dAohJVx9hopNQlbycp0Pa/P3Pb0fe+0ss4NWwXb9d9uIq7mnsuuIPKPjGmn5ZQo7qBUI5cY8Wy8yEjXMpI3Gf2ySvSXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA3PR11MB9061.namprd11.prod.outlook.com (2603:10b6:208:57c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Tue, 3 Mar
 2026 09:34:50 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9654.015; Tue, 3 Mar 2026
 09:34:50 +0000
Date: Tue, 3 Mar 2026 11:34:24 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit K Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyTIGk5MTUuQ0kuRnVsbA==?= =?utf-8?Q?=3A?= success for
 drm/i915/dp: Fix DSC state computation
Message-ID: <aaarIMDsEcCso_Of@ideak-desk.lan>
References: <20260302102838.1522499-1-imre.deak@intel.com>
 <177248305455.305649.2880522666138865144@a3b018990fe9>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <177248305455.305649.2880522666138865144@a3b018990fe9>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVZP280CA0014.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:272::7) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA3PR11MB9061:EE_
X-MS-Office365-Filtering-Correlation-Id: fe19d0ca-afec-465f-1298-08de79081db9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 2xdaUrHZs2cbaeGxdjrkmM/mn2keqEyjxfMN9Cg5UHhVBHrpOMG+pfTrmp2x+X2PA6//UrIY1WJKJb9ky9N8dEMLqABPLV73gDaqh2W3G7YCZnvB7HPxH+SHajgrnYUcmTtwKclDcxy42n71ayIpR34LjbtpUbhBCVjCZKccJ7ZPYCZAWxsOUOaW2pQdRT1fq8uMSDT4Kn7aN56VNFevB8JI5XD4rMJ41fyo2HzJiouWKV0iAFlPYzs7RFjNi4ggBS05dsIfCP1Gd8iHqtuABK1NMfCPfemATmxpve9cO7/vQD45laOzpYSRBwYNe8ybtHLhghz3HRZ851CsrxRLKu6kjHZV0RNE9s0e3fNgjrW/CCByNM9j+CRa7ewWDAcldbS9FFaj5Pd6H9UWyRQcXmjhWWLrsQTFJhW122RMkUc5HlUzDtJVeaUQe4Fs0gKa8njtNSHaUK42Xiva+1lBY8ZPucYrF7rwi16y0o4Y6fREItS3Bwe5qa4TfXzOm5EtYrdWJWkfq5bmT27gsDB8S29dZ9LdPUhlZeKWbkjrcD2JjOBWbufh3zOktgJDkDIIN6xK3oK9o6vOGn/WimyZ+cPreNLt6sAYUS2Nb4agO9cPXFrvDNdtdzt7RPK6DAHVGn8MZC4ixb1mFiFyJV7SZbVckVLn39tNDJisV6pNxdI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?As2spepZbWVW40zZg+1PNzlMT/Qx0pZCYrqggaMKrp97MLtqKOQyGJ1xfPGM?=
 =?us-ascii?Q?8jU5NjLPCv7VzfijP18TaQUjjMLvtRHhVPe1kR6+uqnDal3oApyQZ/wsDlSA?=
 =?us-ascii?Q?7pdE2M0p7yy8K4LRDAC4W4ENjZigCmFPlckcqK7biV4aLXnndwllfITX2iu/?=
 =?us-ascii?Q?5LnR6yshZ94RRnx1uQktm3wdngzHQFr7hyYiArv1j6H2y2eoRvJqoNbxqwic?=
 =?us-ascii?Q?oaA/JAno2lcnZzxDwAVo9yN2iIeyYoPqoRkq+0U/CF4ndyPGiRRYJ9eSgSdW?=
 =?us-ascii?Q?m5SvIaUNQER4jH7P9KjVCOLLWfh+tOKU2s9+b0gzqE8Inkbh5NE6n4ewvkIw?=
 =?us-ascii?Q?K12fwKbi5B290bhRlm9tpo91O5ubkGZBsZmRCwwSYKwKf1aotMmJt2QWBEyT?=
 =?us-ascii?Q?MBULJPSnbvNh6HWwnq1p2/YOo7Ko6qjVWtw9Ygd55vMQnwS++jcFuA6PzA1s?=
 =?us-ascii?Q?IJsOwD0L4QNKpuOUmsCcBUJ4tGAsXoDUn1oCkyu4VZ3TwZrsOr6ckBsDTgC6?=
 =?us-ascii?Q?EeAYlF4EIjYHB37dTBUmgJvUuODRZ1O9TVtAmoETP22hyCZ9+kHpslUZuLdw?=
 =?us-ascii?Q?BbYGScU3nHyyuuPUkItTfOzApCSY7yHJHz9dU3G1rDRovFYMwNV8Ab5wZtHS?=
 =?us-ascii?Q?+nq852SvOTmvipCc1wUWdZ9OfTineM969tiLg1NPf6SH5P7J7B7tUOT8XN+e?=
 =?us-ascii?Q?WTNlMoDE1/JvNAVzb/AOAOKGc81+5cKZN4qit3Jo/J63hfwAYNrQs0zlfZZB?=
 =?us-ascii?Q?qaOpiJHgiW8e816DQaVpUeWbIlfDkj90s3NKJ4nGGDzwEP3i0E6Ano0RY0wQ?=
 =?us-ascii?Q?bBneoxRki/UpdXUaIphrM7SsqUcLFdEUMSxRjdAvD9+WVkERAhssLUkDD2wi?=
 =?us-ascii?Q?vkY8inwnqjEAnkqOMin6ENnd8LOyNkqm2x931CHiVkNT1M5HEcO4qRqt8FwI?=
 =?us-ascii?Q?flBwAiZVxwUyt/dd9cHkD5Muduvp/cI6y/ODsT0Sg/DFcdTq84tXnMu8vw/i?=
 =?us-ascii?Q?N1CyvfSCki3dM3UI6h/Gxlf5MyZck4omytAR6d0VMAAurhmA0eBHTgtq2uLJ?=
 =?us-ascii?Q?3tyaLgaQuDr2SWT1jbD6ONfmEq06/V0/Nmh1F7yaPgKTTzxuwhv98CXSNVq0?=
 =?us-ascii?Q?f3l96HF8XsDmhB3vUbDYlD009SY7V7Ish7iLH8FY2lOFcj+VMPOwAbU5ucbS?=
 =?us-ascii?Q?w+YuDZjJscshncaBJfszMrQkKhUZUiPArlrX8sREbihNUvO383bocdJS3cc+?=
 =?us-ascii?Q?NIU4+9/UjEcYz5pN1VlxxYKgYnS3mP2gDAXTL9EVE0HHIiz4aGPpwzoOo3ld?=
 =?us-ascii?Q?rqcT47Jn/Iu9pmrNF2RUt6nSS8KUeQQ2uLaAvp4q4iPwZjM3RkxXtlnFMAwP?=
 =?us-ascii?Q?Qb30Tta59PTgyZJJ1D4R/SJXRt9sNPU2YcBnv0IK+aA3lBy+Kk9WYZst13JV?=
 =?us-ascii?Q?ek3Y4OVn3Vtg9AWjcc7XUU6ccW2DVO1RjtyQrJ+XISREtf/nfBXNtu3twyf9?=
 =?us-ascii?Q?SjiZZNdCgd6bsHfkVKowdkf2CDQcqkEXYv0qZNdkfwfjzIsLrT+5ItnhpWRn?=
 =?us-ascii?Q?cqH2/CY66YRfZYPEEidozmIbN215husFZFkxyw2BQUE5GQDEvSRor5fReNm8?=
 =?us-ascii?Q?ifSJs3HG8ICYzzQscyWjZZeKt8TPzsSorTd0UIiV77liuVKiZn6yDLkAZvMP?=
 =?us-ascii?Q?2HOqw5UAx9CbUnFEFVxy1y+ZBWtTEYUppmpae6qB+BhlhC2bHM6sb3TdJKJJ?=
 =?us-ascii?Q?emfJBHNK6A=3D=3D?=
X-Exchange-RoutingPolicyChecked: hZGBZfJQvdEFq5Ri2whC8y0TDdtid9fxYUhIrXoT3b3ESs3zjccH+/2LyAJxLosaK1nsnY4rSxR7re8y1pUc51GI4r5rKBHinpgpTF5yQbet6//vKdQJy72av31Cycq36xB7Gmnhha3oX8Ahiz57e08oiYnJZizMAJXgUhLMlTAI5fATNm2zuBy9CWkTi+PfZw1933DypqORs7M/+sXOHs5Whr8gLVuJGsDRaZ2RzCVQp8RlW0+A2hG035ODxKbkdVRzaMhAyU1tUzZyQzG7bOlfxe9foIEXsgFybKqnqzyJ4wOrTz+4FdvLyZqUXE40NdJ/h5+UbsBJqZNISc0efw==
X-MS-Exchange-CrossTenant-Network-Message-Id: fe19d0ca-afec-465f-1298-08de79081db9
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2026 09:34:50.7253 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ExnvCLsQszmK045a9LFOk+2RV5Xscgj2KkNVv7c1/qCnToJyitj2p80rHZBBnihd2VJOZGh96ntLXGw4GhJL2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9061
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
X-Rspamd-Queue-Id: 7CA3F1EBEF3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS(0.00)[m:ankit.k.nautiyal@intel.com,s:lists@lfdr.de];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	NEURAL_HAM(-0.00)[-0.950];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Mon, Mar 02, 2026 at 08:24:14PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp: Fix DSC state computation
> URL   : https://patchwork.freedesktop.org/series/162408/
> State : success

Thanks for the review, patch is pushed to drm-intel-next.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_18068_full -> Patchwork_162408v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_18068_full and Patchwork_162408v1_full:
> 
> ### New IGT tests (36) ###
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs@pipe-a-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs@pipe-b-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs@pipe-c-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs@pipe-d-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-a-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-b-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-d-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-b-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-c-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-d-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-a-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-b-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-c-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc@pipe-a-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc@pipe-b-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc@pipe-c-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc@pipe-d-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-a-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-c-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-a-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-b-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-c-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-d-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-a-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-b-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-c-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs@pipe-a-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs@pipe-b-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs@pipe-c-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs@pipe-d-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_162408v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@crc32:
>     - shard-rkl:          NOTRUN -> [SKIP][1] ([i915#6230])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-8/igt@api_intel_bb@crc32.html
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-tglu:         NOTRUN -> [SKIP][2] ([i915#11078])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-3/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-tglu-1:       NOTRUN -> [SKIP][3] ([i915#7697])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-rkl:          NOTRUN -> [SKIP][4] ([i915#9323]) +1 other test skip
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-5/igt@gem_ccs@suspend-resume.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][5] ([i915#9323]) +1 other test skip
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-tglu-1:       NOTRUN -> [SKIP][6] ([i915#6335])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_ctx_isolation@preservation-s3:
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][7] ([i915#13356]) +1 other test incomplete
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-glk10/igt@gem_ctx_isolation@preservation-s3.html
> 
>   * igt@gem_ctx_persistence@heartbeat-close:
>     - shard-dg1:          NOTRUN -> [SKIP][8] ([i915#8555])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-16/igt@gem_ctx_persistence@heartbeat-close.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hostile:
>     - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#8555]) +1 other test skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-1/igt@gem_ctx_persistence@heartbeat-hostile.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-tglu:         NOTRUN -> [SKIP][10] ([i915#280])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-3/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-dg1:          [PASS][11] -> [DMESG-WARN][12] ([i915#4391] / [i915#4423])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg1-16/igt@gem_eio@hibernate.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-13/igt@gem_eio@hibernate.html
> 
>   * igt@gem_exec_balancer@bonded-false-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][13] ([i915#4812])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-1/igt@gem_exec_balancer@bonded-false-hang.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-rkl:          NOTRUN -> [SKIP][14] ([i915#4525]) +1 other test skip
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-5/igt@gem_exec_balancer@parallel.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][15] ([i915#4525]) +2 other tests skip
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_create@forked@lmem0:
>     - shard-dg1:          [PASS][16] -> [ABORT][17] ([i915#15759]) +2 other tests abort
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg1-17/igt@gem_exec_create@forked@lmem0.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-16/igt@gem_exec_create@forked@lmem0.html
> 
>   * igt@gem_exec_flush@basic-wb-set-default:
>     - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#3539] / [i915#4852]) +1 other test skip
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-1/igt@gem_exec_flush@basic-wb-set-default.html
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt-active:
>     - shard-dg2:          NOTRUN -> [SKIP][19] ([i915#3281]) +5 other tests skip
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-6/igt@gem_exec_reloc@basic-cpu-gtt-active.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
>     - shard-dg1:          NOTRUN -> [SKIP][20] ([i915#3281]) +5 other tests skip
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-19/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-wc-active:
>     - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#3281]) +4 other tests skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-8/igt@gem_exec_reloc@basic-wc-active.html
> 
>   * igt@gem_exec_schedule@preempt-queue:
>     - shard-dg1:          NOTRUN -> [SKIP][22] ([i915#4812])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-19/igt@gem_exec_schedule@preempt-queue.html
> 
>   * igt@gem_exec_schedule@preempt-queue-chain:
>     - shard-dg2:          NOTRUN -> [SKIP][23] ([i915#4537] / [i915#4812])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-1/igt@gem_exec_schedule@preempt-queue-chain.html
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - shard-dg2:          [PASS][24] -> [INCOMPLETE][25] ([i915#13356]) +1 other test incomplete
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg2-6/igt@gem_exec_suspend@basic-s0.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-3/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices:
>     - shard-dg1:          [PASS][26] -> [ABORT][27] ([i915#15759] / [i915#7975]) +1 other test abort
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg1-19/igt@gem_exec_suspend@basic-s4-devices.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-19/igt@gem_exec_suspend@basic-s4-devices.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][28] ([i915#4613]) +3 other tests skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][29] ([i915#4613]) +1 other test skip
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
>     - shard-dg1:          NOTRUN -> [SKIP][30] ([i915#12193])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-19/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0:
>     - shard-dg1:          NOTRUN -> [SKIP][31] ([i915#4565])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-19/igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-glk:          NOTRUN -> [SKIP][32] ([i915#4613]) +3 other tests skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-glk9/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-dg2:          [PASS][33] -> [FAIL][34] ([i915#15734])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg2-7/igt@gem_lmem_swapping@smem-oom.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-6/igt@gem_lmem_swapping@smem-oom.html
>     - shard-dg1:          [PASS][35] -> [FAIL][36] ([i915#15734])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg1-16/igt@gem_lmem_swapping@smem-oom.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-13/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2:          [PASS][37] -> [CRASH][38] ([i915#5493])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg2-7/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html
>     - shard-dg1:          [PASS][39] -> [CRASH][40] ([i915#5493])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_media_vme:
>     - shard-tglu:         NOTRUN -> [SKIP][41] ([i915#284])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-3/igt@gem_media_vme.html
> 
>   * igt@gem_mmap@bad-offset:
>     - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#4083]) +1 other test skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-8/igt@gem_mmap@bad-offset.html
> 
>   * igt@gem_mmap_gtt@ptrace:
>     - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#4077]) +7 other tests skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-8/igt@gem_mmap_gtt@ptrace.html
> 
>   * igt@gem_mmap_wc@fault-concurrent:
>     - shard-dg1:          NOTRUN -> [SKIP][44] ([i915#4083])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-16/igt@gem_mmap_wc@fault-concurrent.html
> 
>   * igt@gem_partial_pwrite_pread@write-display:
>     - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#3282]) +4 other tests skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-8/igt@gem_partial_pwrite_pread@write-display.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
>     - shard-dg1:          NOTRUN -> [SKIP][46] ([i915#3282]) +2 other tests skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-19/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#3282]) +3 other tests skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-1/igt@gem_pread@exhaustion.html
>     - shard-glk11:        NOTRUN -> [WARN][48] ([i915#2658])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-glk11/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pxp@protected-raw-src-copy-not-readible:
>     - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#4270])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-6/igt@gem_pxp@protected-raw-src-copy-not-readible.html
>     - shard-dg1:          NOTRUN -> [SKIP][50] ([i915#4270])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-16/igt@gem_pxp@protected-raw-src-copy-not-readible.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#5190] / [i915#8428]) +2 other tests skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-1/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
>     - shard-dg1:          NOTRUN -> [SKIP][52] ([i915#4079])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-19/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>     - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#8411]) +2 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-tglu:         NOTRUN -> [SKIP][54] ([i915#3297]) +1 other test skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-3/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate:
>     - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#3297] / [i915#4880])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-6/igt@gem_userptr_blits@map-fixed-invalidate.html
>     - shard-dg1:          NOTRUN -> [SKIP][56] ([i915#3297] / [i915#4880])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-16/igt@gem_userptr_blits@map-fixed-invalidate.html
> 
>   * igt@gem_userptr_blits@readonly-pwrite-unsync:
>     - shard-rkl:          NOTRUN -> [SKIP][57] ([i915#3297]) +1 other test skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-5/igt@gem_userptr_blits@readonly-pwrite-unsync.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][58] ([i915#3297]) +2 other tests skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@gem_userptr_blits@readonly-pwrite-unsync.html
> 
>   * igt@gem_userptr_blits@unsync-overlap:
>     - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#3297]) +1 other test skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-6/igt@gem_userptr_blits@unsync-overlap.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][60] ([i915#13356])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-4/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [PASS][61] -> [ABORT][62] ([i915#5566])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-glk3/igt@gen9_exec_parse@allowed-single.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-glk2/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@batch-without-end:
>     - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#2856])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-6/igt@gen9_exec_parse@batch-without-end.html
> 
>   * igt@gen9_exec_parse@bb-start-cmd:
>     - shard-tglu-1:       NOTRUN -> [SKIP][64] ([i915#2527] / [i915#2856]) +1 other test skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@gen9_exec_parse@bb-start-cmd.html
>     - shard-dg1:          NOTRUN -> [SKIP][65] ([i915#2527]) +1 other test skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-19/igt@gen9_exec_parse@bb-start-cmd.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-rkl:          NOTRUN -> [SKIP][66] ([i915#2527])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-5/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-tglu:         NOTRUN -> [SKIP][67] ([i915#2527] / [i915#2856]) +1 other test skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-3/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_drm_fdinfo@most-busy-idle-check-all@rcs0:
>     - shard-dg1:          NOTRUN -> [SKIP][68] ([i915#14073]) +11 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-16/igt@i915_drm_fdinfo@most-busy-idle-check-all@rcs0.html
> 
>   * igt@i915_drm_fdinfo@most-busy-idle-check-all@vecs1:
>     - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#14073]) +15 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-6/igt@i915_drm_fdinfo@most-busy-idle-check-all@vecs1.html
> 
>   * igt@i915_module_load@fault-injection@intel_connector_register:
>     - shard-tglu:         NOTRUN -> [ABORT][70] ([i915#15342]) +1 other test abort
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-3/igt@i915_module_load@fault-injection@intel_connector_register.html
> 
>   * igt@i915_module_load@fault-injection@uc_fw_rsa_data_create:
>     - shard-tglu:         NOTRUN -> [SKIP][71] ([i915#15479]) +4 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-3/igt@i915_module_load@fault-injection@uc_fw_rsa_data_create.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-dg1:          NOTRUN -> [SKIP][72] ([i915#7178])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-16/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_freq_api@freq-reset-multiple:
>     - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#8399])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-5/igt@i915_pm_freq_api@freq-reset-multiple.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][74] ([i915#8399])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@i915_pm_freq_api@freq-reset-multiple.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-rkl:          [PASS][75] -> [INCOMPLETE][76] ([i915#13356])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-4/igt@i915_pm_rpm@system-suspend-execbuf.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-6/igt@i915_pm_rpm@system-suspend-execbuf.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - shard-dg2:          [PASS][77] -> [DMESG-FAIL][78] ([i915#12061]) +1 other test dmesg-fail
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg2-6/igt@i915_selftest@live@workarounds.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-8/igt@i915_selftest@live@workarounds.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][79] ([i915#4817])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-glk4/igt@i915_suspend@debugfs-reader.html
>     - shard-rkl:          [PASS][80] -> [INCOMPLETE][81] ([i915#4817])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-4/igt@i915_suspend@debugfs-reader.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-6/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-glk:          [PASS][82] -> [INCOMPLETE][83] ([i915#4817])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-glk1/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-glk3/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#5190])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
> 
>   * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
>     - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#4212])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-8/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
> 
>   * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>     - shard-tglu-1:       NOTRUN -> [SKIP][86] ([i915#12454] / [i915#12712])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
> 
>   * igt@kms_async_flips@async-flip-dpms@pipe-a-vga-1:
>     - shard-snb:          NOTRUN -> [SKIP][87] +4 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-snb4/igt@kms_async_flips@async-flip-dpms@pipe-a-vga-1.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-tglu-1:       NOTRUN -> [SKIP][88] ([i915#9531])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>     - shard-dg1:          NOTRUN -> [SKIP][89] ([i915#9531])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-19/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-glk:          NOTRUN -> [SKIP][90] ([i915#1769])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-glk9/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
>     - shard-tglu:         NOTRUN -> [SKIP][91] ([i915#1769] / [i915#3555])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-3/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-toggle-modeset-transition:
>     - shard-dg2:          [PASS][92] -> [FAIL][93] ([i915#5956]) +1 other test fail
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg2-11/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-1/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
> 
>   * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [FAIL][94] ([i915#5956]) +1 other test fail
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-1/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][95] ([i915#5286]) +3 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
>     - shard-tglu:         NOTRUN -> [SKIP][96] ([i915#5286]) +2 other tests skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-3/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
>     - shard-dg1:          NOTRUN -> [SKIP][97] ([i915#4538] / [i915#5286]) +1 other test skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-16/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#5286]) +2 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-mtlp:         [PASS][99] -> [FAIL][100] ([i915#15733] / [i915#5138])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][101] ([i915#3638])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-16/igt@kms_big_fb@linear-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
>     - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#4538] / [i915#5190]) +6 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
>     - shard-rkl:          NOTRUN -> [SKIP][103] +16 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#4538]) +2 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-16/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#6095]) +119 other tests skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-18/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#10307] / [i915#6095]) +139 other tests skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-1/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#12313]) +2 other tests skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-8/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#12313])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][109] ([i915#6095]) +19 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-3/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#14098] / [i915#6095]) +48 other tests skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc:
>     - shard-glk11:        NOTRUN -> [SKIP][111] +150 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-glk11/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][112] ([i915#6095]) +44 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs:
>     - shard-rkl:          [PASS][113] -> [ABORT][114] ([i915#15132])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-1/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [ABORT][115] ([i915#15132])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-1/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][116] ([i915#12313])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-16/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#6095]) +52 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][118] ([i915#6095]) +81 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-7/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [SKIP][119] +305 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-glk9/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#13781]) +3 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-1/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
>     - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-8/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
> 
>   * igt@kms_chamelium_frames@dp-crc-fast:
>     - shard-tglu-1:       NOTRUN -> [SKIP][122] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@kms_chamelium_frames@dp-crc-fast.html
> 
>   * igt@kms_chamelium_frames@dp-crc-single:
>     - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-3/igt@kms_chamelium_frames@dp-crc-single.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-multiple:
>     - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-1/igt@kms_chamelium_frames@hdmi-crc-multiple.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][125] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-16/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][126] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-3/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@atomic-dpms-hdcp14@pipe-a-dp-3:
>     - shard-dg2:          NOTRUN -> [FAIL][127] ([i915#7173]) +1 other test fail
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-11/igt@kms_content_protection@atomic-dpms-hdcp14@pipe-a-dp-3.html
> 
>   * igt@kms_content_protection@content-type-change:
>     - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#6944] / [i915#9424])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-5/igt@kms_content_protection@content-type-change.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][129] ([i915#6944] / [i915#9424]) +1 other test skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@kms_content_protection@content-type-change.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0-hdcp14:
>     - shard-tglu:         NOTRUN -> [SKIP][130] ([i915#15330])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-3/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html
> 
>   * igt@kms_content_protection@dp-mst-type-1-suspend-resume:
>     - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#15330])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-dg1:          NOTRUN -> [SKIP][132] ([i915#6944] / [i915#9424])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-19/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_content_protection@uevent-hdcp14:
>     - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#6944]) +1 other test skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-6/igt@kms_content_protection@uevent-hdcp14.html
>     - shard-dg1:          NOTRUN -> [SKIP][134] ([i915#6944])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-16/igt@kms_content_protection@uevent-hdcp14.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x170:
>     - shard-tglu:         NOTRUN -> [SKIP][135] ([i915#13049]) +1 other test skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-3/igt@kms_cursor_crc@cursor-offscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][136] ([i915#13566])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x32:
>     - shard-tglu-1:       NOTRUN -> [SKIP][137] ([i915#3555]) +2 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-32x32.html
>     - shard-dg1:          NOTRUN -> [SKIP][138] ([i915#3555])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-19/igt@kms_cursor_crc@cursor-onscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
>     - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#13049])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#4103]) +1 other test skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][141] ([i915#4103]) +1 other test skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#13046] / [i915#5354]) +1 other test skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-8/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          NOTRUN -> [FAIL][143] ([i915#15764])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk10:        NOTRUN -> [FAIL][144] ([i915#15764])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-glk10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#9067])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
>     - shard-dg1:          NOTRUN -> [SKIP][146] ([i915#9067])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-16/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-tglu-1:       NOTRUN -> [SKIP][147] ([i915#9723])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#9723]) +1 other test skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
> 
>   * igt@kms_dp_link_training@uhbr-sst:
>     - shard-tglu:         NOTRUN -> [SKIP][149] ([i915#13748])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-3/igt@kms_dp_link_training@uhbr-sst.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>     - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#3840])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> 
>   * igt@kms_feature_discovery@display-3x:
>     - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#1839])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-8/igt@kms_feature_discovery@display-3x.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank:
>     - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#9934]) +8 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-1/igt@kms_flip@2x-blocking-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible:
>     - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#9934])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-3/igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible:
>     - shard-snb:          [PASS][154] -> [TIMEOUT][155] ([i915#14033] / [i915#14350])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:
>     - shard-snb:          [PASS][156] -> [TIMEOUT][157] ([i915#14033])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#9934]) +2 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-5/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race:
>     - shard-tglu-1:       NOTRUN -> [SKIP][159] ([i915#3637] / [i915#9934]) +1 other test skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@kms_flip@2x-modeset-vs-vblank-race.html
>     - shard-dg1:          NOTRUN -> [SKIP][160] ([i915#9934]) +2 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-19/igt@kms_flip@2x-modeset-vs-vblank-race.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
>     - shard-dg1:          NOTRUN -> [SKIP][161] ([i915#15643])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-16/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#15643] / [i915#5190])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][163] ([i915#15643])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#15643]) +3 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#15643]) +1 other test skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:
>     - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#1825]) +17 other tests skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html
>     - shard-snb:          [PASS][167] -> [SKIP][168] +8 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-tglu:         NOTRUN -> [SKIP][169] +20 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt:
>     - shard-tglu:         NOTRUN -> [SKIP][170] ([i915#15102]) +9 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#15102]) +2 other tests skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
>     - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#15102] / [i915#3023]) +8 other tests skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#8708]) +4 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite:
>     - shard-tglu-1:       NOTRUN -> [SKIP][174] +30 other tests skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][175] ([i915#15102]) +7 other tests skip
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc.html
>     - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#8708]) +5 other tests skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#10055])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#9766])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-8/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-cpu:
>     - shard-dg1:          NOTRUN -> [SKIP][179] ([i915#15102])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#15102] / [i915#3458]) +9 other tests skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-pri-indfb-multidraw:
>     - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#5354]) +13 other tests skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-2p-pri-indfb-multidraw.html
>     - shard-dg1:          NOTRUN -> [SKIP][182] +15 other tests skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-2p-pri-indfb-multidraw.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
>     - shard-dg1:          NOTRUN -> [SKIP][183] ([i915#15102] / [i915#3458]) +4 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html
> 
>   * igt@kms_hdmi_inject@inject-4k:
>     - shard-mtlp:         [PASS][184] -> [SKIP][185] ([i915#15725])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-mtlp-5/igt@kms_hdmi_inject@inject-4k.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-mtlp-1/igt@kms_hdmi_inject@inject-4k.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#3555] / [i915#8228])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-6/igt@kms_hdr@bpc-switch.html
>     - shard-dg1:          NOTRUN -> [SKIP][187] ([i915#3555] / [i915#8228])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-16/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-rkl:          [PASS][188] -> [SKIP][189] ([i915#3555] / [i915#8228])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-3/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@invalid-hdr:
>     - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#3555] / [i915#8228])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@kms_hdr@invalid-hdr.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-dg2:          [PASS][191] -> [SKIP][192] ([i915#3555] / [i915#8228]) +1 other test skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg2-11/igt@kms_hdr@invalid-metadata-sizes.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-1/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_joiner@basic-ultra-joiner:
>     - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#15458])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-1/igt@kms_joiner@basic-ultra-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#15458])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-5/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][195] ([i915#15458])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-dg2:          NOTRUN -> [SKIP][196] ([i915#4816])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>     - shard-dg1:          NOTRUN -> [SKIP][197] ([i915#1839])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-16/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier:
>     - shard-glk10:        NOTRUN -> [SKIP][198] +62 other tests skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-glk10/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier:
>     - shard-tglu:         NOTRUN -> [SKIP][199] ([i915#15709])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-3/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping:
>     - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#15709]) +3 other tests skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier:
>     - shard-tglu-1:       NOTRUN -> [SKIP][201] ([i915#15709])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier.html
> 
>   * igt@kms_plane@pixel-format-linear-modifier:
>     - shard-dg2:          [PASS][202] -> [ABORT][203] ([i915#15759]) +6 other tests abort
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg2-1/igt@kms_plane@pixel-format-linear-modifier.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-7/igt@kms_plane@pixel-format-linear-modifier.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier:
>     - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#15709]) +1 other test skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-1/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier@pipe-b-plane-5:
>     - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#15608]) +1 other test skip
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-8/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier@pipe-b-plane-5.html
> 
>   * igt@kms_plane_alpha_blend@alpha-opaque-fb:
>     - shard-glk:          NOTRUN -> [FAIL][206] ([i915#10647] / [i915#12169])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-glk1/igt@kms_plane_alpha_blend@alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][207] ([i915#10647]) +1 other test fail
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-glk1/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_alpha_blend@constant-alpha-max:
>     - shard-glk11:        NOTRUN -> [FAIL][208] ([i915#10647] / [i915#12169])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-glk11/igt@kms_plane_alpha_blend@constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-hdmi-a-1:
>     - shard-glk11:        NOTRUN -> [FAIL][209] ([i915#10647]) +1 other test fail
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-glk11/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_multiple@2x-tiling-none:
>     - shard-dg2:          NOTRUN -> [SKIP][210] ([i915#13958]) +1 other test skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-8/igt@kms_plane_multiple@2x-tiling-none.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c:
>     - shard-tglu:         NOTRUN -> [SKIP][211] ([i915#15329]) +4 other tests skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-3/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c.html
> 
>   * igt@kms_pm_dc@dc5-retention-flops:
>     - shard-tglu:         NOTRUN -> [SKIP][212] ([i915#3828])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-3/igt@kms_pm_dc@dc5-retention-flops.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-rkl:          NOTRUN -> [SKIP][213] ([i915#8430])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-5/igt@kms_pm_lpsp@screens-disabled.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][214] ([i915#8430])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-rkl:          [PASS][215] -> [SKIP][216] ([i915#15073])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-8/igt@kms_pm_rpm@dpms-lpsp.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg2:          [PASS][217] -> [SKIP][218] ([i915#15073])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-tglu:         NOTRUN -> [SKIP][219] ([i915#15073])
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@pm-caching:
>     - shard-dg1:          NOTRUN -> [SKIP][220] ([i915#4077]) +4 other tests skip
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-19/igt@kms_pm_rpm@pm-caching.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-rkl:          NOTRUN -> [SKIP][221] ([i915#6524]) +1 other test skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-tglu-1:       NOTRUN -> [SKIP][222] ([i915#6524])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][223] ([i915#11520]) +8 other tests skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-glk3/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][224] ([i915#11520]) +3 other tests skip
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf:
>     - shard-glk10:        NOTRUN -> [SKIP][225] ([i915#11520]) +2 other tests skip
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-glk10/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-glk11:        NOTRUN -> [SKIP][226] ([i915#11520]) +2 other tests skip
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-glk11/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html
>     - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#11520]) +1 other test skip
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-5/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][228] ([i915#11520]) +3 other tests skip
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-3/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][229] ([i915#11520]) +3 other tests skip
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-6/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html
>     - shard-dg1:          NOTRUN -> [SKIP][230] ([i915#11520]) +4 other tests skip
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-16/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-tglu:         NOTRUN -> [SKIP][231] ([i915#9683])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-3/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-dg2:          NOTRUN -> [SKIP][232] ([i915#9683])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-1/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-pr-sprite-mmap-gtt:
>     - shard-tglu:         NOTRUN -> [SKIP][233] ([i915#9732]) +5 other tests skip
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-3/igt@kms_psr@fbc-pr-sprite-mmap-gtt.html
> 
>   * igt@kms_psr@fbc-psr-primary-page-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][234] ([i915#1072] / [i915#9732]) +13 other tests skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-8/igt@kms_psr@fbc-psr-primary-page-flip.html
> 
>   * igt@kms_psr@pr-primary-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#1072] / [i915#9732]) +11 other tests skip
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-5/igt@kms_psr@pr-primary-mmap-gtt.html
> 
>   * igt@kms_psr@psr-cursor-plane-onoff:
>     - shard-tglu-1:       NOTRUN -> [SKIP][236] ([i915#9732]) +8 other tests skip
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@kms_psr@psr-cursor-plane-onoff.html
>     - shard-dg1:          NOTRUN -> [SKIP][237] ([i915#1072] / [i915#9732]) +7 other tests skip
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-19/igt@kms_psr@psr-cursor-plane-onoff.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-tglu-1:       NOTRUN -> [SKIP][238] ([i915#9685])
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>     - shard-dg1:          NOTRUN -> [SKIP][239] ([i915#9685])
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-19/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:
>     - shard-glk11:        NOTRUN -> [INCOMPLETE][240] ([i915#15500])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-glk11/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html
> 
>   * igt@kms_rotation_crc@primary-rotation-90:
>     - shard-dg2:          NOTRUN -> [SKIP][241] ([i915#12755])
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-6/igt@kms_rotation_crc@primary-rotation-90.html
> 
>   * igt@kms_scaling_modes@scaling-mode-full:
>     - shard-tglu:         NOTRUN -> [SKIP][242] ([i915#3555]) +1 other test skip
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-3/igt@kms_scaling_modes@scaling-mode-full.html
> 
>   * igt@kms_scaling_modes@scaling-mode-none:
>     - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#3555]) +2 other tests skip
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-1/igt@kms_scaling_modes@scaling-mode-none.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - shard-rkl:          NOTRUN -> [SKIP][244] ([i915#3555]) +1 other test skip
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-5/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-tglu:         NOTRUN -> [SKIP][245] ([i915#8623])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-3/igt@kms_tiled_display@basic-test-pattern.html
>     - shard-glk:          NOTRUN -> [FAIL][246] ([i915#10959])
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-glk9/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-tglu-1:       NOTRUN -> [SKIP][247] ([i915#8623])
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
>     - shard-dg1:          NOTRUN -> [SKIP][248] ([i915#8623])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-19/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][249] ([i915#12276]) +1 other test incomplete
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-glk1/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_vrr@flipline:
>     - shard-dg2:          NOTRUN -> [SKIP][250] ([i915#15243] / [i915#3555])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-1/igt@kms_vrr@flipline.html
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-rkl:          NOTRUN -> [SKIP][251] ([i915#9906])
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-5/igt@kms_vrr@seamless-rr-switch-vrr.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][252] ([i915#9906])
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-dg2:          NOTRUN -> [SKIP][253] ([i915#2436])
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-6/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf_pmu@busy-double-start@vecs1:
>     - shard-dg2:          [PASS][254] -> [FAIL][255] ([i915#4349]) +4 other tests fail
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-8/igt@perf_pmu@busy-double-start@vecs1.html
> 
>   * igt@perf_pmu@event-wait@rcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][256] +7 other tests skip
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-6/igt@perf_pmu@event-wait@rcs0.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-glk11:        NOTRUN -> [INCOMPLETE][257] ([i915#13356])
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-glk11/igt@perf_pmu@rc6-suspend.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - shard-dg2:          NOTRUN -> [SKIP][258] ([i915#3291] / [i915#3708])
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-6/igt@prime_vgem@basic-fence-read.html
>     - shard-dg1:          NOTRUN -> [SKIP][259] ([i915#3708]) +1 other test skip
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-16/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][260] ([i915#3708])
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-4/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][261] ([i915#3708])
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-6/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@sriov_basic@bind-unbind-vf:
>     - shard-dg2:          NOTRUN -> [SKIP][262] ([i915#9917])
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-1/igt@sriov_basic@bind-unbind-vf.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off:
>     - shard-rkl:          NOTRUN -> [SKIP][263] ([i915#9917])
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@sriov_basic@enable-vfs-autoprobe-off.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
>     - shard-tglu-1:       NOTRUN -> [FAIL][264] ([i915#12910])
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-1/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_parallel@fds:
>     - shard-dg2:          [ABORT][265] ([i915#15759]) -> [PASS][266] +4 other tests pass
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg2-1/igt@gem_exec_parallel@fds.html
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-6/igt@gem_exec_parallel@fds.html
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - shard-rkl:          [INCOMPLETE][267] ([i915#13356]) -> [PASS][268] +1 other test pass
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@gem_exec_suspend@basic-s0.html
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-5/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-rkl:          [INCOMPLETE][269] ([i915#13809]) -> [PASS][270]
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-3/igt@gem_softpin@noreloc-s3.html
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@i915_power@sanity:
>     - shard-mtlp:         [SKIP][271] ([i915#7984]) -> [PASS][272]
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-mtlp-7/igt@i915_power@sanity.html
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-mtlp-6/igt@i915_power@sanity.html
> 
>   * igt@kms_color@deep-color:
>     - shard-rkl:          [SKIP][273] ([i915#12655] / [i915#3555]) -> [PASS][274]
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-4/igt@kms_color@deep-color.html
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-6/igt@kms_color@deep-color.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-256x85:
>     - shard-tglu:         [FAIL][275] ([i915#13566]) -> [PASS][276] +3 other tests pass
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-tglu-10/igt@kms_cursor_crc@cursor-onscreen-256x85.html
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-10/igt@kms_cursor_crc@cursor-onscreen-256x85.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-dg2:          [SKIP][277] ([i915#1257]) -> [PASS][278]
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg2-3/igt@kms_dp_aux_dev.html
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-11/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_dp_link_training@non-uhbr-sst:
>     - shard-dg2:          [SKIP][279] ([i915#13749]) -> [PASS][280]
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg2-8/igt@kms_dp_link_training@non-uhbr-sst.html
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-11/igt@kms_dp_link_training@non-uhbr-sst.html
> 
>   * igt@kms_force_connector_basic@force-connector-state:
>     - shard-mtlp:         [SKIP][281] ([i915#15672]) -> [PASS][282]
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-mtlp-1/igt@kms_force_connector_basic@force-connector-state.html
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-mtlp-7/igt@kms_force_connector_basic@force-connector-state.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:
>     - shard-snb:          [SKIP][283] -> [PASS][284] +22 other tests pass
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-rkl:          [ABORT][285] ([i915#15132]) -> [PASS][286]
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-dg2:          [SKIP][287] ([i915#3555] / [i915#8228]) -> [PASS][288]
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg2-5/igt@kms_hdr@static-swap.html
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-11/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-dg2:          [SKIP][289] ([i915#15459]) -> [PASS][290]
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg2-5/igt@kms_joiner@invalid-modeset-force-big-joiner.html
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-11/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_plane@pixel-format-linear-modifier:
>     - shard-dg1:          [ABORT][291] ([i915#15759]) -> [PASS][292] +3 other tests pass
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg1-19/igt@kms_plane@pixel-format-linear-modifier.html
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-19/igt@kms_plane@pixel-format-linear-modifier.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-dg1:          [SKIP][293] ([i915#15073]) -> [PASS][294] +1 other test pass
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg1-13/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-14/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          [SKIP][295] ([i915#15073]) -> [PASS][296] +1 other test pass
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-rkl:          [SKIP][297] ([i915#14544] / [i915#7697]) -> [SKIP][298] ([i915#7697])
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@gem_basic@multigpu-create-close.html
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-rkl:          [SKIP][299] ([i915#14544] / [i915#3555] / [i915#9323]) -> [SKIP][300] ([i915#3555] / [i915#9323])
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-3/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-rkl:          [SKIP][301] ([i915#14544] / [i915#6335]) -> [SKIP][302] ([i915#6335])
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@gem_create@create-ext-cpu-access-sanity-check.html
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-rkl:          [SKIP][303] ([i915#14544] / [i915#280]) -> [SKIP][304] ([i915#280])
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@gem_ctx_sseu@invalid-args.html
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-3/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-rkl:          [SKIP][305] ([i915#14544] / [i915#4525]) -> [SKIP][306] ([i915#4525])
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@gem_exec_balancer@parallel-ordering.html
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-rkl:          [SKIP][307] ([i915#14544] / [i915#6334]) -> [SKIP][308] ([i915#6334]) +1 other test skip
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@gem_exec_capture@capture-invisible@smem0.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-3/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>     - shard-rkl:          [SKIP][309] ([i915#3281]) -> [SKIP][310] ([i915#14544] / [i915#3281]) +1 other test skip
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-3/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
>     - shard-rkl:          [SKIP][311] ([i915#14544] / [i915#3281]) -> [SKIP][312] ([i915#3281]) +2 other tests skip
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-rkl:          [SKIP][313] ([i915#14544] / [i915#4613]) -> [SKIP][314] ([i915#4613]) +2 other tests skip
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_media_vme:
>     - shard-rkl:          [SKIP][315] ([i915#284]) -> [SKIP][316] ([i915#14544] / [i915#284])
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-3/igt@gem_media_vme.html
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-6/igt@gem_media_vme.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
>     - shard-rkl:          [SKIP][317] ([i915#14544] / [i915#8411]) -> [SKIP][318] ([i915#8411])
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
> 
>   * igt@gem_set_tiling_vs_pwrite:
>     - shard-rkl:          [SKIP][319] ([i915#14544] / [i915#3282]) -> [SKIP][320] ([i915#3282]) +4 other tests skip
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@gem_set_tiling_vs_pwrite.html
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-3/igt@gem_set_tiling_vs_pwrite.html
> 
>   * igt@gem_tiled_pread_basic@basic:
>     - shard-rkl:          [SKIP][321] ([i915#14544] / [i915#15656]) -> [SKIP][322] ([i915#15656])
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@gem_tiled_pread_basic@basic.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-3/igt@gem_tiled_pread_basic@basic.html
> 
>   * igt@gem_userptr_blits@coherency-unsync:
>     - shard-rkl:          [SKIP][323] ([i915#3297]) -> [SKIP][324] ([i915#14544] / [i915#3297]) +1 other test skip
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-4/igt@gem_userptr_blits@coherency-unsync.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-6/igt@gem_userptr_blits@coherency-unsync.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-rkl:          [SKIP][325] ([i915#14544] / [i915#3297]) -> [SKIP][326] ([i915#3297])
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gen9_exec_parse@batch-zero-length:
>     - shard-rkl:          [SKIP][327] ([i915#2527]) -> [SKIP][328] ([i915#14544] / [i915#2527])
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-4/igt@gen9_exec_parse@batch-zero-length.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-6/igt@gen9_exec_parse@batch-zero-length.html
> 
>   * igt@gen9_exec_parse@unaligned-jump:
>     - shard-rkl:          [SKIP][329] ([i915#14544] / [i915#2527]) -> [SKIP][330] ([i915#2527]) +1 other test skip
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@gen9_exec_parse@unaligned-jump.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-3/igt@gen9_exec_parse@unaligned-jump.html
> 
>   * igt@i915_module_load@fault-injection@__uc_init:
>     - shard-rkl:          [SKIP][331] ([i915#15479]) -> [SKIP][332] ([i915#14544] / [i915#15479]) +4 other tests skip
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-3/igt@i915_module_load@fault-injection@__uc_init.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-6/igt@i915_module_load@fault-injection@__uc_init.html
> 
>   * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>     - shard-rkl:          [SKIP][333] ([i915#12454] / [i915#12712] / [i915#14544]) -> [SKIP][334] ([i915#12454] / [i915#12712])
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-rkl:          [SKIP][335] ([i915#14544] / [i915#9531]) -> [SKIP][336] ([i915#9531])
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
>     - shard-rkl:          [SKIP][337] ([i915#5286]) -> [SKIP][338] ([i915#14544] / [i915#5286])
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-3/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-6/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-rkl:          [SKIP][339] ([i915#14544] / [i915#5286]) -> [SKIP][340] ([i915#5286]) +2 other tests skip
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-90:
>     - shard-rkl:          [SKIP][341] ([i915#14544] / [i915#3638]) -> [SKIP][342] ([i915#3638]) +3 other tests skip
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-90.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-3/igt@kms_big_fb@linear-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-90:
>     - shard-rkl:          [SKIP][343] ([i915#3638]) -> [SKIP][344] ([i915#14544] / [i915#3638]) +1 other test skip
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-4/igt@kms_big_fb@linear-64bpp-rotate-90.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-6/igt@kms_big_fb@linear-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
>     - shard-rkl:          [SKIP][345] -> [SKIP][346] ([i915#14544])
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-3/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][347] ([i915#14544] / [i915#6095]) -> [SKIP][348] ([i915#6095]) +5 other tests skip
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2.html
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          [SKIP][349] ([i915#6095]) -> [SKIP][350] ([i915#14544] / [i915#6095]) +7 other tests skip
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-4/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          [SKIP][351] ([i915#14098] / [i915#6095]) -> [SKIP][352] ([i915#14098] / [i915#14544] / [i915#6095]) +7 other tests skip
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-4/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs:
>     - shard-rkl:          [SKIP][353] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][354] ([i915#14098] / [i915#6095]) +10 other tests skip
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs.html
> 
>   * igt@kms_chamelium_frames@dp-crc-fast:
>     - shard-rkl:          [SKIP][355] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][356] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@kms_chamelium_frames@dp-crc-fast.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@kms_chamelium_frames@dp-crc-fast.html
> 
>   * igt@kms_chamelium_frames@hdmi-frame-dump:
>     - shard-rkl:          [SKIP][357] ([i915#11151] / [i915#7828]) -> [SKIP][358] ([i915#11151] / [i915#14544] / [i915#7828]) +1 other test skip
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-3/igt@kms_chamelium_frames@hdmi-frame-dump.html
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-6/igt@kms_chamelium_frames@hdmi-frame-dump.html
> 
>   * igt@kms_content_protection@atomic-dpms-hdcp14:
>     - shard-dg2:          [SKIP][359] ([i915#6944]) -> [FAIL][360] ([i915#7173])
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg2-3/igt@kms_content_protection@atomic-dpms-hdcp14.html
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-11/igt@kms_content_protection@atomic-dpms-hdcp14.html
>     - shard-dg1:          [SKIP][361] ([i915#4423] / [i915#6944]) -> [SKIP][362] ([i915#6944])
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg1-18/igt@kms_content_protection@atomic-dpms-hdcp14.html
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-18/igt@kms_content_protection@atomic-dpms-hdcp14.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0-hdcp14:
>     - shard-rkl:          [SKIP][363] ([i915#15330]) -> [SKIP][364] ([i915#14544] / [i915#15330])
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-3/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html
> 
>   * igt@kms_content_protection@legacy-hdcp14:
>     - shard-dg2:          [FAIL][365] ([i915#7173]) -> [SKIP][366] ([i915#6944]) +1 other test skip
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg2-11/igt@kms_content_protection@legacy-hdcp14.html
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-1/igt@kms_content_protection@legacy-hdcp14.html
>     - shard-rkl:          [SKIP][367] ([i915#14544] / [i915#6944]) -> [SKIP][368] ([i915#6944])
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@kms_content_protection@legacy-hdcp14.html
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-3/igt@kms_content_protection@legacy-hdcp14.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-dg2:          [SKIP][369] ([i915#6944] / [i915#9424]) -> [FAIL][370] ([i915#7173])
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg2-8/igt@kms_content_protection@lic-type-0.html
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-11/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-rkl:          [SKIP][371] ([i915#14544] / [i915#6944] / [i915#9424]) -> [SKIP][372] ([i915#6944] / [i915#9424])
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@kms_content_protection@lic-type-1.html
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x32:
>     - shard-rkl:          [SKIP][373] ([i915#14544] / [i915#3555]) -> [SKIP][374] ([i915#3555]) +3 other tests skip
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-32x32.html
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-rkl:          [SKIP][375] ([i915#13049]) -> [SKIP][376] ([i915#13049] / [i915#14544])
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-3/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
>     - shard-dg1:          [SKIP][377] ([i915#13049]) -> [ABORT][378] ([i915#15759])
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg1-19/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-12/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-max-size:
>     - shard-rkl:          [SKIP][379] ([i915#3555]) -> [SKIP][380] ([i915#14544] / [i915#3555]) +1 other test skip
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-3/igt@kms_cursor_crc@cursor-sliding-max-size.html
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-max-size.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-rkl:          [SKIP][381] ([i915#14544]) -> [SKIP][382] +10 other tests skip
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-3/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>     - shard-dg1:          [SKIP][383] ([i915#3555]) -> [SKIP][384] ([i915#3555] / [i915#4423])
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg1-17/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-17/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms:
>     - shard-dg1:          [SKIP][385] ([i915#4423] / [i915#9934]) -> [SKIP][386] ([i915#9934])
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg1-16/igt@kms_flip@2x-flip-vs-dpms.html
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-17/igt@kms_flip@2x-flip-vs-dpms.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
>     - shard-rkl:          [SKIP][387] ([i915#9934]) -> [SKIP][388] ([i915#14544] / [i915#9934])
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-4/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race:
>     - shard-rkl:          [SKIP][389] ([i915#14544] / [i915#9934]) -> [SKIP][390] ([i915#9934]) +2 other tests skip
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@kms_flip@2x-modeset-vs-vblank-race.html
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@kms_flip@2x-modeset-vs-vblank-race.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-glk:          [INCOMPLETE][391] ([i915#12745] / [i915#4839] / [i915#6113]) -> [INCOMPLETE][392] ([i915#12745] / [i915#4839])
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-glk4/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:
>     - shard-rkl:          [SKIP][393] ([i915#15643]) -> [SKIP][394] ([i915#14544] / [i915#15643])
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
>     - shard-rkl:          [SKIP][395] ([i915#14544] / [i915#15643]) -> [SKIP][396] ([i915#15643])
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][397] ([i915#15102]) -> [SKIP][398] ([i915#14544] / [i915#15102])
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render:
>     - shard-rkl:          [SKIP][399] ([i915#14544] / [i915#15102]) -> [SKIP][400] ([i915#15102]) +1 other test skip
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render.html
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
>     - shard-rkl:          [SKIP][401] ([i915#15102] / [i915#3023]) -> [SKIP][402] ([i915#14544] / [i915#15102] / [i915#3023]) +2 other tests skip
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][403] ([i915#14544] / [i915#1825]) -> [SKIP][404] ([i915#1825]) +19 other tests skip
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:
>     - shard-dg2:          [SKIP][405] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][406] ([i915#15102] / [i915#3458]) +1 other test skip
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
>     - shard-dg2:          [SKIP][407] ([i915#15102] / [i915#3458]) -> [SKIP][408] ([i915#10433] / [i915#15102] / [i915#3458]) +1 other test skip
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render:
>     - shard-dg1:          [SKIP][409] ([i915#15102] / [i915#3458]) -> [SKIP][410] ([i915#15102] / [i915#3458] / [i915#4423])
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render.html
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:
>     - shard-rkl:          [SKIP][411] ([i915#1825]) -> [SKIP][412] ([i915#14544] / [i915#1825]) +7 other tests skip
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
>     - shard-rkl:          [SKIP][413] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][414] ([i915#15102] / [i915#3023]) +9 other tests skip
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
> 
>   * igt@kms_joiner@basic-force-ultra-joiner:
>     - shard-rkl:          [SKIP][415] ([i915#14544] / [i915#15458]) -> [SKIP][416] ([i915#15458])
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@kms_joiner@basic-force-ultra-joiner.html
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-3/igt@kms_joiner@basic-force-ultra-joiner.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-ccs-modifier:
>     - shard-rkl:          [SKIP][417] ([i915#14544] / [i915#15709]) -> [SKIP][418] ([i915#15709])
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@kms_plane@pixel-format-y-tiled-ccs-modifier.html
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-3/igt@kms_plane@pixel-format-y-tiled-ccs-modifier.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clamping:
>     - shard-rkl:          [SKIP][419] ([i915#15709]) -> [SKIP][420] ([i915#14544] / [i915#15709])
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-4/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clamping.html
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-6/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clamping.html
> 
>   * igt@kms_pm_backlight@fade-with-suspend:
>     - shard-rkl:          [SKIP][421] ([i915#14544] / [i915#5354]) -> [SKIP][422] ([i915#5354])
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@kms_pm_backlight@fade-with-suspend.html
>    [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-3/igt@kms_pm_backlight@fade-with-suspend.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-tglu:         [SKIP][423] ([i915#15128]) -> [FAIL][424] ([i915#15752])
>    [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html
>    [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-9/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-tglu:         [SKIP][425] ([i915#15739]) -> [SKIP][426] ([i915#15128])
>    [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html
>    [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-tglu-6/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
>     - shard-rkl:          [SKIP][427] ([i915#11520] / [i915#14544]) -> [SKIP][428] ([i915#11520]) +4 other tests skip
>    [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
>    [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-5/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area:
>     - shard-rkl:          [SKIP][429] ([i915#11520]) -> [SKIP][430] ([i915#11520] / [i915#14544]) +2 other tests skip
>    [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-3/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area.html
>    [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-6/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-rkl:          [SKIP][431] ([i915#14544] / [i915#9683]) -> [SKIP][432] ([i915#9683])
>    [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>    [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-3/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@fbc-pr-sprite-render:
>     - shard-dg1:          [SKIP][433] ([i915#1072] / [i915#9732]) -> [SKIP][434] ([i915#1072] / [i915#4423] / [i915#9732]) +2 other tests skip
>    [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-dg1-17/igt@kms_psr@fbc-pr-sprite-render.html
>    [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-dg1-17/igt@kms_psr@fbc-pr-sprite-render.html
> 
>   * igt@kms_psr@pr-primary-mmap-cpu:
>     - shard-rkl:          [SKIP][435] ([i915#1072] / [i915#9732]) -> [SKIP][436] ([i915#1072] / [i915#14544] / [i915#9732]) +3 other tests skip
>    [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-3/igt@kms_psr@pr-primary-mmap-cpu.html
>    [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-6/igt@kms_psr@pr-primary-mmap-cpu.html
> 
>   * igt@kms_psr@psr-cursor-render:
>     - shard-rkl:          [SKIP][437] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][438] ([i915#1072] / [i915#9732]) +9 other tests skip
>    [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@kms_psr@psr-cursor-render.html
>    [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-3/igt@kms_psr@psr-cursor-render.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-rkl:          [SKIP][439] ([i915#14544] / [i915#9685]) -> [SKIP][440] ([i915#9685])
>    [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-rkl:          [SKIP][441] ([i915#5289]) -> [SKIP][442] ([i915#14544] / [i915#5289])
>    [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
>    [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-rkl:          [SKIP][443] ([i915#14544] / [i915#8623]) -> [SKIP][444] ([i915#8623])
>    [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
>    [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-rkl:          [SKIP][445] ([i915#14544] / [i915#15243] / [i915#3555]) -> [SKIP][446] ([i915#15243] / [i915#3555])
>    [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@kms_vrr@flip-dpms.html
>    [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-3/igt@kms_vrr@flip-dpms.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-on:
>     - shard-rkl:          [SKIP][447] ([i915#9917]) -> [SKIP][448] ([i915#14544] / [i915#9917])
>    [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-4/igt@sriov_basic@enable-vfs-autoprobe-on.html
>    [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-on.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
>     - shard-rkl:          [SKIP][449] ([i915#14544] / [i915#9917]) -> [SKIP][450] ([i915#9917])
>    [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18068/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
>    [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/shard-rkl-2/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
> 
>   
>   [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10959]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10959
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12169
>   [i915#12193]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12193
>   [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
>   [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
>   [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
>   [i915#13809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13809
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
>   [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14350]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14350
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
>   [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
>   [i915#15128]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15128
>   [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
>   [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
>   [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
>   [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
>   [i915#15342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342
>   [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
>   [i915#15459]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459
>   [i915#15479]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15479
>   [i915#15500]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15500
>   [i915#15608]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15608
>   [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
>   [i915#15656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15656
>   [i915#15672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15672
>   [i915#15709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
>   [i915#15725]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15725
>   [i915#15733]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733
>   [i915#15734]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15734
>   [i915#15739]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15739
>   [i915#15752]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15752
>   [i915#15759]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759
>   [i915#15764]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15764
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
>   [i915#5566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7178]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7178
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
>   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_18068 -> Patchwork_162408v1
> 
>   CI-20190529: 20190529
>   CI_DRM_18068: 200559e195414731c83ff6da6b34209dbef51227 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8776: 8776
>   Patchwork_162408v1: 200559e195414731c83ff6da6b34209dbef51227 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162408v1/index.html
