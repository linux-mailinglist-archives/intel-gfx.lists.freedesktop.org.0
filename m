Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /gZnEZCtMWolpAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3AE7695156
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=fx7nXdBf;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B72010ED26;
	Tue, 16 Jun 2026 20:09:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA5A010ED27;
 Tue, 16 Jun 2026 20:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781640588; x=1813176588;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=H/0/9Cghc3fwEuxNUfzhfPeBHIIoM0lIToXUpWfFKaA=;
 b=fx7nXdBfH4r89wdgfHivqb+VgrfWEqHkhn5aVlRvioJ87xt2AKM0INvM
 6BDdeHCCm49mQN9hvcF83nzFBiVPL2vLnyLwzQnl2kDa4UXKKKKmdhJ/c
 OfHOkGNCfBL+WoqHH/LHpDMk0CLAv1t+9gBNCkvG2XkS2diPrUqfGihbC
 voRx1zebDvjlgU6/2JKl2dcpjbLnnheFAglJmspkb8klp9FG/QHyJ+opq
 2p8wVl4OX830tAT5iI922InzNSU960Bsncn10CQ4dcJxaOw0vE5HchuEb
 ILJ3vLJ6cXKb55g1gsH9FsuMT8mK54nCWL+v4Z6p54y1r6EzcZ/QUr+3V A==;
X-CSE-ConnectionGUID: IC2ugzDRT1Gb7QMUUwkEkQ==
X-CSE-MsgGUID: +LqX+9xUQWG9c5FOr8LLnw==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="86255856"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="86255856"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:48 -0700
X-CSE-ConnectionGUID: btmxfci7SR+IfYok6u48Ww==
X-CSE-MsgGUID: hEAKQnIaQe622zjr/G38vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="271579807"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:48 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:47 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 13:09:47 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.58) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w1PWMSKZW8nJTbIym6jHO/USuE/B+s18QFDGJANr44ZrNXXaHzTkyk7EXvZsW/awAAQRqGsJ9+nVkNMcWUYeIsCouCcvw8Ykl30HI1HmZVkgU6G0W1gDjVbsnq2bxFXIl+uLIXvVTk5SPM25W6KjLCNB9M/+kJ0NdMG0FQuNXXNXuG/4fN8rpxFwlQwSRtb3qcte7FP+0AMsVtviYB0tx2+mv3BOWalU+QlfuTgtG6IKUkPoCRu/vwKEJt8nZN91Vi2+RYm0ACkWuP8RcFm4ATRhTv7x5Zi+V7YAuETd3EOVk/jL61h/cqOeeUWawzaSJutpOw9AaqMODg6c7OFLGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TfzWz0ahcU/z7I6cIwzfFmCT6k/weNOA0l/abkqbG+E=;
 b=cB4GmwolNLv8tjvHPZxlvwUBNEqNxPUpKiGnx9KXAlUrSq0uhFYISrLeRrXQN7cfaArzKZv8HYc4eNiU+dFf3MhvYbN8ihdhtiSSY9QXeJgtKo+70hcfkNdhD1ldagIq9lPT/tBU+Lu8FIIAJu/LAOgswcKGjxlSsFSDvk9C9tkPVLoWkDqXXwRdF8eNDgzG47+iB/k8jw2dCvX3fiBjCQ8G2KAY2fcEzqYH46r2T+IkQuztqRUkRgkdQI4WOR1Da2yU4J6ICW5Lnu+nJduk94YGYzdoX7SKiRw8b1oXpHAVBpR2hMSrwGFG8ZZW+hoUTzC/Wb9cz9lV0nhI7H2/Dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH8PR11MB8257.namprd11.prod.outlook.com (2603:10b6:510:1c0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 20:09:34 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:09:34 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 11/28] drm/i915/dp_link_caps: Move link config tracking to
 link_caps
