Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4NDHBPty02lFiQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 10:46:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3AD3A25E2
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 10:46:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E039910E1F4;
	Mon,  6 Apr 2026 08:46:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f0qA5kQK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36F6610E184;
 Mon,  6 Apr 2026 08:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775465208; x=1807001208;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QDG+t9pfMMLFx1xLHKg45pOgpAuj8RKRvcyehH1buT4=;
 b=f0qA5kQKb/jogxfvAhc1OitUKlqS5nuBxz0GcnMoa8vcPl+bXHTENKEP
 ixhfzVbf3tGIuJShmrYgF6e5ZX74k2JoZWVlU3DeVM5t16YXTB96H12gg
 xA8Oz1lyYh/fN+SlmXYrD8cXLsmHhHqzKSfhX9imTuwpAfRnng93DjPes
 nsEj/pNq0BH/aHKlakZ4QpcJmc3GhVBjsAx2qpqnZSSv8k2j0v9Jz3jar
 /mxSMJqzc4ZY1KDd3lg7ZV7aAV6MasT+kk9F6xyzBwJARtScDuEWdbKHT
 qoaoyEQHzQ3sMU2K0QG3OflyC+eSNsdcEosbAq4RalTzFiGUEKUDfGSVU g==;
X-CSE-ConnectionGUID: 84xsUYLRR1qmcuKJ6vlcMA==
X-CSE-MsgGUID: Z52F4yhvR4euwvEHrTWQeA==
X-IronPort-AV: E=McAfee;i="6800,10657,11750"; a="76133371"
X-IronPort-AV: E=Sophos;i="6.23,163,1770624000"; d="scan'208";a="76133371"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 01:46:47 -0700
X-CSE-ConnectionGUID: rCHWgEP+Qj+MKeNApQ0Ubw==
X-CSE-MsgGUID: bn/qbxcLQa+As8zaVSWrYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,163,1770624000"; d="scan'208";a="227732145"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 01:46:46 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 01:46:46 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 6 Apr 2026 01:46:46 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.3) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 01:46:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P7EpzqRTndKUpmjnMOuXc9TRyZt0ZUX8XISaMCFDZu18BLphgSdzWfRnUuzxLK2fhFBwuX/OfU0P5+7tdjP7IxceI9ILJOXWEmjIliLYJeovAa3PUto61NWzzEVSEC20YmHYbb6mLyjwTKEnjLmCUWvh+RI0JWimyvZAyPqZmnr0kNoHXPK7ZDubtyoR8bfc+4e8fN/kyMkbvP3y6olynB5VC0eQ4tddmKtplwNdoCiDQDhToCmwD2/gaHotohQilhXUNfanzz02z2g4acSLBVKcczERK2MgHnsT0VUxaodlCbZUIPg16nV6YygFKH5aIfO7aVnlTe7JceV0+6r5oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0tTFxgaOunp0VJPwIuEZ9UAQS4+rgF7Qs6tFl3SkMJU=;
 b=b3HHYUBwZPkoUncsFVrBorNNme3BDedn6gCPDpAnE0EbKcD4GK45qu0BAdLAbIY0bUzlSCjzuhGlNqlqtoXQqYGM689czC32virGy3AIp8oZpMC+CD9SGpPEK4PNow2PbOjhuM6nWIZiREGJjNau+8dGkAspLvaC21WLJur1DJciOIuZejStI07SfNEgG9WhkSGoP4MZeaVyxU0isZDbvGEA7AL7GM4jenDgpMW3HeL3kW9jwRcRujuaOGYszfwnZt2LeJSv7gSJoaoHkKFcOm6XLW/wCFer6rpoTVqrPmH01uAhbdoJ3zJ9aQdDCy3vEaGT/GG0TM4X90QrLIMLJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ5PPF263E38237.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::81a) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.14; Mon, 6 Apr
 2026 08:46:43 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9769.016; Mon, 6 Apr 2026
 08:46:43 +0000
