Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FQ1sDUPrS2p/cwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 19:52:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C3C7141CB
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 19:52:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=T7W+Pn6e;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EF3310EA26;
	Mon,  6 Jul 2026 17:51:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DE2510EA1A;
 Mon,  6 Jul 2026 17:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783360315; x=1814896315;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=F56CBZoKjtVCJ2+yE9mO0QTf+Wpta9aGBdhWzESkzPI=;
 b=T7W+Pn6e0juQc96lGgtooCb4v3BEuWW6UF1pXGCjdzuBMDRCGw+Q/vYX
 4+zgn/hm0nNVeTAwFthf7ionSn3VLf4KB5SMYMbDbD3kk51rrO8YmApnz
 VSMQhRWx3KvP2Wkt2EiIFBH13dWKQ0e9W6CmLOt3tgGqCrFEY+zsHllzp
 czI837cYLU6NDI9QwRROnYEWiiKAC9Y/WnVFZD3dzDqItutMoWNGbBG3u
 5fNHdC6yYuonpGRNCTgS47pbf71gNSyyorlfZTCZd+MzccbPNoTK/2RIX
 di1Hwnta4bEpjsKkg6yIovp/RmkKvxqF01rW00RrNsnsvtDpYFVAvPTNJ A==;
X-CSE-ConnectionGUID: AVgxsIA8Q+S9aZEAzESRZw==
X-CSE-MsgGUID: CHBwxzb6T5e1ymx6Xz+0qg==
X-IronPort-AV: E=McAfee;i="6800,10657,11839"; a="83872359"
X-IronPort-AV: E=Sophos;i="6.25,151,1779174000"; d="scan'208";a="83872359"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 10:51:09 -0700
X-CSE-ConnectionGUID: U0Esw23fTjuUR0Z4e4pN4g==
X-CSE-MsgGUID: NGeuvew8S/WNgbPdYyNX4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,151,1779174000"; d="scan'208";a="253310111"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 10:51:06 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 10:51:06 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 10:51:06 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.6) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 10:51:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ErGqc2UibT2WmzKso2xNFE+DkXfvIZ8NYDDOMonxWc+h11MDqXqPARKh+pC/I//grif/mnyIMwktD+COlzpvamqLQGsrEHjwm3dkPtgV6b9qcNR1Ob/LMJ37qQ79tzk4UB5gv5mVnEFJt9Ferv908N6QQxZFqHNWqaxZHnBcJSgtQYSWh9VlU4XvDAZ+akQCX+IUaj/WhcboZySSv8+fiNSh8CGszQ4HcE5qcPL3a/eJ+zC2qjWKkZBE/BC89TtXOZJ3yB4F7Mn3Q5y+lgmE2hrES5Nto/cD+UOeySj97m9V0va2HHimy48Aa7mGahkcXOlyAAyFG+5ha91bO5c5Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bO/6Wtm1atGwWOBlj3hw6BHGh5bd7x6PskIUZpTVaBE=;
 b=lgk5MgLID5FalthL6ZMtx5BR5HNUv2Yvd/61d7Tk1wk5Kv9zghPKHXyT0nAzQNH+B3lVQki67ZONUJoA1q/ioVst/VAnVN0mKh9S02G2uAjaM4dmph/8/8h2KiuFs7lr7zlom3MXMKfhalJdhitWeRnwelO6lo3MTQLGo9JiWd5XqZXbfVrns57AfT2PiWIW1B8O/Qri5SED5lNHLI3UQ+i4f1VJe/r1h0JvFxlmyT6GJJE4XuTyUZ81/csvG6LLhkmyfkGHirCO/xZBU1rgFm4wD7DBdooD0qc5rzhStMLG1PCsF+YYwYiPuJrSQ3mBVe22UWfhYsdqSZrh6B98bQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by PH8PR11MB9880.namprd11.prod.outlook.com (2603:10b6:510:3c5::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.10; Mon, 6 Jul
 2026 17:51:03 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::e0c5:6cd8:6e67:dc0c]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::e0c5:6cd8:6e67:dc0c%4]) with mapi id 15.21.0181.008; Mon, 6 Jul 2026
 17:51:03 +0000
Date: Mon, 6 Jul 2026 10:51:00 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, "Natalie
 Vock" <natalie.vock@gmx.de>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui
 <ray.huang@amd.com>, Matthew Auld <matthew.auld@intel.com>, Alex Deucher
 <alexander.deucher@amd.com>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <amd-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 02/10] drm/ttm: replace TTMs refcount with the DRM
 refcount v4
Message-ID: <akvrBLBhgbQodMNi@gsse-cloud1.jf.intel.com>
References: <20260703-ttm_2_drm_exec-v1-0-43685ac1286b@gmx.de>
 <20260703-ttm_2_drm_exec-v1-2-43685ac1286b@gmx.de>
 <b2932c85fee8e4bf89fdd80ada8883c199d823c0.camel@linux.intel.com>
 <88614266-6ee3-4488-9e2f-030ae0266e0e@amd.com>
 <7031c630c987940d814eaef9d1696969be12d81b.camel@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7031c630c987940d814eaef9d1696969be12d81b.camel@linux.intel.com>