Date: Tue, 16 Jun 2026 23:08:31 +0300
Message-ID: <20260616200849.3534628-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260616200849.3534628-1-imre.deak@intel.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: GVX0EPF0005F692.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::13b) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|PH8PR11MB8257:EE_
X-MS-Office365-Filtering-Correlation-Id: 2e2f2d1f-4ba6-480d-25e1-08decbe32e17
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|18002099003|22082099003|6133799003|11063799006|3023799007|56012099006;
X-Microsoft-Antispam-Message-Info: IuxKMegFuL9LQrMi5oGbD4cWLgg5J72FhUHwNNTxzryooZ+2w5mMftT39d8G9fS0ZjEpIgAQqMfOWMFs7lp7QEfo32EikZQfrAdq2bcqdgkh8XH/STROoDBU1bP6BhRj3yY2uxhKYmUXOCmNs3l4a0m7dnR/LPK9O/qK0Th6r49B9sSJaLm8ISENGqtA4OJ8cHo5PD7JdO0bjiV8eRw3DVQs8MnX42clcRcrM88/7nATKF0shDGrT8tC0zQl9k9VplHLbrHit8ZQcde3IWQyg5jFfqDR+67U/bNNfV3SX7Z3HhYfi2/c/Fx+f28jqDx39md5P2hAdyhcmW5nSHXXudOE0ihoULW1zxC+H0YvOHyFuvZrAQoeeWK7pfPPP0IQm9bUPFGfOT9r3qhI0Z/F6rAarmf/Zm9G19EyzssNHUjJlAanUepafoZIy53DBUPi/Mtv1/SoL+PG2vaCPmfAjv/a0FsyccI61Jkqd1u2/yTIroh6JwFMUET8vkSiu0cqEFpLcT2sKEXgAJDaIh9PBHBGe8v3M2USM8n7bhGZJoDvBJ4pbYzfY+PE1ZDKIpQUx3mxxQKjsutOroYELSiRJJOHiyz7nqBifjoTk9fBagbZCowNIIWb4n7+7ISr5CBXG8TFqWrwlGWpDZbguQ5XnliZ4b+pHSwK+NK/wlpDa0Q8qeiiRf4aghrkCh81TjAx
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(18002099003)(22082099003)(6133799003)(11063799006)(3023799007)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SytsZ2VORXdYbmZobzlMRDhYQXkySmhoVC9Vb0lSUXhqUVZUbVNUSGpBTDBW?=
 =?utf-8?B?a1huOTJVbXJ5RG5jcHRWWTFxYmlKeTRlQjdtditxN2dPcmE2ZUlVMEdkRDNI?=
 =?utf-8?B?NmZLSlVCd2g0ZTZRZUtEZGk3NDhyemY2OFlrVGZHSU9aSDNveHBaMEo4cC9o?=
 =?utf-8?B?Qmg2R2NjMmhkSndFclFqeFdpenh6VGtWSkV4emZPMThEM0ZScE5yS0ZIRUtr?=
 =?utf-8?B?N3p4OFFDVWlzNlY3d3FmZk9NNUFTbFpYbUFPWUp4eThMdHB5S3BxZk5PTXhl?=
 =?utf-8?B?SGFYMVBJc0pJNFRWOE9qWXlVei9CektDYjJja1FZMTIzOG9nb0dXWnZjcTRk?=
 =?utf-8?B?cXVabnMvbXF5VkJLZ2t6SFdWK3ZtQ2FhMmdseXpXQXFzajBUMWkvNjRjcFRN?=
 =?utf-8?B?d2k2SmdCL1FBaStEbzB2VnVLZS9hcnE4ZHNMdVI1R2gvLzY2NFV2WjZuRFRE?=
 =?utf-8?B?YWRlZnJVbEc5aVFCYzlOSTdSb1dRbnZtb3Bkb01oQWlvbHhKeHhXbStaZEJm?=
 =?utf-8?B?VWRieVB5SnNrQjhEOWg0OWMzR29uYWtFdmdCQUdWS1puVkptWUpiejlnZHFJ?=
 =?utf-8?B?cS9KZExiaEdOZzFNdktWSlhFUEwxNzhUUWJ5UFQrcm9CMTk2MnVESGxJTWEw?=
 =?utf-8?B?UW1EcEFrVmtWVy8xNnpqaWNKYlVJMzg5UHM2aVNsU01FWU1zaFE1WlJZMlBl?=
 =?utf-8?B?cXBGa1RGV1ZWckw1cWI1TDV2TlBLNjlqTVNBTkM1SUlDWWNBL2hQNFBJeGlq?=
 =?utf-8?B?Tmp4YUNXSHZUdmFsbVY2azNVL2JEMzhIOTROeEF0QVZOTmtLTXFxbUlodjQz?=
 =?utf-8?B?eVQ4Q2FOcU1ob2ZwMm9iVnRNNDY0Sm4zY1BFOW01Q29nZWs4RGJwcFhhMFpn?=
 =?utf-8?B?OEdyM2ttTFpSMCtHb3VIa2RRVXQrajNvNnl0SkxkNlhtOW5jckhOWHJNYzVs?=
 =?utf-8?B?TzFVOTZ3c056a2NUcWN5QVFsdHpaU3cwVCtHdDJtcnNvMlhyK1YrekZROHhw?=
 =?utf-8?B?cXAwSzg4dnFBTFVhc1g1czhtOVdiTjlwRkMvUW1sV0V0L2ptc1VBNDVvKzBZ?=
 =?utf-8?B?eUsrRlNlZnptWnplOHhXUEV6aCtydlVMdElLRnMrcCt2dGM3TEY3aHBMTDRG?=
 =?utf-8?B?OTlkYVpsYUgvZEYvTEtaRUd3MlBqSlcyWklmRTJSK1ZtY2NCTWZBK05YUXVj?=
 =?utf-8?B?Tlc4OHhxcEV4V09BdWs3UXlrN2d3MHdQaWRTMEZxNlc2Q3FFMXo3R3k2a085?=
 =?utf-8?B?NGdLQVpJc2ZzcGF0emFBYkgrRG1zRUIwSHE5N21OWU5DZnQ1Q21VeVFSZ2JD?=
 =?utf-8?B?Snl3YjBOeGFHUVJ4aGJFQVQ4ZU5lRnl3NnlPZzlkS01BTVhJZ2wxSUxubE9h?=
 =?utf-8?B?WWNMdjFNM0p5SzNkQXEyK2o4WUp1WUZGcDBmbTNaSXpzb054SXR3cDZTK1pU?=
 =?utf-8?B?YllzTDl6UTZVWlVsYkV6NlVxVkxjdkJXQ3NrRG1LQnlaT0JuQUl3RjVjK3dz?=
 =?utf-8?B?SkpuQjNSRlA3czFjOTVscnFzU0xacFlia0pCU2xDMjVOMmRPUW9adUg0bk5j?=
 =?utf-8?B?THlWUndMRUxRK3V3QWE5RU52amVLaElQWUZtRTk4SW04SjRjci9Eazc2UUpL?=
 =?utf-8?B?azI5NzNLQjFua2Z6STJwV21aeWlIOG9UeW5sTjErc3R2ZVRUVXpUajFXS285?=
 =?utf-8?B?dUZxQ3ZNdmJKUUd3UDlTTC9iTng4bHEvakx2UmRnTmNIL0VObGl6bW5tR3hU?=
 =?utf-8?B?eEpUcHFjWlV1TzNoYWpUUGxuQ0FmK0YzNjQ3OXBjSWJrR1dkWWhHYXg5RzBz?=
 =?utf-8?B?cnUxN29NZjZZQ2FBdDltbHdjSzdQTlc4cUY5Qm92RFdlYzFTSnExeCtaN3RW?=
 =?utf-8?B?d240YkxDbzBuWWRKeUMyc2lVa0RkdHZETmwxeldJaTI5U1kzRVgrTDRSUlV5?=
 =?utf-8?B?OWNTQkxNeE82cmFLZndDTU5yNklKK2lMYjl3UERpTXFBa24yc1RneGs2OHhP?=
 =?utf-8?B?NlJ3QWtPYXF5VS9JUmdoYlphcU9HSFd5elFWNm9UVEFQbnoyWTNBL04yakUv?=
 =?utf-8?B?UThaSktrTUVkM0hlemk0a1hmYlh6TFJONHZ4eVF5NFlGMFZYaDEwRGcrMlky?=
 =?utf-8?B?RFVRQ0prZHowNEFVeDllRUkzTnZZOThQbEFvcGYxbHdka1NNWE5TNHljbWpj?=
 =?utf-8?B?ZFdMUCtub0VzcW9yTGJOV2hiSzJHZVBLZnQrVjBZVVJuZWRveXJlbEdzeFBS?=
 =?utf-8?B?UGg0NzF1M050VVpHMjVhUjVBeVM0Z09FWWdaLzdaWHpEYU80SklaQnB4ZXV4?=
 =?utf-8?B?UVRwdld5clRLN2JmMWQ1MXErZDYzUU15Sjc5R0R6N3dCazBRT1BiQT09?=