Message-ID: <46afa3e9-2b2e-439e-9168-930fbca78fff@intel.com>
Date: Mon, 6 Apr 2026 14:16:36 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/9] drm/i915/dp: Require a HDMI sink for YCbCr output via
 PCON
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, Nicolas Frattaroli
 <nicolas.frattaroli@collabora.com>
References: <20260330235339.29479-1-ville.syrjala@linux.intel.com>
 <20260330235339.29479-7-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260330235339.29479-7-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0052.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b8::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ5PPF263E38237:EE_
X-MS-Office365-Filtering-Correlation-Id: 813e140b-4f22-4001-b4b1-08de93b90738
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: BH3za4i/XYpVbvL2GW0dZpVoWeiwEXljtrjEjl7XLJ7ZyudN3cESBD8cpTLhctSVIhKZDExaXFuaoobk78F6RWZ9kBVYmGZZofqTzeyVOeH/JypxPr8dtzQuSYBusnv76Rc0VPipBq1F17vwaAzsMeJ5gX/T09UQ5pmEzEPbvMBy2ayN9zX3n1Aelt5Hg+hyqXpQSOPVv0UwysxEDftKsPQ4thtvII2eA/crk1cYje5OicdkSsL+6+wHHUrqeeMHhv4eWlaK/ykgwek40/pCOojQGs5s28tACMYTFds04kedXNxXDEiVkRg8W0VXgU/UfzRypRgYGYvJth+EzjcXuW+j9re3JDeJfNYhUD05M9QN96zHeQTcHDd2+wlWyd8Roz/jMf59TKvWtJrUGvGsh5vzfh7VlfQSLHpxTPGAaOTHwS0Bcgqd/cbooADpp9W2Pu6m/Eu/R/QQ429xWySjYC402q5E3faMd645UPXHvcKoun9bj6/ECsDyZMRKl3Ci4/NFtMKcG5q4gkp6Dy7vqsrF5hT6QQI+QS+SMlS+uDVN1+io5q5nLyw2vBq9gFpJi5UyuxxPrzZt5Snn5LhYoGth2VJMiIhckOKhVKRa+hRI19RJu/aZpLYK7D+r8ZLJ9ZzmDhULrOYW0toV11+8FWGzoeyff9m3DLk/7ua+2T5liAtBraAUJ/nEaegNZAwGzDb12jSIAQqUvx8PLyyoWG7lKSIv1xSQlFpnJuEiR34=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bWp3QUcvZlRONU1jZUhqaVZrY1h1bCsvakhCQStJcUxkdVF6Z0RkUVdJYWEr?=
 =?utf-8?B?VlJyQnFvRlFGQmJDRWk2Z3lkYlFMeUdDK0UrM0pzdFhGNE5mNjVkcGtrT2Jp?=
 =?utf-8?B?ckd4SmZnZ0dNU0hhZDQ2bnBkdW5qcmxkNFpZakJ2ZS9ZakdNWGR2SXJvc2M0?=
 =?utf-8?B?Ui93U0ZLZkF5RDlKbmtxU3d0WmIrTzg5Z2hnVjdUZVF4TXZLbDUycG1VbFlC?=
 =?utf-8?B?eDU5VDNDTFBRbTgyOU9EUURCc1NwNUZwUk9OcGl6SDVOSllwSndkVFcvaTl1?=
 =?utf-8?B?ZmlxS0pjamtndjFvQlVZYmRkYzFSdVB3b2hCa1pBanVXUldMOWw2bDM5Z1dP?=
 =?utf-8?B?ZzJFcEsxakZnTTU5L2hPZU56U2FQQVg3SytrallvdjlyaHZLeWlpTVIzd2ZP?=
 =?utf-8?B?RGw4OWR5bGlKZk9xdFN4ZjRsWnpXZFd2aUxqN2RmTzlwUFFDRTczbHpEbmg5?=
 =?utf-8?B?d3U1N2dWaHZMY29GZFpKQWZJUksrNjRQVXNnbnNhRHE2dTJQeWhaQldEQkVO?=
 =?utf-8?B?NGtrWTNvNy9vS2JLWXJNOCtPZ0ZpNjV4WnhrYjRjOWY3SHZjRnd1Z3lIKzRF?=
 =?utf-8?B?dFpzMG05VFpHU2pWNHpBZE1LZ3NPRnV5NkFseHdaTG10OXp2SFRzUHlvYlBE?=
 =?utf-8?B?dTc5REt4WWIvcjROR1Z2Nm5tN2hyclh2cnVHd0l3Yyt2akUyc24xbWVuUVcw?=
 =?utf-8?B?ZVdOWkQycVN5MkxSdXB5TnpIejFSMWMyWjhONXFFMm0wWGUyZFRGWU1RWGJj?=
 =?utf-8?B?VDErbkltRjNNMmNNWXVOMm4weUN1RU5GTU5wMkhXOGlXQUpzUUtCL1JaWUVi?=
 =?utf-8?B?WWsxVDgwZnp2TGNBd2dMVXRFWXJMS3BXc3BtYXcvNStTN3A3N1NRSGFSb1Nn?=
 =?utf-8?B?eG9rWG5wRWthVmFGdy9mODZ1dWdONUVOc1pjd3VpSTZHUkhkMENoeENxQVhr?=
 =?utf-8?B?SDVSVFJ1RExMaGMwTjFHUjEyVkxGb3d0djNXbDJ3bGxiKzRWWkxVeW1Mdmh3?=
 =?utf-8?B?elNrYXU5Ulg4dUJ5bVBvVmRYdzVqZ0g2MnRuUWQ5bm50M2M4YktIaTZzbWdw?=
 =?utf-8?B?NnF5VDM5TmQ1UzRIc2RkSS9FM2NqYURiNm50YUxENHNqR0NGbFYyOHhzenk0?=
 =?utf-8?B?Ulc0dXl1SDVHcllYQWZPZXk1TVhmMEYyNzhVT2N6SkpwVmFib1o3dW8xUjhx?=
 =?utf-8?B?VmUwaVIwQmRZRzBUWTJJRlRJbzZ2UTdHams4NXRIejdiRWxtYVArckNuODha?=
 =?utf-8?B?Y3Bsa05ORUJ4UjRZb0wzcC9sdUdsOTRnREtrQXpJUWg3dS9vVTJxSjRkYXl5?=
 =?utf-8?B?MHpESmZyU2F5eHpHVjNReVhVbjV5RWZYMXMyL3RZcndkZnozell6b0ozMGQ2?=
 =?utf-8?B?elo5M1hRSkFXUUhuY1VWQ1hnemVwTTRlTENlRnBneCtGZVA3OGxnT25RdXB4?=
 =?utf-8?B?ajB2TkZ6TmJFWEx0bjk5b21zcDFxcUdiOE1YU0lTSTd4VlhiZUx3b3dFVity?=
 =?utf-8?B?cXoxL3hCcFNPVS9iSkVEVkJZOTB4cGJaeFRuZ3ovTHRaQktLZ0NPUDdSSlg5?=
 =?utf-8?B?dXMrR0JZYmtzenpLa0V6Y05QZDZqa3BlbUxveVRVV1RlVnFKRjV4S1JVcmZr?=
 =?utf-8?B?N1AyWG9xa05YNTlnZTZwaEF4aDZvMmJ2NHZPcm9nQitMT3p3YkEzTDhwelBS?=
 =?utf-8?B?Wit3emRlNFUzblpmWlhBeWt0b0wwc1M4ZXNsUklKWUk4NmpzYU95NGc3eDNs?=
 =?utf-8?B?bnJsdHBOUDhva0RzMmtmUmRLalFIRGxMS0t4dTlJaUhqclNSOCtHRTROSUVa?=
 =?utf-8?B?dTIvOVVKeXVHcDA2R3E5WjdlczdSeXN6eWRXeEd6eCtDMHU0UUdXYkZzV0xV?=
 =?utf-8?B?bzZ2QkhwZ3hOYXQ5aGtZLzdpblJOU1NiaE1mQnBSUkhyQmY1bkJqSTErYXlx?=
 =?utf-8?B?WmU2Z015MmVQT2FVeGJELzVOY1ZvVHNtTXJKeFIvWmdqaGJ5ZXQzVHVYQ29z?=
 =?utf-8?B?SHB5QkVPVnhhL1lWejIwb1ZJejM1UUxYejl6Kzh4ZTUyNjB4T1JpdGhRQ3p5?=
 =?utf-8?B?Yjdva21QL0tmUGtjMHMyM1ZHdHkvbGtDUUtaRzdiME1NRm1IVzh2NkQxOGxx?=
 =?utf-8?B?OFNyKzY0aUtRZHhRVDhud2NDd2dOcG80MEQ2Yi8vZk1JVzhiRnZwcEYydkV6?=
 =?utf-8?B?elRUOWNnOG5PeHFRYUR0SzJmSWNxRzdBcldCc2ZtWmhUK01jaWpTR2ZPK0s2?=
 =?utf-8?B?VFZpckdGUjNmYjQvQ2EwUW5OazBqRTEydVg5Z2w0cXlzdXdCcnRQNjgrdEtC?=
 =?utf-8?B?TW41S0xUSnBjSEJxcmtaMmVyS3NlekdvNjZHMTRGd0dtaFg1Zmw2NTZMbkli?=
 =?utf-8?Q?sTg8tQcVB3R0Jhto=3D?=
