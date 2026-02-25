Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KAnZIoDtnmk/XwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 13:39:28 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9481977AB
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 13:39:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59C1410E76D;
	Wed, 25 Feb 2026 12:39:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AsJUmYpu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8DF910E284;
 Wed, 25 Feb 2026 12:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772023163; x=1803559163;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=TxyXOCAQKBQO0BIg+YUo8PSPMsikYzD0k1Cy3vbGp/o=;
 b=AsJUmYpuWGbyLvp9QN50w+t7JfXWwLGRMdkgBLFXjFWVUbNUCasfaLBY
 0+YlV0cFR8ggCZC9HPWap+WkUaiFL+odJD4ycTjb6bINThEBT0GOxsBvk
 EVVR5P/lWrlmv+lm7XRE5xSQtKtRfHCutYYeUYWgG2vVm+rzwY+m1VL3B
 Y2YLETC9i8Do8EWvtHpgYT/qhYhPfF41DJQPe+fW9cD1KPEdoQrJlnh+3
 EVfRZMI1UTe6QNSfdj/87OeieNpfcXedTTxN3zVmcQLgyLPcWLXu/EfW/
 MG8t1oTtlmUFs37/3/OSGmfGybMPnv59bpS4AeMy3W7i15rzBJbrxnXTU Q==;
X-CSE-ConnectionGUID: 08LXXGKxQvWwShgBp5D4bQ==
X-CSE-MsgGUID: QCDytZcEQhm6IHeCsxVCow==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="98526046"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="98526046"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 04:39:22 -0800
X-CSE-ConnectionGUID: 6I9ifn4PRZ+P0i9g5UpuAg==
X-CSE-MsgGUID: wPvmK3xITTauHHbtAYJbcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="246775787"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 04:39:23 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 04:39:21 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 04:39:21 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.47) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 04:39:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b4EUWCOtpGdiyC+QpLN+QUbvRegG6UeJcsluYWALFNjyUW45p1jD2KKPpa9TVAJiBBsUXWpp969nezu7G96yj1eof+EF+Ybi6Tu8RwyWYUuP5Q2v0GqL05qMhLdsYQy1/GE/Kpm9r5fmm9ja07glgSmU9WuFjtXBK4YlwDLjIVWDxwVjiKX7TZugpLf11VK3J9P+bLeVD6mtThSTldDcxFDuD7nNGItji/3Bty+g6IsXyrgWXY4AftASkULCRuqrXF0TQHZ7fXijmBCOJruh632/hVQ62ERxZpDj2oWIepzD+DNQmw3foUW8cSvXH/4viDSg6lrrg22DoRpelrREtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sEfZFig4lFtatvZSiFXAKBeyZKXftLzxBOmpweDAU3I=;
 b=J1+hbr1jvcuE+XjoBRWUoOav5COh7v6b7yC4D8OazK0ALnU387RpC6BvJ/S64NKrLk99Lmyvi7vM4MZJmcXiHFUCRc8eZQeUY/4mihA2iNzs8mw6oLL82HqQGYZm8DTMwZpOJz5IWw+bZY1qgPBPErbOrpseOGssj/PzALw/J0s5lnt2BEWrGpbZa7jZqLKp7VIUhvr4+sxiApIdsGe4k2kA6m6ZdvEJbuP1zM1/H0nEzRpqJkf7EhzRJaNcw1qmDyg55C32o79GPOqNe4TFngZ9GMfEYHmWniAGZF3GJnmAigFCyazEDPSTQJeSesFg0Yama6RSAbl6XB9uRBGCCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA3PR11MB9254.namprd11.prod.outlook.com (2603:10b6:208:573::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Wed, 25 Feb
 2026 12:39:18 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 12:39:18 +0000
Message-ID: <aad645e0-d9a8-4814-89cd-b308e97b3951@intel.com>
Date: Wed, 25 Feb 2026 18:09:11 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] drm/i915/psr: Add DSC_SU_PARAMETER_SET_0 registers
 for PSR configuration
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20260219130743.1232188-1-jouni.hogander@intel.com>
 <20260219130743.1232188-3-jouni.hogander@intel.com>
 <af2b2ba4-05b9-4cb6-a01e-25c2132152fe@intel.com>
 <9f985404857ad2b679807b6cbb36eea8bc732f59.camel@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <9f985404857ad2b679807b6cbb36eea8bc732f59.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0035.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA3PR11MB9254:EE_
