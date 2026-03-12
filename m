Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MGJYH1vZsmkAQQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 16:18:51 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC18A27429C
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 16:18:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 350AF10EA46;
	Thu, 12 Mar 2026 15:18:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hDy1ACk6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98E2210EA42;
 Thu, 12 Mar 2026 15:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773328728; x=1804864728;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=CqYN5PRD5y3tXGqszROeeb1DwMvF2qTSYVJdnYfYse4=;
 b=hDy1ACk6mcLW7L6gLVbqDNYYWzbqz+B0/IZD9ovJAAhkQWL6TFyvgf6z
 tO6R9nZyAVb3BCnC8aeln4XXG51M5NEn7mHIppWxwCIrm0Vf/KXZJwqOn
 zNW2oobqe4i7hqcghjqCxMjCxdUVY/P2ItWiqWZI584yaS/cQrhEaNbjP
 p+vBKOCr1GWJggoBRPbN/IUKxQZsIFKDx3C5pQ47lPpeE6o+2UyT5tJrK
 4QFlkm5V9udwi0JsLkPny6RfOrdxAosgrpiN0aKbn6ZpLf1E3YplN/LeO
 ZyqLGQkbIkW6JDtGXjJFzs57ngGTdSfWXPA1ptLI7idwixrF0GM0BuBMD A==;
X-CSE-ConnectionGUID: cAg12AE8Qp6iGGelslI2hg==
X-CSE-MsgGUID: Y32AJTTcTQmD38rW/anLVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="74301291"
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="74301291"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 08:18:47 -0700
X-CSE-ConnectionGUID: /PQ9IzDXTKWreYRa3GoiAg==
X-CSE-MsgGUID: maFJPGMwTYOr7zxamY7B7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="243880440"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 08:18:47 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 08:18:46 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 12 Mar 2026 08:18:46 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.18) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 08:18:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Yc14LqX054zZE2KccIl5ULDqIAZWYpwcZRM5RliLNZzXpfulkE83KMmNePLIjBteafsIKSnJvX/Ksgdjkb3cQaOyRClCABxpHwdKQblO8slMZWRThLd6MdFJ4bjuykZgKhnpxbnQBcI+cOx1fTgE9Zc5grULQ9hXEPG9WDnflCF4F3eaZ7X398bCx0mIhvKJ1iqpriCXsViO7cKqR0ePAwnq7MA1aA5yY9WGCu6f/ip1Xeso/Ob+uUJ274tsd3R4Yukf69+wLFfhxQ5pJhIeWYrJy28a8UjWxcwOWFCSGTYDTjr2+UeINFbjTFdJ3BK/coD3yoM9FE74DTdb6c4GsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z0U6DDl7PKdyknuzjp50gy23l+WpObgkwR9ykMTvTO0=;
 b=LAcyZLB2BUWhLL40f1ACR9OM9TkqLohJyKlwXCvhGWKBzcRzejaEpbsDISqfaSayW59xOOkiPOCSLwmDIHh2GRYB7PDhFQAtbtnZwTD9zcvXshO7oTQ/QmPYImweNvhd+t64vzvgiKZl0vVlXABPhqQD3OBxqLWo0usbtxh9XjoohsPpbShcETQvWPimKuPJAp2ozAzp6cJMnskh+9Ue2njyEZ4u4L2mrg2yJFomUquTt1VAl/i5YOpbMeqPdTRHCSQbqxZxExI71ojK3asuUt3SceuYBIhH1wIn1+88ExownL92JAUcPjyq4aYQu0yWUf/oL4GnE6PSnCZG2MFqDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA0PR11MB7402.namprd11.prod.outlook.com (2603:10b6:208:432::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.4; Thu, 12 Mar
 2026 15:18:43 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9723.000; Thu, 12 Mar 2026
 15:18:42 +0000
Date: Thu, 12 Mar 2026 17:18:35 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "Manna,
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Subject: Re: [PATCH v7 0/3] Panel Replay BW optimization
Message-ID: <abLZS_Xn2mnKAgLq@ideak-desk.lan>
References: <20260312050035.3493690-1-animesh.manna@intel.com>
 <07a6b5ed17b3781aa6f769d92b8409d3519c21ea.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <07a6b5ed17b3781aa6f769d92b8409d3519c21ea.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF0005F6A4.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::28b) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA0PR11MB7402:EE_