X-Exchange-RoutingPolicyChecked: ecI9kQfbpQ1pVmE6DUbK2cOW4gJ0HRgPeGbfTwS0+9C2WrtX3m+TPNo0+zlURzCrtdvJV7p4cGZh5ZNCP+3GOSssR1rwPtsVsTMn5UEEO+QcRGnQ3lhfLr4nnH627zwnpQpH3alJPK3sRaNhmZuq4CkUC3X+RHF/INmdVWLU3PfdoVjdAxn+T136RSq2qdd0194ePd5OXPLOy7p63rP0BvbDy7YwqP0gT4lvTos1BzqmhD2gZ1pomdgzID2mNVCr+eEW6uaqn4w0ykmxFzBJP6iZStc2zZivBetrroIIGz6io7nbVqt/QIh9LLnZ/UZ3d8j48GV7LRouR1voCuAaSQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 813e140b-4f22-4001-b4b1-08de93b90738
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2026 08:46:43.6086 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GrmX/vISqv+Oc7dICWLM8dAy+3uzTSDn+OXBH9RLZo9HE2EF7fizxlGnsvEm+zYxtmxhRsluOqosG8O9ldg3bkQL30Az7IxeceFDRP7XJd4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF263E38237
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid,collabora.com:email];
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
X-Rspamd-Queue-Id: 6A3AD3A25E2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/31/2026 5:23 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> DVI sinks can't deal with YCbCr. Make sure we have a HDMI sink connected
> after the PCON before doing YCbCr 4:2:0 output.
>
> Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 5 +++++
>   1 file changed, 5 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 86319bf09a19..ce40d38557e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1358,10 +1358,15 @@ intel_dp_sink_format_valid(struct intel_connector *connector,
>   			   const struct drm_display_mode *mode,
>   			   enum intel_output_format sink_format)
>   {
> +	struct intel_dp *intel_dp = intel_attached_dp(connector);
>   	const struct drm_display_info *info = &connector->base.display_info;
>   
>   	switch (sink_format) {
>   	case INTEL_OUTPUT_FORMAT_YCBCR420:
> +		if (intel_dp->dfp.min_tmds_clock &&
> +		    !intel_dp_has_hdmi_sink(intel_dp))
> +			return MODE_NO_420;
> +
>   		if (!connector->base.ycbcr_420_allowed ||
>   		    !drm_mode_is_420(info, mode))
>   			return MODE_NO_420;