X-MS-Office365-Filtering-Correlation-Id: 2b88487d-de3e-4ceb-61ae-08de746ae47c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: kDQxz4a51cTM0McoC3z3lDsvo2rRLqOPswBsuaexYyrWg8/+hINGb7kwW1IcGWIuDpY/RdpWyddCkUBYsY8II8fxs5nlvet6VgKpPsCyfbWtkHlpE6Jc9fVJVRfWL/TDeUPuAsJRrp7UIB/tt38jHaAg6KRhButmCw+OagDzh8QkGLajtebYe6b7FtYSZfcrR/dAWuRHb218bDM/A/tht/akNwG1o3vWJ6Rbf8RSTiq14L8S/1J79AAoMW4NshoHUZRLpO4Onzu3xZAkdTNqOMSLMmzJ1K50ilSLJmwOJJAn9bE+3PPFUnU6h8EMFyZ5kohDNKrDSf9/tm63ZGj10H82layK0MVQ0G0ffvzHy6lbRztDuxzlN/rUxicEzo2YLwhvtRC+ikl5dxKjUBHwmup0xdNwI9TI3YTL4oAdjOBDkZkykpKgzr/y3LF71M4xqcJNEEH6lQudXbvmIMF1imyyB+z/wGo5rBzA8oBug1wH31iGl/FxluxzmAm4By3V5lI8Jw61Re6M3/hqh6qRYGmX6ldQO/1zH50hIjo6vq4hUKfq43MzMbLeyoofWCeTJKoEutbyj5Fqy1EV4ldEWTx9eeyb/z95LrRMySBAUxLTGkrNE8k5D3zDj42oybokqWZpjFdn4E1zJl3t/Bt+juSJS0Rx1+c+qL6z3e20R1n1iZTjK2Mic7MWX0ZsAYtVSKOLg314n/TiWBkQHnYeEGAjcWJHSXCW5CdxXUdSbEA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RWZZSURLOWZGTStRZVRtd0ZOaVZkVUlIaENCNkl5QmFiSnJLRHphdE5tM290?=
 =?utf-8?B?WmVHQXo2d3ZUT3dCZGdvcHB5eXoyZHFRRk9NZXp2R2QzakhzYWN3NytvWEJy?=
 =?utf-8?B?NGhMa1RxNXYvSnp4SkVYamJiRU9hUGQzeStiUkFpV3FOSzUvN0k5OTFPZm45?=
 =?utf-8?B?Q09ZdFQ2ZTlsbGpEbXdvZjEwMzloRzNpZGRNUUJZZzc0a1YzRFpkczBvRCsr?=
 =?utf-8?B?RUlJMit6bVhnd2JsUDVrc216T2lHeXhYak9wVFhHL0hONzJJdWY4SWRDbW9u?=
 =?utf-8?B?THhIWFR3L2NPa2pCUSsyT0N1d0NvQ3NITnhpbUFZS1ZIYjdHZE5NcEoyM2l4?=
 =?utf-8?B?eDBkQlNoKzJaR3pUem1OS1hYSHQyYzZPV0lUbjdoVFkrTFJSNlNFNlZmd0N5?=
 =?utf-8?B?Z3NrQW5IQlA5dzVKa1QrVzBRSVJIQkFQdkViendibFNTWDAvK1ZDQnRCdU9E?=
 =?utf-8?B?aFBTVzU2RkdKTjU0c01jY2cydk1WajdQei80b2MvTnErNHh0U2YrMHBFTkh4?=
 =?utf-8?B?T2FKUUlENG5mNEkrLzlWaTM0MmZQaFJLVkhGS1pUdVBJenhBSGdUVWdwdnpJ?=
 =?utf-8?B?NG1rS1YwaUtCeWtSdmJTUGcwK21vcDRVUmdxc1QxaUZlUXlMU2daRHE5aVY2?=
 =?utf-8?B?U0JNbFZXRVh1b294NUp4bi8rMk1wejJhOEZZZHBoRVdqRXcrSXZEQ1NpQXRC?=
 =?utf-8?B?RCt6NCtLQjE4L21tYUdmOG9mM2d6bUpmaUJld0d6Zi9FN2luWXFPcW01QXpQ?=
 =?utf-8?B?K1RHMnA1MGpVbG1HeUZqdzdTMDkzb3JMMExEci9nWEQxNmZpODllVXkyMXY0?=
 =?utf-8?B?VmdwaGZLNWpqK09UaCsxc1ROSGJEV2dZZ250cWtzNkxBQldVN1czckM2NW9U?=
 =?utf-8?B?SjVFWGYrVnBJbTh4UFZjM3RUREpXMnhxdVJ0ZmJKajFYcld1Z2FqeWk4dk9S?=
 =?utf-8?B?OFpzUkpEWnJ1VzAzTmlpRkw5d2tkREpYd2dPMnpZMVgzZ0VsaUs1VXd1ODM1?=
 =?utf-8?B?TEhFUzVDM2xtRlUzeEdMUFZFTklUYStKVnVFYTBhV2xCWnFUejkzcVlCNHMz?=
 =?utf-8?B?d3pKMlNTc0RWRGhLa3lxWGNRdnFGOUxwUHF4WlFSRmtvRzA4cTJmSTBoZmtt?=
 =?utf-8?B?S29mNEdVbVBOcWFJWXJPSmZUZmJWRkFyWmRyT0VkTWxMZStBbzlOSzFPNzJB?=
 =?utf-8?B?SThaMmNDOUpRTFNEckY4Y2RwbXpxYlNYWkZyWUIxYWNwNmhaN2t4WXpIU2V0?=
 =?utf-8?B?WjhxNE9EYnlYY3JYQ2xJQmxBMFRDV1h0QnFhNUEwekttTGxObTdkakZyQnlC?=
 =?utf-8?B?dmM0SEpXZEJ1NWtLUW9sRGZyVVcvTVNOZHgrY2w3alF4MUtva0hzeDdPdVJy?=
 =?utf-8?B?NEVhZWpoZnU2QnVvamZTUm1ERXlCMDlaOWw2WnNDQmlDZFJoT0dHMW51SytF?=
 =?utf-8?B?TnB5NWFtbHdnTzRSelh5MTErUzREeEdGU2tsUmpycDc5SC8yU3R3aWZsZC9U?=
 =?utf-8?B?ajluNzkrVFlWRGNVU3h2OTV2OERNVjJ6aDY5MGlPcHNvWlFhOGVvSTJtVUxW?=
 =?utf-8?B?Y3RSQitBR25tZlY2OEJwZVA4YkIvR0xrUE9KK2t2aDJSemdOSmFGZDFIUnp1?=
 =?utf-8?B?Y2owdWlILzU5UzR1SWh2RHFVcXJBbHU5dFBqZ3krUVhpMzNqRmttOFljYWkw?=
 =?utf-8?B?RURnODdtb2o3MzFmeW1iU2VNUXhXMisrUWFUaWQ2N3RXdHZIUUNlZ2d5N0Zz?=
 =?utf-8?B?d3pybTZRTmJrbit1QjdXcjAwU2hRNjlMTFJ2a3UxbjNRNjZlRHd1TUtCdGFx?=
 =?utf-8?B?bUZNWFFmc3dOeGxxalY3WXBWOEtoeFlidC9CNFZObWhxaFF6N0ZyUTVxR09t?=
 =?utf-8?B?WGdrU1c4TC9aNStmSnhQMFVYYmE4ZEhQRWtOejFUZlZQRUZyd0RCZENYNWJQ?=
 =?utf-8?B?Z1RuNFZ5SGVLUkwzMkovVnAyVkM5L0prOHFTYm5ObkNKa0c1TU9qTkM2eSsr?=
 =?utf-8?B?MUg5Z1Mvc2pxTCtCM2xmbTBLUGIrdUJKUTh1bTExZkQ0aEVPYUJMalpreHpX?=
 =?utf-8?B?cXBRNVk0aFJ4R2ttNVZZeXRTMDgvamxORE5OeTUyV2F4STNrKy9SUVNIQjJR?=
 =?utf-8?B?cVNKK0J0a280NWtEcVU0b1RmWWREUG9hdWNWc2JuaWZ4WEVBbXAwWUU5N0F6?=
 =?utf-8?B?V2dKM0tnLzdzYWVQNU1FV3JCQjZ1Rmc3V0xLckV5bWVLR3FkSG1kOVdWQlNa?=
 =?utf-8?B?MzRkejhONlgxaU9tVTlyUERDT0NGbHdNdURNRmhxUTVpaEdxSGRNTzNTMmFT?=
 =?utf-8?B?Um1uM2UyZFlHNTVMT2FSVnVHRjRPbDFSOTJNLzc4aDQzVE1qMVcwL21BbWtK?=
 =?utf-8?Q?g2iXKgTAzmTS7iII=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b88487d-de3e-4ceb-61ae-08de746ae47c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 12:39:18.5011 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zgOltniq3c8zZFfa1PvAVRarbtVbATHTSqE4KEEv1z7/OtRfTvOlYA/HFdCounCxdY0ti0WtR6Rv02Zz1fRsk1iTzfH6DjT0DU9Bs5KErJY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9254
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DA9481977AB
X-Rspamd-Action: no action