X-Exchange-RoutingPolicyChecked: DCTketXnnXQ79yxxzqq8xuGQnADfmSkFsx42hJ20MC9+cD7TH9M+Fm8HCVxkgfRp+nfISeVFh2sNglkg1phmESrnLnW102Pm0YfOt+Vwte59LHb/KOt5t2/+SRS18giW+l7ln3omVfb3PCLmY1PZ2ZQJcRC86rfzOZGN03+oBM5t4AOtVm+ehjcD4rlsxH9rqZMuWUhE5KaSI1r7M/22BMW/NA0X2p+6Eg+EjXQbSQo0PL/OUzhirtZXoRk8McsneIQ56oPX3rilQLSTJXqFfxC+BmQv5FscVZkND4zSBJGPMdYFyJL6yDjIrbCv0yR7X74jx0HxqUS1IFyLrGG49A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e2f2d1f-4ba6-480d-25e1-08decbe32e17
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 20:09:32.6230 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +LVklrp4O4sm7c41BGJbIpsKjWLPd1XlLmGHuh59KNI/xVfoSC8RSQgT+Ugp9RDOSGv2ZudTrRAjwlhX9jfnyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8257
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
X-Spamd-Result: default: False [0.69 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E3AE7695156

Move tracking of the link configurations from struct intel_dp to struct
intel_dp_link_caps.

Previous changes moved the helpers operating on configurations to the
link caps module, so the state can now be kept internal to that module.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    | 12 -------
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 36 ++++++++++++++-----
 2 files changed, 27 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c84ef29529373..443bb3b5e9fa3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1841,18 +1841,6 @@ struct intel_dp {
 	struct {
 		/* TODO: move the rest of link specific fields to here */
 		bool active;
-		/* common rate,lane_count configs in bw order */
-		int num_configs;
-#define INTEL_DP_MAX_LANE_COUNT			4
-#define INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS	(ilog2(INTEL_DP_MAX_LANE_COUNT) + 1)
-#define INTEL_DP_LANE_COUNT_EXP_BITS		order_base_2(INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS)
-#define INTEL_DP_LINK_RATE_IDX_BITS		(BITS_PER_TYPE(u8) - INTEL_DP_LANE_COUNT_EXP_BITS)
-#define INTEL_DP_MAX_LINK_CONFIGS		(DP_MAX_SUPPORTED_RATES * \
-						 INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS)
-		struct intel_dp_link_config_entry {
-			u8 link_rate_idx:INTEL_DP_LINK_RATE_IDX_BITS;
-			u8 lane_count_exp:INTEL_DP_LANE_COUNT_EXP_BITS;
-		} configs[INTEL_DP_MAX_LINK_CONFIGS];
 		/* Max lane count for the current link */
 		int max_lane_count;
 		/* Max rate for the current link */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 6a37ba8c35e27..05ec933c74407 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -3,10 +3,12 @@
  * Copyright © 2026 Intel Corporation
  */
 
+#include <linux/bitops.h>
 #include <linux/debugfs.h>
 #include <linux/log2.h>
 #include <linux/slab.h>
 #include <linux/sort.h>
+#include <linux/types.h>
 
 #include <drm/drm_print.h>
 
@@ -18,6 +20,19 @@
 struct intel_dp_link_caps {
 	struct intel_dp *dp;
 
+	/* common rate,lane_count configs in bw order */
+	int num_configs;
+#define INTEL_DP_MAX_LANE_COUNT			4
+#define INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS	(ilog2(INTEL_DP_MAX_LANE_COUNT) + 1)
+#define INTEL_DP_LANE_COUNT_EXP_BITS		order_base_2(INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS)
+#define INTEL_DP_LINK_RATE_IDX_BITS		(BITS_PER_TYPE(u8) - INTEL_DP_LANE_COUNT_EXP_BITS)
+#define INTEL_DP_MAX_LINK_CONFIGS		(DP_MAX_SUPPORTED_RATES * \
+						 INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS)
+	struct intel_dp_link_config_entry {
+		u8 link_rate_idx:INTEL_DP_LINK_RATE_IDX_BITS;
+		u8 lane_count_exp:INTEL_DP_LANE_COUNT_EXP_BITS;
+	} configs[INTEL_DP_MAX_LINK_CONFIGS];
+
 	/*
 	 * Forced parameters requested via debugfs. Remains set across sink
 	 * disconnects.
@@ -118,6 +133,7 @@ static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 
 void intel_dp_link_config_init(struct intel_dp *intel_dp)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_dp_link_config_entry *lc;
 	int num_common_lane_configs;
@@ -130,12 +146,12 @@ void intel_dp_link_config_init(struct intel_dp *intel_dp)
 	num_common_lane_configs = ilog2(intel_dp_max_common_lane_count(intel_dp)) + 1;
 
 	if (drm_WARN_ON(display->drm, intel_dp->num_common_rates * num_common_lane_configs >
-				    ARRAY_SIZE(intel_dp->link.configs)))
+				    ARRAY_SIZE(link_caps->configs)))
 		return;
 
-	intel_dp->link.num_configs = intel_dp->num_common_rates * num_common_lane_configs;
+	link_caps->num_configs = intel_dp->num_common_rates * num_common_lane_configs;
 
-	lc = &intel_dp->link.configs[0];
+	lc = &link_caps->configs[0];
 	for (i = 0; i < intel_dp->num_common_rates; i++) {
 		for (j = 0; j < num_common_lane_configs; j++) {
 			lc->lane_count_exp = j;
@@ -145,21 +161,22 @@ void intel_dp_link_config_init(struct intel_dp *intel_dp)
 		}
 	}
 
-	sort_r(intel_dp->link.configs, intel_dp->link.num_configs,
-	       sizeof(intel_dp->link.configs[0]),
+	sort_r(link_caps->configs, link_caps->num_configs,
+	       sizeof(link_caps->configs[0]),
 	       link_config_cmp_by_bw, NULL,
 	       intel_dp);
 }
 
 void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_display *display = to_intel_display(intel_dp);
 	const struct intel_dp_link_config_entry *lc;
 
-	if (drm_WARN_ON(display->drm, idx < 0 || idx >= intel_dp->link.num_configs))
+	if (drm_WARN_ON(display->drm, idx < 0 || idx >= link_caps->num_configs))
 		idx = 0;
 
-	lc = &intel_dp->link.configs[idx];
+	lc = &link_caps->configs[idx];
 
 	*link_rate = intel_dp_link_config_rate(intel_dp, lc);
 	*lane_count = intel_dp_link_config_lane_count(lc);
@@ -167,13 +184,14 @@ void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate
 
 int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int link_rate_idx = intel_dp_rate_index(intel_dp->common_rates, intel_dp->num_common_rates,
 						link_rate);
 	int lane_count_exp = ilog2(lane_count);
 	int i;
 
-	for (i = 0; i < intel_dp->link.num_configs; i++) {
-		const struct intel_dp_link_config_entry *lc = &intel_dp->link.configs[i];
+	for (i = 0; i < link_caps->num_configs; i++) {
+		const struct intel_dp_link_config_entry *lc = &link_caps->configs[i];
 
 		if (lc->lane_count_exp == lane_count_exp &&
 		    lc->link_rate_idx == link_rate_idx)
-- 
2.49.1

