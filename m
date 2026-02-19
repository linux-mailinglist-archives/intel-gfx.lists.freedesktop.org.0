Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yMjUF35Wl2lPxAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 19:29:18 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AAE161AE5
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 19:29:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7048A10E73C;
	Thu, 19 Feb 2026 18:29:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xy31tzPm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1CAE10E735;
 Thu, 19 Feb 2026 18:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771525753; x=1803061753;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=rTHaVjtpb1qslGU4NQiWqJs10IrOe4wNKLO+sQXRres=;
 b=Xy31tzPmcLf0vO/OF5Rp0lzRyX0Yq4HMBV0CcDQ3ADyNdPuzjb6h7jh4
 wINkIjIKTU181CvrsmoAUyMzs7SZF7vkNTj01fpjTZtoTBaBnkSrTfMHy
 xkOxelUgonj8DiR6F3pE5qoFCltcuPmo9YHnbvtBKKJLJIZ++55cRDOy2
 icHvZS/bZI209qpGdgGEc2+y15EfMBgI4HGp2BX+MF9iZdJAj3X+FmmlA
 +2+JtAM77IH8xh3k4VRta7nu8sTgeLSd/BNSTmLiGNWALpLRFR5t6cX56
 ipN8xuKUIGB4QAVlrBuq07wvcrN7ezAUcnsM7XJ8AGG7pBzETEEdfI7ak Q==;
X-CSE-ConnectionGUID: 4OLw1brcSc+gMT1bxpDWew==
X-CSE-MsgGUID: 7h7fDEW0RFiWNm/RMHJUJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="72529197"
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="72529197"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 10:29:13 -0800
X-CSE-ConnectionGUID: 2u8VBml6So+PPZ5JDoCswQ==
X-CSE-MsgGUID: Y+oqAWZPSG+CFsrpE4tXxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="214734754"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 10:29:14 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 10:29:12 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 19 Feb 2026 10:29:12 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.15) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 10:29:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dYTVWcnoQz+M9K9zgIYcm2AnwWpkMzFGyhRcw7XsygDMs5iGEXaFuPvvc1RM/ro4pgAmvZeLQfVIBjmBwkSpiEPkkh6sto9qGxP816F3rK7TeeFSBUxoWsWm0/SfT274+2F26IuUR7B/jYJNM7EDrQrHu9jzOtOOVzpobIslTUTHi+KFSGEEsS8flnBaA3tL8TKM6VssLpqrH2f+EOlIZes0pSvnWhiaZ030vx2Siz/SRuTGKYjjThc3JjlSAIsV/4xac3nTnSUmO3MVLbjzJEMmA024CU1MWVU58sHo2xZwRyntLchOvr/lBmENb414dRuqSoGCjqrGmJHiFygNgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sZmygpbqcdnpWoGDZzB8UX30vjCWT83MPGhKzYkr08E=;
 b=qx4tAprcTIXee5v0hIi0x5o6yeuIijux/Q6uzuwEs5BIknkKhw+WGtFDP4p3wPTJ7CjQCREjiC740cEg1xLwEV/li9/+bXTUGFMj79hDBV9ghZXSRw1pCaecAg5EevhKFiG/yEvjQBRLOntTpczg3ry7E7A3DLyYH/Wp3I7syWx7isYcit4/cwqaH2VAcrKcYYDGJMN8CObzV16II4d7dsiOzohdtcMs0icbTzfqIQQhLlY9K7uo5pgXQX8dQ244RI/dQFnsqjzLHrxPOOOJmjmIUOYM7C+JVZT4H4jM9B1kBECH3mHyxATthyTIYvLEO4N5ObsVH071gTUvFrxIQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CO1PR11MB5059.namprd11.prod.outlook.com (2603:10b6:303:9a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.16; Thu, 19 Feb
 2026 18:29:08 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.010; Thu, 19 Feb 2026
 18:29:08 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 4/5] drm/i915/dp_tunnel: Sanitize documentation of
 intel_dp_tunnel_detect()