X-MS-Office365-Filtering-Correlation-Id: c88ba742-f4b3-4896-fac6-08de804aa584
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: Lislb5BvkQ6vXv4RsF/09+vUM5GTlmBPBdIIrff3OIT8rbtoqM67lOZNQbkXXnJttWOdJb2bSO0eI0qCJLo6JtdjspVI9G36G4UxTSxC7R5hTs0fWTDgy6QPdMsmwKu2Kd91AMtt5o1flKyDE8jObKkWRMNfnYtgvC3TlPx0KNuyv1ULW1vDYzktSjZkt+o7hzFxJbYoUVJRMORe3ZALz11nQCWfSVWZvULzNWmsaivW/viIY96rKsnngHUBbnotdIu+g8e5MtNqUULMH/lTMBMyGyfaAlsDm9qXrecjxWHaESJT11mLY06nfS78jFetzyBGes3G8t2SHpHnlQV8sAMFulUWR4Gpxg+fj5XlZAMgkfIKLn7VKJ+TD6n5Ck7VsLZ9mzbXgrTOgMB1KKIey+3oBxXzXdPaegPUyVckDYOc+MEgdtWhVSJJTmo8kiht6r7mH18BE7yPU1eXW1ylHuK78cktr+uDldpJAp7z8izUDpFdYmpcCGR3+Gxx7Ch7Gelvg6qYTsJsgACO4ig9mKSXmsIWgFNi3uHNeE4uOjj8d6y8D1xgpBoNMac86E98iPA4lsfIq3Vgo42SmKVXqWrX2zDQBDZveWPeAgdgYdsq323GzFFZFdKkZMJf0QVigHn16M35mIJ+El0HXAATm4a1lxlzI/aB1i0ea3NNdMoE7nSMNe6g9zta0gUCsWAqoteyJOu1MDunW8TjI15qpM5Kr2cowOooSrMdnQPSfPw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?ANMu/fbclaB/saZA6xToA7wOXy4MIy1/S8AlV0ltyjrCLZpHwFuPR8l2CL?=
 =?iso-8859-1?Q?HHVAi5Sdf6Nh0KLgB3vLEPKjyhhfLHcdf3/OwT4HseoDbfhBJWhpjlIaK2?=
 =?iso-8859-1?Q?KDvCtkDNEW89FGS57BHD8btNGm83jdw8LNFZmdMLIIB/rI0yE1KlTblAdH?=
 =?iso-8859-1?Q?r91D7gf1Ei4cmm6HciR0e0Zlz0VkiyXpqGalZpOjGEw7BjK71dibwqjwcW?=
 =?iso-8859-1?Q?A+2gSHNz1rJrEuyUz0P9q1nGdOt3bisn2b4zcRhEkyVMhlOBhU/khnp9hp?=
 =?iso-8859-1?Q?tMLMTh+HWpbrLB5T2lSBHIj4ODEteT9fhVodnpa1xPV0mzmkm21t24Uqj/?=
 =?iso-8859-1?Q?vDwHEPnOm/nQth5UQNNEWIsYMkGGzXcKczXc3cL5DcDCLm/77uIjkCRTpr?=
 =?iso-8859-1?Q?SX2U1THPaRkWPw0/wrgHY48p3pJTnxhfie1ma0wwYyTDxSDPS7qi0BM1E+?=
 =?iso-8859-1?Q?gAtEtRGMF0E0Vp0d2YkxZG4f74vH/5132wq5zftJlyzEbpW3vYtV5QOWtB?=
 =?iso-8859-1?Q?IjAa6zz6AHBjozFWCGVcRimjz8pMO3ikCe2ZeZMQ/jHQz7zeocc6L6twMv?=
 =?iso-8859-1?Q?jIQDWNgx5LooyNogktQBvjo0h1/4ciJnmwHh8yE+hA7GremBJWgQFxewu8?=
 =?iso-8859-1?Q?GdOwysjwmvDK4iDZK/L9AFnAxQ3h64AdTAGe3+X9SVfcRVmKsduIKhe7/b?=
 =?iso-8859-1?Q?icXTyXW7j49f6V8kAfPyFnep8Ay/HrpjZOvpyPIMUIfuaF6SnE58uVrKhl?=
 =?iso-8859-1?Q?zt+aA1aan8PEErem2rnqMZNuJikrVoTzwdfAxAhRA+KOLYU/sM+YA6H/gP?=
 =?iso-8859-1?Q?vhb8ow2nx8Z1XbpYy5sOX2ps7eIvUFSuFPcj0prSNvRgePwwhPDBdbZk78?=
 =?iso-8859-1?Q?qSF61SC4dl+W74ZjK0Ix5O+JpQXwtOCTokin9Bt7OpTm/EbngDB/7vadcU?=
 =?iso-8859-1?Q?VFN7PQ/CL6IEy0V3i7jkZDN8eaFy23lG1BJxQuIYrQcrqM6J3ahDBRW6Hf?=
 =?iso-8859-1?Q?eGFq3CbUGWdHN0naU6DM+qZhmbFTtr61Otf7uCCSw3C5CPaxsmVMSWQcnd?=
 =?iso-8859-1?Q?YJkwAS3T6ysRiFmVbDhx+oSJWBV8oQzrqhzMe4JWjJ7AXoq+4kRnekK6dp?=
 =?iso-8859-1?Q?zytU5obo3iHS/wuYCt+/bdCj2qGzuVngcpYGYdFqyIVk/UlDcz94TlkQm1?=
 =?iso-8859-1?Q?PHsN6t873JP0WuONQQcolXkH1lK7GS+FoUeUTLxN9JvHhgyuYFIKm+g9Kx?=
 =?iso-8859-1?Q?LKXaNSu1ar8g8q2suZrE8G70RJuRyWhtEr7kc88yle+MG1Zz1i1Es1fbd7?=
 =?iso-8859-1?Q?0fXEYgzOCHdUFGTcdxLg2ST2gODp2n2M5Ywm3fUqfzMIoM2tUnOOpbEpkJ?=
 =?iso-8859-1?Q?J/qGl1p4p4K/2ThyozbCZXRO5JHL8PR3VOuezIRsg1IIKpo14voC1vUWlj?=
 =?iso-8859-1?Q?999GQoG4sWjfTcy6V0KjTfQXNXmIVHDxX67llOFeQ8vQT2c7pl9iZDRQpG?=
 =?iso-8859-1?Q?vCd7XplweSBaH1lJG5Pq+aSrJsptW9Tn55NLHNlmB+RcH7DFV+gfSzAtCX?=
 =?iso-8859-1?Q?D2se3V4AxVMkB+WZIOJPBVtyBaya1mDX8UeE3h33OCeODQHn2a6VE4pgns?=
 =?iso-8859-1?Q?RM39Vog0xoqbn35grMMRREcOj6jSbrROmQKXvlVmhpr1S0PPe+wsxNQ0nr?=
 =?iso-8859-1?Q?TT5SspXDfeeV0pM7QvS2L65bnDdVZv8rzUfVaEmSmLkGQwNDFEZJFStrdB?=
 =?iso-8859-1?Q?n2Z0MxIBK8sR00cP1U5Hl2gw740D1IaecvX2EDKkxAUJpKv4sf3rzSWfRt?=
 =?iso-8859-1?Q?MD9WFSfssg=3D=3D?=