X-ClientProxiedBy: MW4P222CA0011.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::16) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|PH8PR11MB9880:EE_
X-MS-Office365-Filtering-Correlation-Id: 121823a6-2d1b-45e7-2400-08dedb8725ac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|23010399003|18002099003|22082099003|3023799007|56012099006|11063799006|4143699003|6133799003;
X-Microsoft-Antispam-Message-Info: CCA2G9TbAWmkEFGEvwlWWsKCY7jU8uLdQPK/ZgAWTSYxwIRO93vKIsYiOnVnEeF6ByPva1lenmlWqL/57XGCVj0mxgVk6NHKpq3f3tAebnSZ/bDOMQztr0FJiNKV9ZaQGnWOdezU/AM1+5tUv2iuRRwnINB3+nJO2mBbjeMOL869T25I0lxGjeyrMSaz3UVvhsom2a2IZMolWsnleTOMSkP7y1w41q19hWZNBAqH1dcgO2hjaddhyjsuvL68hbueDyOT7G//pTVppBpp/mQiZkQSFN+LCkLoDqsZtoDd+9P5i2bw+lqPUuvRWnlJP+tWDAgBsCTZ4rfEMmSlg9Rm6ilxFA0VKgY6BrSe3fZLyKdsgtuoHzbtcTbQVDXGYWOlQV8rR8svAHi8E7Do/T7EyD7VZKl8Kmmx1AFzdel5NrhreE/htsAQvePrDMlOpEp/4AHVWYjiOeXYl+LTU4jCjXb+BGZI9nXJi5aljDIb93PyU8TQlNsVZwQwkBUWw3pDhB+O0VuUNDv447u2GgtiVB8LsAIwWPGDzCluWzrGR0FRdF9Pmp7UVbpt0qd6tYD9/aoxzUH97qbVqDzZYXUa6S/ErKxX7zH36ZfyrTQdiEgeTcUoj5OEN3ahujS1tcDyvB2iQSVoaLcRJXC/gMBLyTNUnexevBzBGOBIvj9eG/U=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(23010399003)(18002099003)(22082099003)(3023799007)(56012099006)(11063799006)(4143699003)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?OcnVB+8ylMggKHfekbFJDGtLJVbbI4X1GpCtMHufo8ct9jWCB6+sxButKz?=
 =?iso-8859-1?Q?inWlGCRFXOLQprr3ZwPNgrZH9HAvgziLuQ4NC7qDADsyH6N5rrtK8IbkW/?=
 =?iso-8859-1?Q?QK+ZbZ1/Cwt8nt2h4vjEy4bpdPf5FokT6baGb023e2z1FYQSrIartrC44G?=
 =?iso-8859-1?Q?EbqO5wQJmkNm5FLeWEQwQFmU1UDpRHO4+B9nPrXPpNw+KKDG310GfSpgOw?=
 =?iso-8859-1?Q?y3kX9/dalaEnGIy5JzvOkWCTYbyLdnOwyFd6H+tsXbKQpTWhcmf47yElax?=
 =?iso-8859-1?Q?NMmV4f8APCqwASRON9v4hVm0yoRE3yLpGp9WFC+eD0F6SUHLUGcaQ4tCK7?=
 =?iso-8859-1?Q?tjHQEn39UX7v7q0dKpEiIB8KZSgey0S78pQf7VOW5oe9PuI7HAQeD5yfco?=
 =?iso-8859-1?Q?rv02BNU6j/DlaHz17R4thgIuKnhKFZTDCzdVl3IlzleEG0TF3uosqIHs0y?=
 =?iso-8859-1?Q?3kTrJdFaurGf3dWDuBgrqp0cyLozseeYjZzi67TKO/TVJp2s/CANBB/G/9?=
 =?iso-8859-1?Q?LdCV+j50890Y07tiO3g8IrNSk3nfSuq2pCmZ2DW8eUGikBt27GBhewD3nK?=
 =?iso-8859-1?Q?nXu9RcWf9GFXhQ98EM8fUFshYNjwTPKvw18PHLWdEMbl2jghO7wLWwpRDX?=
 =?iso-8859-1?Q?RSq3j3H8ggje2QDCXUtfiMjmxz2I1W2TjYVmrukRvter6YI4khyr5WrIiq?=
 =?iso-8859-1?Q?9RIXGM47Z9mk9vwyBA+PsYs/FsXJXMaTc8qd2DLcF1Jg7Mghuf52D5mayK?=
 =?iso-8859-1?Q?Gd0pdZnng2WMEyrn/o4dwuJVu33BFjZG9UWXrSBW2krFiAJ5goVdPcEj2P?=
 =?iso-8859-1?Q?cpDIq993Tn5TJYBhEDPbKofrMF+ntchjg6CuEgtxah6WpsHN84Oza0G5mT?=
 =?iso-8859-1?Q?rOKC2T1Nq1NXFTjE2fnmocrA9st3yEfLTguxhPTMbXlZXu7hzpEQ/yjnQ5?=
 =?iso-8859-1?Q?YetiVimztfqkw8D20vPkgxLsTZe6eqhn4YKTtny0O3NZtlxX8MMZAx8pqR?=
 =?iso-8859-1?Q?JD+PcNiktNRduAczV1J7+wN+BhFndC/A2wsLLJAm8PiflNzReqV+HJgDLp?=
 =?iso-8859-1?Q?1renIilfY9ShrCJj2+2r+0uKkQeYOx1VMA0jObGEE98B0t6nY+B3LaoD8O?=
 =?iso-8859-1?Q?kIvaZSYphCVUBHBVL/8jQaQx4yeRH/OHssni6oNygnA+SBb98538LFPpoz?=
 =?iso-8859-1?Q?hZp+LD9ONKij913xfEEVFc37v7t6g8Wt+2k1eWtkKOqNqudXf7Q8oMz1jQ?=
 =?iso-8859-1?Q?EnRieVQy9PpQZjTZp5gB9OHdyOglx0RziQklgE+DRqJxuwxg5LY1W0WpRX?=
 =?iso-8859-1?Q?GdpYfSXcxZlp53HvKxiHuuYwNuLj4WWStL8mX41XWYywOopAnqDGkrXWp1?=
 =?iso-8859-1?Q?mmxwvHPNXZW5XdLWgDgBNjr/uCw9jbSqUCaCAFhBprDLY4aSfMSL4+3e9x?=
 =?iso-8859-1?Q?xGWXkX0wPi/VrDKvCi3Ui8D2GtYPK7CtYAxt1bLGpMb6yYU4ig+9F1nOmQ?=
 =?iso-8859-1?Q?k58/NgCLzENQwU4zdhvupJa3pMZAHTW8maODMmRIWu51VKs/7hmfN93TKs?=
 =?iso-8859-1?Q?X5G4O49afWLWM55tv2A/WA9oJ+6/yujO5k3PHyU5RCDKPr8TvDcI52sgiM?=
 =?iso-8859-1?Q?ig5oiJs3uMwkdVwAUYJNa6sGP14TqfjrsbB/WPlL7qtrrXQP6fnjlC1rbi?=
 =?iso-8859-1?Q?BnCOj5YSSLYoLCL6ho7D1JKbtD3PwMIEc8ox7/4S3lhb9MUIiVXrgkRRc3?=
 =?iso-8859-1?Q?IvVnaLdOl3z5C2DjmVNae+4DVz633j+8pAXt7OKad7KTlYG8vGfgTGHRW7?=
 =?iso-8859-1?Q?xEhhpHC+kg=3D=3D?=