Date: Thu, 19 Feb 2026 20:28:22 +0200
Message-ID: <20260219182823.926702-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260219182823.926702-1-imre.deak@intel.com>
References: <20260219182823.926702-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF00006627.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::3cd) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CO1PR11MB5059:EE_
X-MS-Office365-Filtering-Correlation-Id: fc21f0ad-c8bf-46e3-e736-08de6fe4c54d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?cx82rw914+8THmwveJgEJSmgTVXJAjLvyyYkY4O3wPu4wIz+bO1igzhQ3hbk?=
 =?us-ascii?Q?RgHjE5TjkUF8In3mtpfHsbyeiOLZtS311h/vzR0J2TwZinur5In5QiwJIVOz?=
 =?us-ascii?Q?UU2PkHU4G9r6AhboioNDBYGrxrBSy3OTwqngXka8FcuYnD2r6GfQSKh0f2fX?=
 =?us-ascii?Q?XxSuqaSBRO9omSv6ajH/fQtMBMvIyQHpM0c26CxMQn8Kvu7kLfhjtgyugJvx?=
 =?us-ascii?Q?3tiHSLp+jxN/Aj3S7/W8cuTRa75KerAZVqAEBvEC7G3m/ucjLkv3UifX9YGg?=
 =?us-ascii?Q?OyZEe6NPdp7tgVEGXw4ad1n4ws+k8QaXFqem4MUCMbmq4inPJZChbWf5B9YR?=
 =?us-ascii?Q?Pc783PR7AQUHxoLBJjbFeN/adRhHlIAht6zBuWrEAdvheANNhEApV7TIBIem?=
 =?us-ascii?Q?RgQ/VcwvKLWjNyACAfjZrBYe6UwXSEIWvZeiN81/fDZ1i0z5FbcWdq9F9pVj?=
 =?us-ascii?Q?IrLmYOVfj+xYqZpZI7jfJSnoB5aaAZgQ3Tec8wxF4y8H37j9AzA50GhD/rz8?=
 =?us-ascii?Q?C7/+hqKwcIEwe9Oaux1c0c4od4Nwv9SfLL3b7F077OEkaSXdttdjCsuXV/of?=
 =?us-ascii?Q?juyZWKd5c3jgsZQXvU0aa6qtGC0V4cpYwpSpmJtwBp69Hj1ynIE+eiWFnhKH?=
 =?us-ascii?Q?SrOeGyG433/pdC78o9EpxApQ++aL6YTOodKlueM2vNXVmJRYvwzwg9UPDjsh?=
 =?us-ascii?Q?WA27VwkDw9tWNjCC4xafjSF2/2KupGXQ3zXpV9sd3vZ4tptcC9liG8Mv1/2R?=
 =?us-ascii?Q?0W9hVdK2fCFNkbklAkLm5jxCHhx29sgv/7FkyCwuplPElKqfpt1GWX7ZMqWV?=
 =?us-ascii?Q?hDIJ2cCUHwhaeXXIjWMUMoQLtm3jOeZBOTOXLN7Hxbq+b+7T8w24+eAa2TmM?=
 =?us-ascii?Q?7Ql6gu1Q2j7hICIdM2fEHe8TZF0QMINHwC3UEQZtwc4MazIa9B6b6Salq2zu?=
 =?us-ascii?Q?cNsgXt//VkB5KGM8e6vEcEmnejKLJGmCX3ZrHqIC7rMLkdxr2zyBHvUF8aC4?=
 =?us-ascii?Q?xc/K+fvYIu13P+kN6ReBnioM94hMW55XKU5a4UwOyH96BS6qVIVyVZqGZinb?=
 =?us-ascii?Q?MUSsTTOMleF3+FDxp6qsl9VvLYlphSFpzNIInFOB95E98gA3AUqykPhqxFeC?=
 =?us-ascii?Q?qOHAGVebAZjEosNs3Gva5BRu056xA7g0izwQVP7+kMx95F+emIm++8Kvk1PY?=
 =?us-ascii?Q?2G3hikSDgJaXg4h2/PaDDkpzrv/YmIC9cZYDQbLn9mgJQrZKBKPVcWaEBIRp?=
 =?us-ascii?Q?0mRLVUzbuufzcXcXOXmD45EPuoIMJmsIdGdrUxJcPcsCgSdOV7DI0TWORbW5?=
 =?us-ascii?Q?gyf6QlZr3OZrEI+rwzXg8NwZ+NC5Ea7k+EOiSXMBlMTwmmbw1wXvw5SRW8p9?=
 =?us-ascii?Q?yD6OHASvdArjgXtr8SO9eRmkfoYaYZbNOKqNGsQ7/+nCMmr1aa37CRrcq9PL?=
 =?us-ascii?Q?mVZD71MRqqfM5kwrPCDWcpANIXK1s8+9hGKA+ciP9oZx413oe5fhC0fqZ9ZK?=
 =?us-ascii?Q?7p5o+wk9QKbRFUpCaxwKvfWaLD+4gWHBWBWYd0DQ5peHTV3/LQs54RWNGcSb?=
 =?us-ascii?Q?w5gjp3LdiniD6D3gjaw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/E/k2xEqC5fEf8BjlDC6X0jCkcdcB0H49pCVmonT65J7p/VBCy7TMokhIVX3?=
 =?us-ascii?Q?CDqwOb1OnWT5fAjneiOnVa7M5sCJc7TswlpFJU/MKu9JxwSYnLqNP1qd97Kb?=
 =?us-ascii?Q?HOZFtD0AVpR8QpXGxpcDU2/4OloItAo7E5cx0u1Z1Mxr6MZnVggUO5G+jUEc?=
 =?us-ascii?Q?D9t0olcqmBNxdzEgyPJEI113KceWjjFyh295esK/sWuwVRcli/Jm5+N60t7q?=
 =?us-ascii?Q?2UVuOOTBsEwru3JMAPOoJlbiN7HGIgNN3PAxdv8pTkNdrCycFW1ksiHCYaWK?=
 =?us-ascii?Q?HjwcTvL4+BDtTySuY+vUwE4zPdCmsghHmlORa92BsNZebPqoxCxM4mYpROkr?=
 =?us-ascii?Q?cd4ou8RXnxqXIZmYldJ05Xd5vdTlqADmu0zJE07MCOv8aOJ3R8DgVYptLocS?=
 =?us-ascii?Q?LirArQeZhSOsea0g2g83J2KbXi90Jiejx2BM9mhDmq/JAvsPUh3GC0ovnhQn?=
 =?us-ascii?Q?qPEPqIx/Pk9w2rawl3c3z6UhPq0z0aHvAs27uWrieSRrav0fchHcWnb3Ussn?=
 =?us-ascii?Q?3M6s7QAA3KRK9b9fMIEtkmZY5g/2s7VVw7h2Z85jBb3wn5lCiKHAO6jO+JgI?=
 =?us-ascii?Q?2DgzBUriynQFGAjqf/PRKisSfOKllcef2Ou3I+jQ2DhnGRKfS95ZIRBuUdVI?=
 =?us-ascii?Q?d76IZFnNHFQnW27VzXWlLrl5pK0+zrw0Xlyxio3FCBs6ogtmxPIuQiKgOZXL?=
 =?us-ascii?Q?PTmxwop2cu0P30oXGiVuatoHEBdxG7DGBkffGBXgk1E1BDuBBGiGpVc5KKPa?=
 =?us-ascii?Q?plENXhIo2K/DIkGeXIQ7pstlktb2px77MaAmOU9+Xffq19iuWPDy1alJzoPI?=
 =?us-ascii?Q?1Z7CCSbE8nVl0iuFy28ZMtzHIfr+/YVEPg2R9sDhjKmUnJomFrKQheyrJJYN?=
 =?us-ascii?Q?A2XwRtaW0mBoZkWTU9guYbMrTGuvgoPhRbr1vtb+1+v1rrcq/QQBTDpYKbjd?=
 =?us-ascii?Q?arTVpj1+nkncRf0TtEGhK+xsQpAqy96ex+vdO9mG0NrzP5CqHbkiz9bMT0Cj?=
 =?us-ascii?Q?bjO19k2y7EJHLkE1pqThQOWXn/u5AzOuKJ7N4FxEbHAViO/pGMUDnRL5xqKf?=
 =?us-ascii?Q?3kzgOO9k44Ak8vKY9pLwdPnfwOfdKNQNmD9e21+3VjaPlnmHtx8GWVKgenFB?=
 =?us-ascii?Q?TlEvBzvTjZEEvz1MC65G4YRUv8NF4SEQR9I4HcPufmH/lkeFh4PUwE0Dsprc?=
 =?us-ascii?Q?RvVLf8Lze87v8PeuEJ4e5CFz3Hmq1j6LmxIpycM02ersksrol7ddlcyUBObn?=
 =?us-ascii?Q?FDcMMy/BZt1h/hxJeoCGyjhCg7gbCAHw+A0fwzSkMTK/s0wNUMXLl9Nts2KW?=
 =?us-ascii?Q?5RupEAFh3meJ3Dnvx5z038MU5XAwNYvwR8tmxkJivlk2qpFfr2RpiQA/xdTv?=
 =?us-ascii?Q?zgs5Ufc73XAuISHvHD/KrCIqsoxrwKHppYXonztJ1ZIw6Y0gH6MyM+L8IZZW?=
 =?us-ascii?Q?R+vq5aHv5sYqppMkjsmtBfEMybWjzGrD4gw5N8zXxZcW9zo72cFAmqPxXd8L?=
 =?us-ascii?Q?jJM9yCtCkzwNOqeT1s68+c0zVwfow7i7Z2EQ4OKO/XUUFeGRyolLgLU75rA0?=
 =?us-ascii?Q?Pk7Y6dGxpbMfCHaTayRH/zchq7Ort/PSpjPibsfVGEHardtzjsCj+EeDhcrE?=
 =?us-ascii?Q?8Jez3ySUAuldfxUyowxSmQ1qTZ5HcWaZ+golLOdj2af9qbhklHWGDwnYdR/B?=
 =?us-ascii?Q?tLjGBpFyA1OzueIT7DIt0vLmuzacKkMsovKCXA3eiHRNQrlF0XoveK/tQrQ8?=
 =?us-ascii?Q?cHNCnrklTg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fc21f0ad-c8bf-46e3-e736-08de6fe4c54d
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2026 18:29:08.7411 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o4v9dSv43UQZaYGn863DlMoj5rd0TRwXlfc//1OfGK+4ukXzg2aDNGgP81rHXCPw+nOm4R0Wfqs7pXGwKnXEJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5059
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 06AAE161AE5
X-Rspamd-Action: no action

Clarify the documentation of detect_new_tunnel() return values,
including the failure case.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_tunnel.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index 5840b92dace19..1c552a7091897 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -241,9 +241,12 @@ static int detect_new_tunnel(struct intel_dp *intel_dp, struct drm_modeset_acqui
  * tunnel. If the tunnel's state change requires this - for instance the
  * tunnel's group ID has changed - the tunnel will be dropped and recreated.
  *
- * Return 0 in case of success - after any tunnel detected and added to
- * @intel_dp - 1 in case the BW on an already existing tunnel has changed in a
- * way that requires notifying user space.
+ * Returns:
+ * - 0 in case of success - after any tunnel detected and added to @intel_dp
+ * - 1 in case the link BW via the new or an already existing tunnel has changed
+ *   in a way that requires notifying user space
+ * - Negative error code, if creating a new tunnel or updating the tunnel
+ *   state failed
  */
 int intel_dp_tunnel_detect(struct intel_dp *intel_dp, struct drm_modeset_acquire_ctx *ctx)
 {
-- 
2.49.1