X-Exchange-RoutingPolicyChecked: rZHAxm/btXaLTsbAEtD7Ogbu4tDrkm1G9DmvWyPTnStnKgw9cSBjdJe9XN/qX3G5A2JwemF1eqXD9YaNMb4ldEzz/cwr+qnAWoc1quvMRf+fk/G/E3eOtItWgTp16h7ivZQP1rewAFphdem70NPsnvSJGmlxS6xIdWxeGlHOsmg8/gjIWwVUzrA90/fW/pSgoanNBaqIrnT4fUHvsJinB55vOwzS53PRETcLCC4Rb5EPfsqYmUB8/5E8rwfRips2HI0CVA8B0EbV7sF1aRJJyT2q8CV9qvqjsw86mLiT7+xozM7l4y1d+CBcswgK5QN96cQNd6si6/QAfZybLO6sxQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: c88ba742-f4b3-4896-fac6-08de804aa584
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2026 15:18:42.7623 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cMWpEma1AHemAMwIWJtnp1YIFNSMeF0+8YMxilFPgVXiKqV+dPDKuSV/b/fET7e2at2RGmQw6i0unkDHUXQUHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7402
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
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:replyto,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,ideak-desk.lan:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-0.903];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BC18A27429C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 12, 2026 at 10:05:35AM +0200, Hogander, Jouni wrote:
> On Thu, 2026-03-12 at 10:30 +0530, Animesh Manna wrote:
> > Unused bandwidth can be used by external display agents for Panel
> > Replay
> > enabled DP panel during idleness with link on. This patch series
> > enabling the same.
> 
> Generic comment on this patch set. Maybe we should add one more patch
> with "Fixes" tag:
> 
> Fixes: e60cff453b82 ("drm/i915/dp: Enable DP tunnel BW allocation mode")
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: <stable@vger.kernel.org> # v6.9+

Why? As I understand the Panel Replay BW optimization on a DP tunneled
link is an _optional_ feature, whereby the free BW can be used by the
Thunderbolt protocol for other purposes than for the given display
stream for which Panel Replay is enabled. IOW, it looks to me a valid
configuration to enable Panel Replay on a DP tunneled link without
enabling the Panel Replay BW optimization on it.

> This patch would just add:
> 
> if (intel_dp_tunnel_bw_alloc_is_enabled(intel_dp)) {
> 	drm_dbg_kms(display->drm,
> 		    "Panel Replay is disabled as DP tunneling enabled\n");
> 	return false;
> }
> 
> into _panel_replay_compute_config. this could be first patch in your
> set. What do you think?
> 
> BR,
> Jouni Högander
> 
> > 
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > 
> > Animesh Manna (3):
> >   drm/i915/display: Add drm helper to check pr optimization support
> >   drm/i915/display: Panel Replay BW optimization for DP2.0 tunneling
> >   drm/i915/display: Disable Panel Replay for DP-tunneling without
> >     optimization
> > 
> >  drivers/gpu/drm/display/drm_dp_tunnel.c       | 17 ++++++++++
> >  .../gpu/drm/i915/display/intel_display_regs.h |  1 +
> >  .../gpu/drm/i915/display/intel_dp_tunnel.c    | 14 +++++++++
> >  .../gpu/drm/i915/display/intel_dp_tunnel.h    |  6 ++++
> >  drivers/gpu/drm/i915/display/intel_psr.c      | 31
> > +++++++++++++++++--
> >  include/drm/display/drm_dp_tunnel.h           |  6 ++++
> >  6 files changed, 73 insertions(+), 2 deletions(-)
> > 
> 