X-Exchange-RoutingPolicyChecked: T4ss5RDCVqC647IWAQ3xFAIXzAtM0Den8F1TjAz9hI9HzN0GRcLy+xTwIApUsRXJgp0fGQhqxRiLGb9LB86PxgHb0HBKxAyxWTn614kQhtob5oironRsxFZPdGsJOAf8PIX5cRId8AlWwsRI68mu4M0HXtdqixVTwDdrmKd2SeEsnExzDxSu9N/7wiA4M6nFYT/lxrCPi8oXvlgo+Qd1TEiIrdcxqdWGVg+vPCjs69hmlr6LC51Kc26UOm3KMrszjBVbD3wzsCrzMvZxRwiZP6x925FtS77MSlq2NiEm8Wv9tERytwyVJdkOVsoHxZZrK2ySr4YLLbF4fAAd6zISmQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 121823a6-2d1b-45e7-2400-08dedb8725ac
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2026 17:51:03.7244 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lCROIjJZDuBDIaNz0XAYjrJMJGmflGJlvHXNtLZaGgR/w3ivXawLWXh2M45HZ+tcZWWxX0b9K9PQ93Tl5sJU2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB9880
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[amd.com,gmx.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,lists.freedesktop.org,vger.kernel.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gsse-cloud1.jf.intel.com:mid,intel.com:from_mime,intel.com:dkim,gmx.de:email,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.brost@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A9C3C7141CB

On Mon, Jul 06, 2026 at 07:01:27PM +0200, Thomas Hellström wrote:
> On Mon, 2026-07-06 at 16:49 +0200, Christian König wrote:
> > On 7/6/26 15:14, Thomas Hellström wrote:
> > > On Fri, 2026-07-03 at 18:31 +0200, Natalie Vock wrote:
> > > > From: Christian König <christian.koenig@amd.com>
> > > > 
> > > > Instead of keeping a separate reference count for the TTM object
> > > > also
> > > > use
> > > > the reference count for DRM GEM objects inside TTM.
> > > > 
> > > > Apart from avoiding two reference counts for one object this
> > > > approach
> > > > has
> > > > the clear advantage of being able to use drm_exec inside TTM.
> > > > 
> > > > v2: adjust XE assert as well and re-enable disabled test
> > > > v3: handle another case in i915
> > > > v4: set GEM driver funcs of transfer BOs to point to the TTM free
> > > > callback (Natalie)
> > > 
> > > I think the main review issue from the last time this was on the
> > > table
> > > was that we shouldn't resurrect the gem refcount. Apart from the
> > > risc
> > > of getting barriers wrong, both xe and IIRC i915 partly rely on the
> > > gem
> > > refcount never being resurrected and that callbacks for bos with
> > > zero
> > > gem refcount means that the gem part of the object is unusable.
> > 
> > I've spend quite some time thinking about that and came to the
> > conclusion that this is actually harmless.
> > 
> > The drivers shouldn't be able to see the resurected BO, except if
> > they go over the LRU list manually (which they shouldn't).
> 
> The shrinker uses the TTM helpers for this. Basically the check needs
> to be ported to use the zombie interface but the present change also
> widens the window where we can't evict / shrink at all due to zero
> refcounts.
> 
> While it might be made harmless, resurrecting a refcount like this is
> IMO not something that should leak into the gem refcount. Nobody else
> does this in the kernel tree. The bo in reality becomes a zombie once
> the gem refcount reaches zero.

When you say resurrecting a refcount - what exactly do you mean by this?

ref -> 0 -> init ref count 1 -> 0 again?

Matt

> 
> > 
> > > 
> > > For example xe_bo.c:
> > > 
> > > 	if (!xe_bo_is_xe_bo(bo) || !xe_bo_get_unless_zero(xe_bo))
> > > 		return xe_bo_shrink_purge(ctx, bo, scanned);
> > > 
> > > So IIRC the conclusion was when removing the ttm refcount we
> > > shouldn't
> > > attempt to resurrect the gem one. If the get_unless_zero() fails
> > > during
> > > evict walk, we simply find something to wait for. See previous
> > > discussion there.
> > 
> > Yeah, I considered that as well but the problem is we often doesn't
> > have anything to wait on.
> 
> That's not the conclusion of the previous discussion?
> 
> https://lore.kernel.org/dri-devel/20250716160555.20217-2-christian.koenig@amd.com/#r
> 
> > 
> > > 
> > > I fully support removing the ttm refcount, but not if it means
> > > resurrecting the gem refcount.
> > > 
> > > If we want to sidestep that problem, in favour of getting the
> > > proposed
> > > locking functionality in and future proof it, I suggest using
> > > 
> > > https://lore.kernel.org/all/20260605112700.181040-1-thomas.hellstrom@linux.intel.com/
> > > 
> > > And rebase this series on that. This means we can use the ttm
> > > refcount
> > > for the transaction refcounting, and also that if we add a dma-buf
> > > map
> > > interface with a dma_resv_txn_obj, we could use that to also have
> > > exhaustive eviction that originates from a dma_buf map.
> > 
> > I don't think that this is a good idea. It just adds another layer of
> > abstraction and doesn't solve the problem in any way possible.
> 
> This comment confuses me. Exactly what problem isn't solved by this,
> and which of the stated benefits/use-cases in the cover-letter do you
> think aren't worthwhile?
> 
> Also for reference: (Section at the end and follow-up messages)
> https://lore.kernel.org/all/3716d43462188590743060755b37e3d060f7600f.camel@linux.intel.com/
> 
> Thanks,
> Thomas
> 
> 
> > Regards,
> > Christian.
> > 
> > > 
> > > /Thomas
> > > 
> > > > 
> > > > Signed-off-by: tChristian König <christian.koenig@amd.com>
> > > > Signed-off-by: Natalie Vock <natalie.vock@gmx.de>
> > > > ---
> > > >  drivers/gpu/drm/i915/gem/i915_gem_ttm.c          |  35 +++---
> > > >  drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c |   8 +-
> > > >  drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c    |   2 -
> > > >  drivers/gpu/drm/ttm/ttm_bo.c                     | 135
> > > > +++++++++++--
> > > > ----------
> > > >  drivers/gpu/drm/ttm/ttm_bo_internal.h            |  17 ++-
> > > >  drivers/gpu/drm/ttm/ttm_bo_util.c                |  15 ++-
> > > >  drivers/gpu/drm/xe/xe_bo.c                       |   2 +-
> > > >  include/drm/ttm/ttm_bo.h                         |   9 --
> > > >  8 files changed, 111 insertions(+), 112 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > > > b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > > > index df3fcc2b1248e..642296602de69 100644
> > > > --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > > > @@ -939,7 +939,7 @@ void i915_ttm_adjust_lru(struct
> > > > drm_i915_gem_object *obj)
> > > >  	 * Don't manipulate the TTM LRUs while in TTM bo
> > > > destruction.
> > > >  	 * We're called through i915_ttm_delete_mem_notify().
> > > >  	 */
> > > > -	if (!kref_read(&bo->kref))
> > > > +	if (!kref_read(&bo->base.refcount))
> > > >  		return;
> > > >  
> > > >  	/*
> > > > @@ -957,30 +957,21 @@ void i915_ttm_adjust_lru(struct
> > > > drm_i915_gem_object *obj)
> > > >  	 *
> > > >  	 * TODO: consider maybe also bumping the shrinker list
> > > > here
> > > > when we have
> > > >  	 * already unpinned it, which should give us something
> > > > more
> > > > like an LRU.
> > > > -	 *
> > > > -	 * TODO: There is a small window of opportunity for this
> > > > function to
> > > > -	 * get called from eviction after we've dropped the last
> > > > GEM
> > > > refcount,
> > > > -	 * but before the TTM deleted flag is set on the object.
> > > > Avoid
> > > > -	 * adjusting the shrinker list in such cases, since the
> > > > object is
> > > > -	 * not available to the shrinker anyway due to its zero
> > > > refcount.
> > > > -	 * To fix this properly we should move to a TTM shrinker
> > > > LRU
> > > > list for
> > > > -	 * these objects.
> > > >  	 */
> > > > -	if (kref_get_unless_zero(&obj->base.refcount)) {
> > > > -		if (shrinkable != obj->mm.ttm_shrinkable) {
> > > > -			if (shrinkable) {
> > > > -				if (obj->mm.madv ==
> > > > I915_MADV_WILLNEED)
> > > > -
> > > > 					__i915_gem_object_make_s
> > > > hrinkable(obj);
> > > > -				else
> > > > -
> > > > 					__i915_gem_object_make_p
> > > > urgeable(obj);
> > > > -			} else {
> > > > -
> > > > 				i915_gem_object_make_unshrinkabl
> > > > e(obj);
> > > > -			}
> > > > -
> > > > -			obj->mm.ttm_shrinkable = shrinkable;
> > > > +	i915_gem_object_get(obj);
> > > > +	if (shrinkable != obj->mm.ttm_shrinkable) {
> > > > +		if (shrinkable) {
> > > > +			if (obj->mm.madv == I915_MADV_WILLNEED)
> > > > +				__i915_gem_object_make_shrinkabl
> > > > e(ob
> > > > j);
> > > > +			else
> > > > +				__i915_gem_object_make_purgeable
> > > > (obj
> > > > );
> > > > +		} else {
> > > > +			i915_gem_object_make_unshrinkable(obj);
> > > >  		}
> > > > -		i915_gem_object_put(obj);
> > > > +
> > > > +		obj->mm.ttm_shrinkable = shrinkable;
> > > >  	}
> > > > +	i915_gem_object_put(obj);
> > > >  
> > > >  	/*
> > > >  	 * Put on the correct LRU list depending on the MADV
> > > > status
> > > > diff --git a/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
> > > > b/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
> > > > index 56ad8ef325840..904cb4da6c9b3 100644
> > > > --- a/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
> > > > +++ b/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
> > > > @@ -127,7 +127,7 @@ static void
> > > > ttm_bo_init_reserved_sys_man(struct
> > > > kunit *test)
> > > >  	dma_resv_unlock(bo->base.resv);
> > > >  
> > > >  	KUNIT_EXPECT_EQ(test, err, 0);
> > > > -	KUNIT_EXPECT_EQ(test, kref_read(&bo->kref), 1);
> > > > +	KUNIT_EXPECT_EQ(test, kref_read(&bo->base.refcount), 1);
> > > >  	KUNIT_EXPECT_PTR_EQ(test, bo->bdev, priv->ttm_dev);
> > > >  	KUNIT_EXPECT_EQ(test, bo->type, bo_type);
> > > >  	KUNIT_EXPECT_EQ(test, bo->page_alignment, PAGE_SIZE);
> > > > @@ -176,7 +176,7 @@ static void
> > > > ttm_bo_init_reserved_mock_man(struct
> > > > kunit *test)
> > > >  	dma_resv_unlock(bo->base.resv);
> > > >  
> > > >  	KUNIT_EXPECT_EQ(test, err, 0);
> > > > -	KUNIT_EXPECT_EQ(test, kref_read(&bo->kref), 1);
> > > > +	KUNIT_EXPECT_EQ(test, kref_read(&bo->base.refcount), 1);
> > > >  	KUNIT_EXPECT_PTR_EQ(test, bo->bdev, priv->ttm_dev);
> > > >  	KUNIT_EXPECT_EQ(test, bo->type, bo_type);
> > > >  	KUNIT_EXPECT_EQ(test, ctx.bytes_moved, size);
> > > > @@ -969,6 +969,8 @@ static void
> > > > ttm_bo_validate_allowed_only_evict(struct kunit *test)
> > > >  	ttm_mock_manager_fini(priv->ttm_dev, mem_multihop);
> > > >  }
> > > >  
> > > > +extern const struct drm_gem_object_funcs
> > > > ttm_deleted_object_funcs;
> > > > +
> > > >  static void ttm_bo_validate_deleted_evict(struct kunit *test)
> > > >  {
> > > >  	struct ttm_operation_ctx ctx_init = { }, ctx_val  = { };
> > > > @@ -999,7 +1001,7 @@ static void
> > > > ttm_bo_validate_deleted_evict(struct
> > > > kunit *test)
> > > >  	KUNIT_EXPECT_EQ(test, ttm_resource_manager_usage(man),
> > > > big);
> > > >  
> > > >  	dma_resv_unlock(bo_big->base.resv);
> > > > -	bo_big->deleted = true;
> > > > +	bo_big->base.funcs = &ttm_deleted_object_funcs;
> > > >  
> > > >  	bo_small = ttm_bo_kunit_init(test, test->priv, small,
> > > > NULL);
> > > >  	bo_small->type = bo_type;
> > > > diff --git a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
> > > > b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
> > > > index 5cfe8f3f80d75..b7ab19e0e4b2b 100644
> > > > --- a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
> > > > +++ b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
> > > > @@ -189,8 +189,6 @@ struct ttm_buffer_object
> > > > *ttm_bo_kunit_init(struct kunit *test,
> > > >  	bo->bdev = devs->ttm_dev;
> > > >  	bo->destroy = dummy_ttm_bo_destroy;
> > > >  
> > > > -	kref_init(&bo->kref);
> > > > -
> > > >  	return bo;
> > > >  }
> > > >  EXPORT_SYMBOL_GPL(ttm_bo_kunit_init);
> > > > diff --git a/drivers/gpu/drm/ttm/ttm_bo.c
> > > > b/drivers/gpu/drm/ttm/ttm_bo.c
> > > > index 3980f376e3ba4..2b470c1746f60 100644
> > > > --- a/drivers/gpu/drm/ttm/ttm_bo.c
> > > > +++ b/drivers/gpu/drm/ttm/ttm_bo.c
> > > > @@ -246,88 +246,84 @@ static void ttm_bo_delayed_delete(struct
> > > > work_struct *work)
> > > >  	ttm_bo_put(bo);
> > > >  }
> > > >  
> > > > -static void ttm_bo_release(struct kref *kref)
> > > > +/*
> > > > + * All other callbacks should never ever be called on a deleted
> > > > TTM
> > > > object.
> > > > + */
> > > > +const struct drm_gem_object_funcs ttm_deleted_object_funcs = {
> > > > +	.free = ttm_bo_free
> > > > +};
> > > > +EXPORT_SYMBOL_FOR_TESTS_ONLY(ttm_deleted_object_funcs);
> > > > +
> > > > +/* Returns true if the BO is about to get deleted */
> > > > +static bool ttm_bo_is_zombie(struct ttm_buffer_object *bo)
> > > > +{
> > > > +	return bo->base.funcs == &ttm_deleted_object_funcs;
> > > > +}
> > > > +
> > > > +void ttm_bo_fini(struct ttm_buffer_object *bo)
> > > >  {
> > > > -	struct ttm_buffer_object *bo =
> > > > -	    container_of(kref, struct ttm_buffer_object, kref);
> > > >  	struct ttm_device *bdev = bo->bdev;
> > > >  	int ret;
> > > >  
> > > >  	WARN_ON_ONCE(bo->pin_count);
> > > >  	WARN_ON_ONCE(bo->bulk_move);
> > > >  
> > > > -	if (!bo->deleted) {
> > > > -		ret = ttm_bo_individualize_resv(bo);
> > > > -		if (ret) {
> > > > -			/* Last resort, if we fail to allocate
> > > > memory for the
> > > > -			 * fences block for the BO to become
> > > > idle
> > > > -			 */
> > > > -			dma_resv_wait_timeout(bo->base.resv,
> > > > -					     
> > > > DMA_RESV_USAGE_BOOKKEEP, false,
> > > > -					      30 * HZ);
> > > > -		}
> > > > +	ret = ttm_bo_individualize_resv(bo);
> > > > +	if (ret) {
> > > > +		/* Last resort, if we fail to allocate memory
> > > > for
> > > > the
> > > > +		 * fences block for the BO to become idle
> > > > +		 */
> > > > +		dma_resv_wait_timeout(bo->base.resv,
> > > > DMA_RESV_USAGE_BOOKKEEP,
> > > > +				      false, 30 * HZ);
> > > > +	}
> > > >  
> > > > -		if (bdev->funcs->release_notify)
> > > > -			bdev->funcs->release_notify(bo);
> > > > +	if (bo->bdev->funcs->release_notify)
> > > > +		bo->bdev->funcs->release_notify(bo);
> > > >  
> > > > -		drm_vma_offset_remove(bdev->vma_manager, &bo-
> > > > > base.vma_node);
> > > > -		ttm_mem_io_free(bdev, bo->resource);
> > > > +	drm_vma_offset_remove(bdev->vma_manager, &bo-
> > > > > base.vma_node);
> > > > +	ttm_mem_io_free(bdev, bo->resource);
> > > >  
> > > > -		if (!dma_resv_test_signaled(&bo->base._resv,
> > > > -					   
> > > > DMA_RESV_USAGE_BOOKKEEP)
> > > > > > 
> > > > -		    (want_init_on_free() && (bo->ttm != NULL))
> > > > ||
> > > > -		    bo->type == ttm_bo_type_sg ||
> > > > -		    !dma_resv_trylock(bo->base.resv)) {
> > > > -			/* The BO is not idle, resurrect it for
> > > > delayed destroy */
> > > > -			ttm_bo_flush_all_fences(bo);
> > > > -			bo->deleted = true;
> > > > +	if (!dma_resv_test_signaled(&bo->base._resv,
> > > > DMA_RESV_USAGE_BOOKKEEP) ||
> > > > +	    (want_init_on_free() && (bo->ttm != NULL)) ||
> > > > +	    bo->type == ttm_bo_type_sg ||
> > > > +	    !dma_resv_trylock(bo->base.resv)) {
> > > > +		/* The BO is not idle, resurrect it for delayed
> > > > destroy */
> > > > +		ttm_bo_flush_all_fences(bo);
> > > >  
> > > > -			spin_lock(&bdev->lru_lock);
> > > > -
> > > > -			/*
> > > > -			 * Make pinned bos immediately available
> > > > to
> > > > -			 * shrinkers, now that they are queued
> > > > for
> > > > -			 * destruction.
> > > > -			 *
> > > > -			 * FIXME: QXL is triggering this. Can be
> > > > removed when the
> > > > -			 * driver is fixed.
> > > > -			 */
> > > > -			if (bo->pin_count) {
> > > > -				bo->pin_count = 0;
> > > > -
> > > > 				ttm_resource_move_to_lru_tail(bo-
> > > > > resource);
> > > > -			}
> > > > +		spin_lock(&bo->bdev->lru_lock);
> > > >  
> > > > -			kref_init(&bo->kref);
> > > > -			spin_unlock(&bdev->lru_lock);
> > > > +		/*
> > > > +		 * Make pinned bos immediately available to
> > > > +		 * shrinkers, now that they are queued for
> > > > +		 * destruction.
> > > > +		 *
> > > > +		 * FIXME: QXL is triggering this. Can be removed
> > > > when the
> > > > +		 * driver is fixed.
> > > > +		 */
> > > > +		if (bo->pin_count) {
> > > > +			bo->pin_count = 0;
> > > > +			ttm_resource_move_to_lru_tail(bo-
> > > > >resource);
> > > > +		}
> > > >  
> > > > -			INIT_WORK(&bo->delayed_delete,
> > > > ttm_bo_delayed_delete);
> > > > +		kref_init(&bo->base.refcount);
> > > > +		bo->base.funcs = &ttm_deleted_object_funcs;
> > > > +		spin_unlock(&bo->bdev->lru_lock);
> > > >  
> > > > -			/* Schedule the worker on the closest
> > > > NUMA
> > > > node. This
> > > > -			 * improves performance since system
> > > > memory
> > > > might be
> > > > -			 * cleared on free and that is best done
> > > > on
> > > > a CPU core
> > > > -			 * close to it.
> > > > -			 */
> > > > -			queue_work_node(bdev->pool.nid, bdev-
> > > > >wq,
> > > > &bo->delayed_delete);
> > > > -			return;
> > > > -		}
> > > > +		INIT_WORK(&bo->delayed_delete,
> > > > ttm_bo_delayed_delete);
> > > >  
> > > > +		/* Schedule the worker on the closest NUMA node.
> > > > This
> > > > +		 * improves performance since system memory
> > > > might be
> > > > +		 * cleared on free and that is best done on a
> > > > CPU
> > > > core
> > > > +		 * close to it.
> > > > +		 */
> > > > +		queue_work_node(bdev->pool.nid, bdev->wq, &bo-
> > > > > delayed_delete);
> > > > +	} else {
> > > >  		ttm_bo_cleanup_memtype_use(bo);
> > > >  		dma_resv_unlock(bo->base.resv);
> > > > -	}
> > > >  
> > > > -	atomic_dec(&ttm_glob.bo_count);
> > > > -	bo->destroy(bo);
> > > > -}
> > > > -
> > > > -/* TODO: remove! */
> > > > -void ttm_bo_put(struct ttm_buffer_object *bo)
> > > > -{
> > > > -	kref_put(&bo->kref, ttm_bo_release);
> > > > -}
> > > > -
> > > > -void ttm_bo_fini(struct ttm_buffer_object *bo)
> > > > -{
> > > > -	ttm_bo_put(bo);
> > > > +		atomic_dec(&ttm_glob.bo_count);
> > > > +		bo->destroy(bo);
> > > > +	}
> > > >  }
> > > >  EXPORT_SYMBOL(ttm_bo_fini);
> > > >  
> > > > @@ -470,7 +466,7 @@ int ttm_bo_evict_first(struct ttm_device
> > > > *bdev,
> > > > struct ttm_resource_manager *man
> > > >  	if (!bo->resource || bo->resource->mem_type != mem_type)
> > > >  		goto out_bo_moved;
> > > >  
> > > > -	if (bo->deleted) {
> > > > +	if (ttm_bo_is_zombie(bo)) {
> > > >  		ret = ttm_bo_wait_ctx(bo, ctx);
> > > >  		if (!ret)
> > > >  			ttm_bo_cleanup_memtype_use(bo);
> > > > @@ -524,7 +520,7 @@ static s64 ttm_bo_evict_cb(struct
> > > > ttm_lru_walk
> > > > *walk, struct ttm_buffer_object *
> > > >  	if (bo->pin_count || !bo->bdev->funcs-
> > > > >eviction_valuable(bo,
> > > > evict_walk->place))
> > > >  		return 0;
> > > >  
> > > > -	if (bo->deleted) {
> > > > +	if (ttm_bo_is_zombie(bo)) {
> > > >  		lret = ttm_bo_wait_ctx(bo, walk->arg.ctx);
> > > >  		if (!lret)
> > > >  			ttm_bo_cleanup_memtype_use(bo);
> > > > @@ -624,7 +620,6 @@ static int ttm_bo_evict_alloc(struct
> > > > ttm_device
> > > > *bdev,
> > > >  void ttm_bo_pin(struct ttm_buffer_object *bo)
> > > >  {
> > > >  	dma_resv_assert_held(bo->base.resv);
> > > > -	WARN_ON_ONCE(!kref_read(&bo->kref));
> > > >  	spin_lock(&bo->bdev->lru_lock);
> > > >  	if (bo->resource)
> > > >  		ttm_resource_del_bulk_move(bo->resource, bo);
> > > > @@ -643,7 +638,6 @@ EXPORT_SYMBOL(ttm_bo_pin);
> > > >  void ttm_bo_unpin(struct ttm_buffer_object *bo)
> > > >  {
> > > >  	dma_resv_assert_held(bo->base.resv);
> > > > -	WARN_ON_ONCE(!kref_read(&bo->kref));
> > > >  	if (WARN_ON_ONCE(!bo->pin_count))
> > > >  		return;
> > > >  
> > > > @@ -934,7 +928,6 @@ int ttm_bo_init_reserved(struct ttm_device
> > > > *bdev,
> > > > struct ttm_buffer_object *bo,
> > > >  {
> > > >  	int ret;
> > > >  
> > > > -	kref_init(&bo->kref);
> > > >  	bo->bdev = bdev;
> > > >  	bo->type = type;
> > > >  	bo->page_alignment = alignment;
> > > > @@ -1131,8 +1124,8 @@ ttm_bo_swapout_cb(struct ttm_lru_walk
> > > > *walk,
> > > > struct ttm_buffer_object *bo)
> > > >  		goto out;
> > > >  	}
> > > >  
> > > > -	if (bo->deleted) {
> > > > -		pgoff_t num_pages = tt->num_pages;
> > > > +	if (ttm_bo_is_zombie(bo)) {
> > > > +		pgoff_t num_pages = bo->ttm->num_pages;
> > > >  
> > > >  		ret = ttm_bo_wait_ctx(bo, ctx);
> > > >  		if (ret)
> > > > diff --git a/drivers/gpu/drm/ttm/ttm_bo_internal.h
> > > > b/drivers/gpu/drm/ttm/ttm_bo_internal.h
> > > > index e0d48eac74b03..ded2a47be0bcb 100644
> > > > --- a/drivers/gpu/drm/ttm/ttm_bo_internal.h
> > > > +++ b/drivers/gpu/drm/ttm/ttm_bo_internal.h
> > > > @@ -27,6 +27,14 @@
> > > >  
> > > >  #include <drm/ttm/ttm_bo.h>
> > > >  
> > > > +static inline void ttm_bo_free(struct drm_gem_object *gobj)
> > > > +{
> > > > +	struct ttm_buffer_object *bo = container_of(gobj,
> > > > typeof(*bo), base);
> > > > +
> > > > +	atomic_dec(&ttm_glob.bo_count);
> > > > +	bo->destroy(bo);
> > > > +}
> > > > +
> > > >  /**
> > > >   * ttm_bo_get - reference a struct ttm_buffer_object
> > > >   *
> > > > @@ -34,7 +42,7 @@
> > > >   */
> > > >  static inline void ttm_bo_get(struct ttm_buffer_object *bo)
> > > >  {
> > > > -	kref_get(&bo->kref);
> > > > +	drm_gem_object_get(&bo->base);
> > > >  }
> > > >  
> > > >  /**
> > > > @@ -50,11 +58,14 @@ static inline void ttm_bo_get(struct
> > > > ttm_buffer_object *bo)
> > > >  static inline __must_check struct ttm_buffer_object *
> > > >  ttm_bo_get_unless_zero(struct ttm_buffer_object *bo)
> > > >  {
> > > > -	if (!kref_get_unless_zero(&bo->kref))
> > > > +	if (!kref_get_unless_zero(&bo->base.refcount))
> > > >  		return NULL;
> > > >  	return bo;
> > > >  }
> > > >  
> > > > -void ttm_bo_put(struct ttm_buffer_object *bo);
> > > > +static inline void ttm_bo_put(struct ttm_buffer_object *bo)
> > > > +{
> > > > +	drm_gem_object_put(&bo->base);
> > > > +}
> > > >  
> > > >  #endif
> > > > diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c
> > > > b/drivers/gpu/drm/ttm/ttm_bo_util.c
> > > > index 3e3c201a02226..7ed085adf1c9b 100644
> > > > --- a/drivers/gpu/drm/ttm/ttm_bo_util.c
> > > > +++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
> > > > @@ -41,6 +41,18 @@
> > > >  
> > > >  #include "ttm_bo_internal.h"
> > > >  
> > > > +static void ttm_transfer_object_free(struct drm_gem_object *obj)
> > > > +{
> > > > +	struct ttm_buffer_object *bo =
> > > > +		container_of(obj, struct ttm_buffer_object,
> > > > base);
> > > > +
> > > > +	ttm_bo_fini(bo);
> > > > +}
> > > > +
> > > > +const struct drm_gem_object_funcs ttm_transfer_object_funcs = {
> > > > +	.free = ttm_transfer_object_free,
> > > > +};
> > > > +
> > > >  struct ttm_transfer_obj {
> > > >  	struct ttm_buffer_object base;
> > > >  	struct ttm_buffer_object *bo;
> > > > @@ -247,7 +259,8 @@ static int ttm_buffer_object_transfer(struct
> > > > ttm_buffer_object *bo,
> > > >  	atomic_inc(&ttm_glob.bo_count);
> > > >  	drm_vma_node_reset(&fbo->base.base.vma_node);
> > > >  
> > > > -	kref_init(&fbo->base.kref);
> > > > +	kref_init(&fbo->base.base.refcount);
> > > > +	fbo->base.base.funcs = &ttm_transfer_object_funcs;
> > > >  	fbo->base.destroy = &ttm_transfered_destroy;
> > > >  	fbo->base.pin_count = 0;
> > > >  	if (bo->type != ttm_bo_type_sg)
> > > > diff --git a/drivers/gpu/drm/xe/xe_bo.c
> > > > b/drivers/gpu/drm/xe/xe_bo.c
> > > > index 85e6d9a0f575b..5843f850339c7 100644
> > > > --- a/drivers/gpu/drm/xe/xe_bo.c
> > > > +++ b/drivers/gpu/drm/xe/xe_bo.c
> > > > @@ -1651,7 +1651,7 @@ static bool
> > > > xe_ttm_bo_lock_in_destructor(struct
> > > > ttm_buffer_object *ttm_bo)
> > > >  	struct xe_device *xe = ttm_to_xe_device(ttm_bo->bdev);
> > > >  	bool locked;
> > > >  
> > > > -	xe_assert(xe, !kref_read(&ttm_bo->kref));
> > > > +	xe_assert(xe, !kref_read(&ttm_bo->base.refcount));
> > > >  
> > > >  	/*
> > > >  	 * We can typically only race with TTM trylocking under
> > > > the
> > > > diff --git a/include/drm/ttm/ttm_bo.h b/include/drm/ttm/ttm_bo.h
> > > > index 8310bc3d55f90..1eae9eea5ff32 100644
> > > > --- a/include/drm/ttm/ttm_bo.h
> > > > +++ b/include/drm/ttm/ttm_bo.h
> > > > @@ -78,11 +78,8 @@ enum ttm_bo_type {
> > > >   * @type: The bo type.
> > > >   * @page_alignment: Page alignment.
> > > >   * @destroy: Destruction function. If NULL, kfree is used.
> > > > - * @kref: Reference count of this buffer object. When this
> > > > refcount
> > > > reaches
> > > > - * zero, the object is destroyed or put on the delayed delete
> > > > list.
> > > >   * @resource: structure describing current placement.
> > > >   * @ttm: TTM structure holding system pages.
> > > > - * @deleted: True if the object is only a zombie and already
> > > > deleted.
> > > >   * @bulk_move: The bulk move object.
> > > >   * @priority: Priority for LRU, BOs with lower priority are
> > > > evicted
> > > > first.
> > > >   * @pin_count: Pin count.
> > > > @@ -109,17 +106,11 @@ struct ttm_buffer_object {
> > > >  	uint32_t page_alignment;
> > > >  	void (*destroy) (struct ttm_buffer_object *);
> > > >  
> > > > -	/*
> > > > -	* Members not needing protection.
> > > > -	*/
> > > > -	struct kref kref;
> > > > -
> > > >  	/*
> > > >  	 * Members protected by the bo::resv::reserved lock.
> > > >  	 */
> > > >  	struct ttm_resource *resource;
> > > >  	struct ttm_tt *ttm;
> > > > -	bool deleted;
> > > >  	struct ttm_lru_bulk_move *bulk_move;
> > > >  	unsigned priority;
> > > >  	unsigned pin_count;