On 2/25/2026 12:00 PM, Hogander, Jouni wrote:
> On Wed, 2026-02-25 at 09:51 +0530, Nautiyal, Ankit K wrote:
>> On 2/19/2026 6:37 PM, Jouni Högander wrote:
>>> Add DSC_SU_PARAMETER_SET_0_DSC0 and DSC_SU_PARAMETER_SET_0_DSC1
>>> register
>>> definitions for Selective Update Early Transport configuration.
>>>
>>> Bspec: 71709
>>> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_psr_regs.h | 12 ++++++++++++
>>>    1 file changed, 12 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h
>>> b/drivers/gpu/drm/i915/display/intel_psr_regs.h
>>> index 8afbf5a38335..3d1523dece8b 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
>>> @@ -266,6 +266,18 @@
>>>    #define _PIPE_SRCSZ_ERLY_TPT_B	0x71074
>>>    #define PIPE_SRCSZ_ERLY_TPT(pipe)	_MMIO_PIPE((pipe),
>>> _PIPE_SRCSZ_ERLY_TPT_A, _PIPE_SRCSZ_ERLY_TPT_B)
>>>    
>>> +#define _DSC_SU_PARAMETER_SET_0_DSC0_A		0x78064
>>
>> I understand these are needed for PSR SU region, but these seem to
>> belong to DSC registers file with other DSC registers.
> I also considered to place it there and decided this would be more
> clear as Early Transport specific and written only in intel_psr.c.
> PIPE_SRCSZ_ERLY_TPT is here as well. You can't even find definition in
> Bsec DSC documentation (see Bspec 68912) We can consider moving these
> later (PIPE_SRCSZ_ERLY_TPT and DSC_SU_PARAMETER_SE_0) at once and move
> configuration of them from intel_psr.c. Thought I'm not sure if we want
> todo that. What do you think?

