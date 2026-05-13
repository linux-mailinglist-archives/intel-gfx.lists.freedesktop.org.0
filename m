Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0EY4KRWRBGoVLgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 16:56:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5835358E3
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 16:56:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1471E10E326;
	Wed, 13 May 2026 14:56:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D13HNb30";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 619DD10E326;
 Wed, 13 May 2026 14:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778684177; x=1810220177;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=ScSh9QbnMWV1GLQ1rNqVoMBWlfFBpa9KHSBN+ZZdZMc=;
 b=D13HNb30VyI2taA8DdbudGZI4OCBmrquH/swSstrjZCY8RfzA1msNevH
 urlc65IJ10H5mmM4kczjNf8CtKOaFv9iI5rdhHMLOUu/u8ToOjzO85x4D
 vQ1WInpxR5FC92GFnLhMsSM4NtZu8zd3E+lyXlvVb+3sOY8tyZdLB4bp7
 4J2MZIn2YMU9nzqP8qeDHkt9XkjYS1v4zKt6tn6R/kMA2KsnpMzvkTB4X
 LmoGVwu0MYkbkm7hLVhHc6yC9d5lUlK5XVTcVYtKozviorEOuDJmdBm0u
 dYr/9SvE2HRxsrHV448QyO2jBjfd6FO3MrvdXn9QB5UeL9dlNDuJNVOUQ g==;