I understand the ET context and the existing PIPE_SRCSZ_ERLY_TPT, which 
also seem to be out of place.

What I can see is:
- 0x78064 and the rest sit inside the DSC MMIO range
- this still appears to be a DSC PPS register, which is needed for PSR 
ET condition.

So I believe that long term it will be cleaner if these are included 
with other VDSC registers.

We don’t need to move anything right now, keeping them with PSR regs is 
fine, but I think at some point of time these might be better placed in 
their respective files.

Regards,

Ankit


>
> BR,
> Jouni Högander
>
>>
>> Regards,
>>
>> Ankit
>>
>>> +#define _DSC_SU_PARAMETER_SET_0_DSC0_B		0x78264
>>> +#define DSC_SU_PARAMETER_SET_0_DSC0(pipe)	_MMIO_PIPE((pipe),
>>> _DSC_SU_PARAMETER_SET_0_DSC0_A, _DSC_SU_PARAMETER_SET_0_DSC0_B)
>>> +#define
>>> DSC_SU_PARAMETER_SET_0_SU_SLICE_ROW_PER_FRAME_MASK	REG_GENMASK(31, 20)
>>> +#define
>>> DSC_SU_PARAMETER_SET_0_SU_SLICE_ROW_PER_FRAME(rows)	REG_FIELD_PREP(DSC_SU_PARAMETER_SET_0_SU_SLICE_ROW_PER_FRAME_MASK,(rows))
>>> +#define
>>> DSC_SU_PARAMETER_SET_0_SU_PIC_HEIGHT_MASK		REG_GENMASK(15, 0)
>>> +#define
>>> DSC_SU_PARAMETER_SET_0_SU_PIC_HEIGHT(h)		REG_FIELD_PREP(DSC_SU_PARAMETER_SET_0_SU_PIC_HEIGHT_MASK,(h))
>>> +
>>> +#define _DSC_SU_PARAMETER_SET_0_DSC1_A		0x78164
>>> +#define _DSC_SU_PARAMETER_SET_0_DSC1_B		0x78364
>>> +#define DSC_SU_PARAMETER_SET_0_DSC1(pipe)	_MMIO_PIPE((pipe),
>>> _DSC_SU_PARAMETER_SET_0_DSC1_A, _DSC_SU_PARAMETER_SET_0_DSC1_B)
>>> +
>>>    #define _PR_ALPM_CTL_A	0x60948
>>>    #define PR_ALPM_CTL(dev_priv, tran)	_MMIO_TRANS2(dev_priv,
>>> tran, _PR_ALPM_CTL_A)
>>>    #define
>>> PR_ALPM_CTL_ALLOW_LINK_OFF_BETWEEN_AS_SDP_AND_SU	BIT(6)