X-CSE-ConnectionGUID: 7R3SnTONRtWm4XXgg+d5XA==
X-CSE-MsgGUID: djtVXOOxQXiSNysGlRWuqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="90997429"
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="90997429"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 07:56:17 -0700
X-CSE-ConnectionGUID: MSkpUZI3Ra68zUxAGFcgmQ==
X-CSE-MsgGUID: S816A4U/Qt+wlarwkCsz3A==
X-ExtLoop1: 1
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 07:56:17 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 13 May 2026 07:56:16 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 13 May 2026 07:56:16 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.17) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 13 May 2026 07:56:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aKxxFFD5KQs1x6lNp3WvgUxZHLZoRETYlGw3sZ5p1N7YKSS0F6d9164mMhJ2yuFu7Sb0bmkaCTqpzWKnDX2Q/1Vn0T8IPJA5YGNeLBSAizmkwTxvxqMnapWAeiZLTY4jfPaHB+gVzMHOOWmiRUbCvHa58O7WXlK5+t+YvZUEBevtnxDhkrGqwOFBy0NjErq8h2CabPo0wTMCBgqDS5j3DS+iWPoExr8CMF8GJxEobeLngiapS3+O9LV6CRVeNyINyYuI36LJaWXfoPSEbugyqgMKG5QnLBK9R6HP/OHEyRJJNyt3zXCwIyAWUPP2kH7SuP+xw9nyKvm8yg1JQHgMbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QzRQdcRn1L420q7QfTbzQgnw74xoqNECi/zx/fdJI5g=;
 b=mYGkZTzw37ZrFrysz5dX2wsBu1l9/AC+WCmgCTtHTvaj36Y02ttjdInrifbFs+6QKJJddeoigDTZbZ67rZf9q0JXvIN5ATJPJJZREn15sp+2TXHeYtXhvHVt8Lw36xiZYz+axwurzbzX4Oz3BZJ2nJzUHDvFIuRIgnYP/1dA+0hd1QiZcMtIJFRCgLl9A+8dn53nm4Fjl+b3da/8XaT74Q8LeLfPBKYNF05JK1mg9tQoBIrXcFF3cg19wcRxEZxLKW8S91PjcJu5XFchMq7qop1D1nMYIV8AJBzL+AiAk4XoQHSg4pC90QOyTYq0IKYhlACeqOTVqbW2c5R5o5rDdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB3658.namprd11.prod.outlook.com (2603:10b6:5:142::24)
 by PH0PR11MB7660.namprd11.prod.outlook.com (2603:10b6:510:26f::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Wed, 13 May
 2026 14:56:13 +0000
Received: from DM6PR11MB3658.namprd11.prod.outlook.com
 ([fe80::2c3:cb39:90c:2542]) by DM6PR11MB3658.namprd11.prod.outlook.com
 ([fe80::2c3:cb39:90c:2542%3]) with mapi id 15.20.9870.023; Wed, 13 May 2026
 14:56:13 +0000
Date: Wed, 13 May 2026 17:56:06 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [RESEND 1/6] drm/{i915, xe}: move
 xe_display_flush_cleanup_work() to i915 display
Message-ID: <agSRBmiw7mVNxKC2@ideak-desk.lan>
References: <cover.1778659089.git.jani.nikula@intel.com>
 <7aecde385b66dbf7d0e61759528c6cd643581a3d.1778659089.git.jani.nikula@intel.com>
 <agRp6Was9FCQbKee@intel.com>
 <a6cb2e030e9118084abfc315c557a8b11d8db3d7@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a6cb2e030e9118084abfc315c557a8b11d8db3d7@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3P280CA0039.SWEP280.PROD.OUTLOOK.COM (2603:10a6:150:9::8)
 To DM6PR11MB3658.namprd11.prod.outlook.com
 (2603:10b6:5:142::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3658:EE_|PH0PR11MB7660:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ae36ca3-9c8d-4263-74aa-08deb0ffc679
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|22082099003|18002099003|11063799003;
X-Microsoft-Antispam-Message-Info: z79kWt32pqtzQcOnORfqfIk66/4MY97UzOP2/U5upKMZ/tRObbGRsGoppEbvkK0Miqj5VSZxQnMYlW1ruFYcNlXfjefDI2XjjBz/YFvbp//WSRGAGbRMpmJwHrdujxhmFdb8MKvAdg0UyqZBbwmrkf/YYh8RnOoLvgD/Au4oz6y5UtKP+0i4FWsbf8cSrFr83HYBKhR02ylF0JtVulxMH2gJQJoo48G3KRvPm2k5QybLB1lmW4qLPAQhtSwSXGMNhwvY4LXWkQlBd1bShWKg79yz980AXF0eXuQcrjdNKBwmDdoEdeUqU9anpj/lwOeFm8h7+LK9TAC5j8TNmPSu7rDlpx4+vmrt00ZcAKInJQYH4H6b+bsmJpG3NmQk/p/pma4PPwIZbHrjlnu/9Z/cFm7GbGTi3XUEz6UxZJ27OaKZI9CcPXZ5zT9wad0S8o4M5ZcRYYX4TVwushKsRqWtSHOkdToMSlFtnNVJLjoCwHtnY9PA1yrev1strwJ5XqDnIL0OGntAi2QTWTI11rL6r2/xdVJRQj8HM1cBconyOMT7mSvVmL4sxnAzytiY+cKYeiGM0PemSfRit6rpPRXRQRrhshQ9O3Jh/CxpUcQLJ7VWjCHRf+tEL6D3KUBSiH3V4te+3Jba7yCkMjbn5w5paRZysVYjcLfQFLYoYSQnamls+u/f+nPtIO9ZfFJ8Adn8cK/BTGnD4oRRwfK2RuMsrQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3658.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(22082099003)(18002099003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?TmmWmz9DPLc6++atE5HUKpbs0u6WcYCB5COy02EA46cBLP1OPY4lcL6OMy?=
 =?iso-8859-1?Q?2fRLGNAg6zpCe6Gd/aEXWAJba1r5X/6aIcqaflXCiVhwULlyXw+pX90mvX?=
 =?iso-8859-1?Q?wjNZ5ukYaMhsfJ+fbqJdi/1/zq+d+jWcYrRQusYla3qYz88DV8s/gCdrMx?=
 =?iso-8859-1?Q?iMQ/3xjFi+OiJjeprn+iccLDKoDIMGmCDsmLMNjgLok7G2xDSC781h4VQx?=
 =?iso-8859-1?Q?LSVyd/0OD0YXhmXpeboFEt0EiQ11fTUsLUKFTapuGxWQPEKYm6okMYqLbG?=
 =?iso-8859-1?Q?MR5j4VsV+mWSej8M5aRJn5FCkUz/cBYtBdfMXwce7Lrp57jrJ1SNssjLCO?=
 =?iso-8859-1?Q?+8twMZM6YFWpPbcxwwR6a432mh1lozG/taKrt3xVx9Hxr2CuOkHz/Qi02l?=
 =?iso-8859-1?Q?8U7vrYUnacNvwKwk+f9VPVI2LWtA7oq4W1lu4kuHDp91MwiOkukkhkeK0J?=
 =?iso-8859-1?Q?JT+Xz8CUl+ZPRXHffP6Hehq81hV7EmbcazmkNL71Ng/HEnTvT9PzeIN0xC?=
 =?iso-8859-1?Q?O+Ed4NSWnrwjdqsZTIdAgMLV/BB8HepRNOT13ldE4iiZoDC6dPu9SyhBPZ?=
 =?iso-8859-1?Q?SKPsH0PwLxRhI9AxSQuvIE5Oqxc+ttzE4aSgdBC7+iYzMWdsLoDmFCrXcI?=
 =?iso-8859-1?Q?6gVJqHvIrvq8Xzmsj2vWt8W3+M/Qh06ZIpDRn3vQg04eygLnh76L0iCudw?=
 =?iso-8859-1?Q?gFNiSFzFBkn8Ejs5WZCQurSd/+KK60In9IQNivlFPLyvqE5w2AxIcatDXs?=
 =?iso-8859-1?Q?LHI+NA7FGd6PewfCqjrMzUp4czB30U0VZAq6DPQEmkpbvUqrZOptZf2PQ2?=
 =?iso-8859-1?Q?IUcAyOMfhJRsXfnk/ljuT6V+W1+gFaBx3AcPVmVaa+LUL0sX/rbh3eHpvI?=
 =?iso-8859-1?Q?wvH4QJ+J1efWz5n0p9gr8l5/FYDK0fE6wY8Un20Ffb2I6o1WVgR643PbwV?=
 =?iso-8859-1?Q?6128yG3rAViIhPP7oEjoW3KNv1YL5P5fNxmu80iS06050wkWWaklW3GVGg?=
 =?iso-8859-1?Q?ADmyXwzHHS49cEJ4jCSsxRjmBvICg4d42zSGxlXqcFiUZCkbn7c/09P/bU?=
 =?iso-8859-1?Q?agNLODQF1CO8EZv6BHOpGLNLfO+VJaVrLCDTxrOmeam0iguMwwEoVQGNP8?=
 =?iso-8859-1?Q?x2ynuwBnMze9gLeUNMXXBI9/XrAgPf6dsWhW+lY1n5Y/uU3Upc9Mn2nYM4?=
 =?iso-8859-1?Q?5GrlGzX1wTy9eyz047p/r0hYTYiS6qhLNohlNbGEkteKR7l6sE/nuQLr1y?=
 =?iso-8859-1?Q?JFeuL7chVk8H4X4CXA+v7qqVoeBmqex0I6DaBqJQirGRUTwVTmRThblBx6?=
 =?iso-8859-1?Q?XVpAGgqBRnBRncLSbpwXLTdSSDyf3AKLE/xmMCBV7Ca6k6TlA/5LDOHcJW?=
 =?iso-8859-1?Q?9znjPC7D33z2zuBdtEiABsU1rqIw+/tks2JPxFncwLDWTingVCcefbpX+f?=
 =?iso-8859-1?Q?f5uDN6qy3MtMhvNKcFhwzvH5SzGDjWqpatMsIAzw470Qm5x0c4a57/0zj7?=
 =?iso-8859-1?Q?N9f1VpKCkTuFVvJUiyWEG+NO3mKfpuaySQiuXRNcrEyn+e7bjCo+c9UovN?=
 =?iso-8859-1?Q?phoV8kNExnzkRxMsDE11tUhjJeI1urWRdwcyTdfXtyU5+pZu/x+EgvcBf/?=
 =?iso-8859-1?Q?TFYZ09IKVPL/qMXp9GKxksN5Vg3LInRXacJARJ8HTUx+PD0ek5/jp762oj?=
 =?iso-8859-1?Q?dhhD9CETo5cztfcneNAPwPS76c73cOaZgCt2VYbZvRhC89dcUtRBbDeVxj?=
 =?iso-8859-1?Q?nKwyzbs/d4KEGwpBUMx6zvFR9JGoC9HHiMVfolmD7SV3MmP8+WiNB4jKO8?=
 =?iso-8859-1?Q?zEFijGAyBA=3D=3D?=
X-Exchange-RoutingPolicyChecked: akiCniJlKYwrW5gR2eMD1os4OqTiEdCNMHwVyVzW/B4/SNEfx+KqCbKuoRdQKMjrhH99+DligoFKMfQqtYeay9zoclJNM8SZ/mkX7+v2W4XSTs0SXs0Pl0jApm2Jkc392ZkXP4K++DLkiZL2EPLe+M+1H+CUnI3VTzyiU38w1DMcsAuc+dpur6V8XRkn3wVZq6UajBPpSQlA3LlXo/pYSBGgesVvx73NZsX7Q4yvGqd3eIGFEqKd9xv61+/ePKQBjI+tcfxKtx0eMM8/lTfjj5qA+HVjgB5VWC1DdA2g4GnHaMB2FaxT82U65GSiL6kZdP1tEZnax2HgGcBpAF8m2g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ae36ca3-9c8d-4263-74aa-08deb0ffc679
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3658.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2026 14:56:13.0249 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ujsXaJbfxlwG82U0jkXh69mYyXMkM3b6luvzXfUpveAShY522VDWZNoQrJWE9zr037aKOAIXKI3ylORluiLoAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7660
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
X-Rspamd-Queue-Id: 0E5835358E3
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:replyto,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.746];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Wed, May 13, 2026 at 05:19:19PM +0300, Jani Nikula wrote:
> On Wed, 13 May 2026, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Wed, May 13, 2026 at 10:58:35AM +0300, Jani Nikula wrote:
> >> xe_display_flush_cleanup_work() is a bit of an oddball function in xe
> >> display code. There shouldn't be anything this specific or xe
> >> specific. While I'm not sure what the correct refactor for the function
> >> should be, move it to shared display code for starters, next to the
> >> eerily similar but slightly different intel_has_pending_fb_unpin() that
> >> is only called from i915 core.
> >> 
> >> The main goal here is to unblock some refactors on
> >> for_each_intel_crtc().
> >> 
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_display.c | 21 +++++++++++++++
> >>  drivers/gpu/drm/i915/display/intel_display.h |  1 +
> >>  drivers/gpu/drm/xe/display/xe_display.c      | 27 +++-----------------
> >>  3 files changed, 25 insertions(+), 24 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> >> index d5cf1476c7b9..50feca52b962 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >> @@ -737,6 +737,27 @@ bool intel_has_pending_fb_unpin(struct intel_display *display)
> >>  	return false;
> >>  }
> >>  
> >> +void intel_display_flush_cleanup_work(struct intel_display *display)
> >> +{
> >> +	struct intel_crtc *crtc;
> >> +
> >> +	for_each_intel_crtc(display->drm, crtc) {
> >> +		struct drm_crtc_commit *commit;
> >> +
> >> +		spin_lock(&crtc->base.commit_lock);
> >> +		commit = list_first_entry_or_null(&crtc->base.commit_list,
> >> +						  struct drm_crtc_commit, commit_entry);
> >> +		if (commit)
> >> +			drm_crtc_commit_get(commit);
> >> +		spin_unlock(&crtc->base.commit_lock);
> >> +
> >> +		if (commit) {
> >> +			wait_for_completion(&commit->cleanup_done);
> >> +			drm_crtc_commit_put(commit);
> >> +		}
> >> +	}
> >> +}
> >> +
> >>  /*
> >>   * Finds the encoder associated with the given CRTC. This can only be
> >>   * used when we know that the CRTC isn't feeding multiple encoders!
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> >> index a43ada0c0502..65f8c81a7bae 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> >> @@ -402,6 +402,7 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state);
> >>  void i830_enable_pipe(struct intel_display *display, enum pipe pipe);
> >>  void i830_disable_pipe(struct intel_display *display, enum pipe pipe);
> >>  bool intel_has_pending_fb_unpin(struct intel_display *display);
> >> +void intel_display_flush_cleanup_work(struct intel_display *display);
> >>  void intel_encoder_destroy(struct drm_encoder *encoder);
> >>  struct drm_display_mode *
> >>  intel_encoder_current_mode(struct intel_encoder *encoder);
> >> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> >> index aa73023b7398..ef27fdfdbab2 100644
> >> --- a/drivers/gpu/drm/xe/display/xe_display.c
> >> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> >> @@ -258,27 +258,6 @@ static bool suspend_to_idle(void)
> >>  	return false;
> >>  }
> >>  
> >> -static void xe_display_flush_cleanup_work(struct xe_device *xe)
> >> -{
> >> -	struct intel_crtc *crtc;
> >> -
> >> -	for_each_intel_crtc(&xe->drm, crtc) {
> >> -		struct drm_crtc_commit *commit;
> >> -
> >> -		spin_lock(&crtc->base.commit_lock);
> >> -		commit = list_first_entry_or_null(&crtc->base.commit_list,
> >> -						  struct drm_crtc_commit, commit_entry);
> >> -		if (commit)
> >> -			drm_crtc_commit_get(commit);
> >> -		spin_unlock(&crtc->base.commit_lock);
> >> -
> >> -		if (commit) {
> >> -			wait_for_completion(&commit->cleanup_done);
> >> -			drm_crtc_commit_put(commit);
> >> -		}
> >> -	}
> >> -}
> >> -
> >>  static void xe_display_enable_d3cold(struct xe_device *xe)
> >>  {
> >>  	struct intel_display *display = xe->display;
> >> @@ -292,7 +271,7 @@ static void xe_display_enable_d3cold(struct xe_device *xe)
> >>  	 */
> >>  	intel_power_domains_disable(display);
> >>  
> >> -	xe_display_flush_cleanup_work(xe);
> >> +	intel_display_flush_cleanup_work(display);
> >>  
> >>  	intel_opregion_suspend(display, PCI_D3cold);
> >>  
> >> @@ -347,7 +326,7 @@ void xe_display_pm_suspend(struct xe_device *xe)
> >>  		intel_display_driver_suspend(display);
> >>  	}
> >>  
> >> -	xe_display_flush_cleanup_work(xe);
> >> +	intel_display_flush_cleanup_work(display);
> >
> > intel_display_driver_suspend() already flushes the cleanup wq. So I
> > think this is doing nothing. The correct answer seems to be to nuke
> > the whole thing. We are missing the wq flush from the shutdown() path
> > in i915 however, so I suppose we should add it there.
> >
> >>  
> >>  	intel_encoder_block_all_hpds(display);
> >>  
> >> @@ -379,7 +358,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
> >>  		intel_display_driver_suspend(display);
> >
> > This should rather be the same atomic helper shutdown that i915 uses.
> > I guess what we want is a intel_display_driver_shutdown() to pair
> > up with intel_display_driver_suspend().
> 
> Yeah, well, another "Hal fixes a light bulb" moment. I just wanted to
> clean up the iterators, but I can't do that with xe having crtc
> iteration, which it never should have had in the first place.
> 
> I think all of the i915/xe/display probe/cleanup/suspend/resume paths
> are a gigantic mess. It was a mess with just i915, and xe added another,
> *different* mess. They both do things differently, but *neither* should
> be calling low-level display stuff directly.
> 
> I'll try to cook something up for this.

Fwiw, this came up already earlier [1] and then I came up with
https://github.com/ideak/linux/commits/suspend-shutdown-refactor

but haven't followed up with it. For reference I rebased it now on
drm-tip.

[1] https://lore.kernel.org/all/aIjizdet9ZUXB-yx@ideak-desk

> 
> 
> BR,
> Jani.
> 
> 
> >
> >>  	}
> >>  
> >> -	xe_display_flush_cleanup_work(xe);
> >> +	intel_display_flush_cleanup_work(display);
> >>  	intel_dp_mst_suspend(display);
> >>  	intel_encoder_block_all_hpds(display);
> >>  	intel_hpd_cancel_work(display);
> >> -- 
> >> 2.47.3
> 
> -- 
> Jani Nikula, Intel
