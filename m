Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sH6UD8klA2oF1AEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 15:06:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E51520A78
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 15:06:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1BE610EA8B;
	Tue, 12 May 2026 13:06:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kENu8kPh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A37189146;
 Tue, 12 May 2026 13:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778591172; x=1810127172;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=U+vxvEmnZlzT5IbiqA1WTcSbGy5CDhiHMWAxrUEck5w=;
 b=kENu8kPhgfLDSlejN5LfjLXfc3fRrSZM5LV45OFR3gqKGsDl6UwOysyU
 PF1zAHuf7jDEDQSviTlNi9kg2H4sz8ofxcQPCEWc7D0SMTmAURji60B5T
 iR9rNcAZUjEtQj0uXuq+jEuWws7XGvV5Qhw/3aghPE9CpsBHtQ9zga92P
 XxGlQBeqsAQiq4bItcRSzDBphITBfYd0Nhfo1WCh00kIihm7m8bIPrzZ6
 3qxm+fcKH7zICU7Y0MxJYBK1JmhFFUNOiTY+XnI9BF8/6PGMGlnSfLFQJ
 tCkrFGGEj5aFY6OsULOdtF3/7XRmValRtovW1NGPxF84YMx5YOOmAHEA9 Q==;
X-CSE-ConnectionGUID: A/VL0UErSwCYMiQFQP+7IQ==
X-CSE-MsgGUID: aQzIM3DDTf2AUaTB7rHXfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="90079202"
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="90079202"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 06:06:11 -0700
X-CSE-ConnectionGUID: f+RyJj25T3uug8hc2fi2uA==
X-CSE-MsgGUID: qYlhQwR+RtWDYbCD/L12LA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="242733873"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 06:06:11 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 12 May 2026 06:06:10 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 12 May 2026 06:06:10 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.62) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 12 May 2026 06:06:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MfybL7X874eamjeVo3/1YGl/k3n09RQ6xfj+XAxTKDUHsCRxdlM0XvodeqPeLieKRfa5SZ2ph3NTqwxmRVHpk9PXTlBp7C1EZI2wYYEx5o4X3CQ2YGBKGYtwAGMUUeb7ogEIjEWCrZOvXk/GYIlggUfLnW7NFbXSRA0GAGhGJcY/Er/VpUO4vZvDuuuIDZX/roHdz5DNOn7t1n399SVPGaSz3Tn/Eyr9HUGdjSvfbzJSjbys68EKKvnfS0E3j1HS6MQ+7ayKIZdLRCKwQvG1qVAoaJyO1NmbIJafn3lL34yq6G7tvmw6Fx7fOe/CDclWmMnw8GxKDcVzAn5vj2YKng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=233R9XyjeqJBdgNQlpNXEjn6f180vZi5+eK85pZhrtc=;
 b=Y4GqidkE03QIZz+e7DmJMwe5y1YGZrfl0Qf2KSIq9Im4pjiTEBJR+T2jkT/QrBa054qL8M2spE0jLLNII0Uo+U7vndrVx46Cyug2y/A8Lwy/DFP4qCF47yDkWKYkl9LAiNHaW42HTnGCBbQF0IviCw1Ypuj/iv6WnMGl7UQNvTgZWlfKxQFAzXfw0EdaQV5oGibPA8dHgEZTWkeAOF8TAxjhEf8jAzgIiMuVwM3q0i7dtMS7XTnxKWoe/xbWWD0pLS019PrQ9MdGFYYzXymiJFCG8U2VEg5qgC3huKrk5ajN+BaYijIXoeq/e+x4fb2amql9IZVGlE7q4IlpBrUMRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS4PPF3D6E0544B.namprd11.prod.outlook.com (2603:10b6:f:fc02::1f)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Tue, 12 May
 2026 13:05:59 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%5]) with mapi id 15.20.9913.009; Tue, 12 May 2026
 13:05:59 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2 1/4] drm/i915/bw: Extract platform-specific parameters
In-Reply-To: <20260511223847.GY2131374@mdroper-desk1.amr.corp.intel.com>
References: <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-0-e762cb8662da@intel.com>
 <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-1-e762cb8662da@intel.com>
 <20260511223847.GY2131374@mdroper-desk1.amr.corp.intel.com>
Date: Tue, 12 May 2026 10:05:55 -0300
Message-ID: <87ik8s3hho.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: BYAPR02CA0028.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::41) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS4PPF3D6E0544B:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c63750d-8a40-405d-38ed-08deb02735f0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|22082099003|18002099003|3023799003|11063799003;
X-Microsoft-Antispam-Message-Info: K1v1C28m1DmNgvGe1bsV3ob4H47MsROnCO0UJ6hg6RGwFURc9/m1MOuu3gZEV78Rv/2Le9qEwcr4nqkZjwUdowpQhXrAt4mxC9xUHUA8/mTGKrHFR9BVuffHhAwPMmSRJiojuU3AUVvblP4Ajlsi3VPmtR+Bb0Bf/GMx67nQkbSZKv4rVBMlI7stuupL/PA0Y0qkmcCM4mQsusHnx39hM+fj8/9HjRSaWtPieFqgWLbhnqWcnlDOVGoSNBAJzwKRKgX8tJeLJYpNQKFxI849MEq+RPnwN7VFihYnxQCDsj6ZaBz25G5eGMSuAbbK1rVftlsTkaxYRL2LLOTDDl8Vsh3aX8WQAcDiggbhXFbAKPgTKJPwvk5+13sQAjRSUYUL8y5ITY51m0K3nOE17156yuAuEyhgeajLysjzS++B5GgNNbaFky9Bp9Pij6ce8mTe/k4hL4FnRqeR6ScoNruzNjNpf25UFcx8XNB3LfGOP1ED/OPNU87shGZwDx9tD5wCGwTJxpzRf/vzT7emxDehPWkZrJ4QYHBy8+UYa2JrbWNYQCgl/gJ6nzsQy2U3O71V5Og9uhdnkQ7gtWy3hWSW3v41h7jn/WgdjY2wst8cyQdwSCCTNMFEoXT1MPZRdwemp/DqMWOZcoXQpJ3BGCATi3rhbU9mQqetBZm3K6boz11X74Zgfsmjv2tdnMq1nBiO
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(22082099003)(18002099003)(3023799003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ziIom9FZV4kXNXLCgFc3ODIismll0Ef/Dioq1jI3CIAQ+rojjoBjVldVcF0Y?=
 =?us-ascii?Q?rbOIzU2TQ0c664TyLDn6yW3rWtbgh7c9Lff7mJEjVuuiVWQWUUH/NeeYsuzL?=
 =?us-ascii?Q?P5DpNPv19a9wEXPTleGXgsd7gzD1fPh8mZ9ZBi16ZnXsJj5i39CXOylyodZa?=
 =?us-ascii?Q?grkD5FC4kqr+3+beU1cV9VH9hv8ymt3Bm9iYTd0Na7yfDG4mLYPIEOvETk4/?=
 =?us-ascii?Q?G7zjG9kdISxE4HpF+HVBCo3sQqtnuAvEJDRVb5VXg+oyNOq57X8BR9Fx88/B?=
 =?us-ascii?Q?wYD02kYB/s/CbcF5SdZCDysoJQqoWNnroigu+zUT+Iw9fg95h40hDggdD0EU?=
 =?us-ascii?Q?4Jvut59bFJ4UAa5D7wVHVF4uTQbzHvltsvb7+yKw7GgWIEX435dR7lUpyuJP?=
 =?us-ascii?Q?hNTTP4E8yAAq8FahX63Fc1uvZeOW2cJmmolpkM/PtQmXbUoaNkn3586qnhXH?=
 =?us-ascii?Q?YwIxFnxwSKAKztny+69SA0KHxNc7ftY9sGklywkCXRqEh9e0f97MzofYt3x8?=
 =?us-ascii?Q?1+1CTn+uaoPEZ6iBp0iQrPUjNKAQxVnUctZeImQiq5U7vE1xgk9/Y69fYCVn?=
 =?us-ascii?Q?3roOSbbKvIemLid7WIviRWH3iyrJc5/DS7SLneGV+hBNnF6BOORkzels7TGb?=
 =?us-ascii?Q?30bKZnh56ASEwJsycm/t1RYPq/64ODxI6yVrXdthy/blCAW0MSId2OZY547G?=
 =?us-ascii?Q?vwqnPLhLGB33/inysVRlhYxoyEeeHkIuBAd06FsbgSzl2QBLvmuB2nTVjmRr?=
 =?us-ascii?Q?hhHdoMZIpO9w93yFrQV4fC4v946/9cDydzpJBxVLSpvbLbYMnOq5FBKjEp2F?=
 =?us-ascii?Q?3lepY3O+xvJ/ioXnAyuK+1ugsGH0ei9MBSJNYKfVZ3CvIWXQE1mumaq7fyax?=
 =?us-ascii?Q?puBSL5713agoTY1ASM1J9dFw7JkpUdgvTxVSizl/p6g/3nt/0Lqdqy6lDarG?=
 =?us-ascii?Q?YV55B829zlty4MhWXsXQ5XfebaGwgoBeaWoTLF21xDWXU+97brcN8RvtYQpV?=
 =?us-ascii?Q?VLTK42oNkhN6me3jULGkscVlNOkULM02zXOwec18eTUxRWQqAYKBReNVa9g8?=
 =?us-ascii?Q?xILTxqvuj/n8j3sbpxQEV8oVN8ynxfqZvxzfGPw4MM3yxfyZSew5VwdXpVJa?=
 =?us-ascii?Q?ip9pB96roBUNqEk17Qcjeh/MzbsF7hjjCN4InHszxTE4Mcqu2C1oMw9MqZcE?=
 =?us-ascii?Q?Js8vvnxIoNAJJBPujDRq9jiSnYtIAFDUvRIqc01WGBx4n+EtR+OP8JjummsO?=
 =?us-ascii?Q?a+gKKqLmz9GnKylCPx/4AI6XmlQwORT0pbBgCtIn4jmYY58Wlw8Mi7Ovg/8L?=
 =?us-ascii?Q?VWe1JRpL2zx8jFTH3edOW1P1NjUtA7aVzhrncv2Wem1UckqNP3uJU+eOOz6F?=
 =?us-ascii?Q?IWvZvLBZFtLEkvKMxrfleipEYeFIFWEOBojF6ww4mzEeoCYK/0kLFxdbNLHo?=
 =?us-ascii?Q?XzQ5dVcMoGGuO+p0i62uMod4b15/EsXACHHgFJgaq5drmwphjmjC+l3ZrWLc?=
 =?us-ascii?Q?PlWUQgWFS/+OuFgLUC0s+aN/3WyljKHz3Mj9TZVUEiKXrdKhgb4rvUY8LCVE?=
 =?us-ascii?Q?0c4V7g/xP5THytWaaLnJxzTkHJX0exyvlV7ym04WettsmMNSBqUqHmYdGO6g?=
 =?us-ascii?Q?Wj6tH63hWvtqw7ZSsMouKmrtIGHxY/P/qPHyh3Y0O/bXUueRZmF4o8b4b2+d?=
 =?us-ascii?Q?ac+L9P9uwZ4VeYyBJ8YzRuKDYY2j73CWEs61DNxaE1Wl2wBYn6K2XxaM1A7C?=
 =?us-ascii?Q?llLB4ej9Sw=3D=3D?=
X-Exchange-RoutingPolicyChecked: izQ3LOiJjgoosDjsYOUodGAetukXz29fw/HM8TMCFealUp05HhdhtmY7j8QBvYKjmUtn+xBzb8y3CRLnOA7rYyg2xYkutvPp1A1ZCRebY3d7rEyLF4FkioKBzo6v8eIJXyBDj3vXBav782xY3i4yJ07jRnH4w25857haEPWCjprnn+q8OIs6NHd7tZ9fnUuydCrx2zXeqEdt7Njh894T1jIc1TL4nHEMwIMXy7aiY4XfofwTqfmRoUEcG9BVTYfDKrpb3wab+EwoNgx4LcCFJCRy7sux41xNhdfUTNENxkitMk8yYIgQWhsXCp1QFucZCVRnyqzssDeGIRNFFz6IAA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c63750d-8a40-405d-38ed-08deb02735f0
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2026 13:05:59.2052 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kJBUNI44eaMdNGk9JwkOrrcQ6Lw4Mzi4lEgeux9W/t7jpzgacYIhtKFROISTZunHBFXdHxnjcW0lPGfvi0BvxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF3D6E0544B
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
X-Rspamd-Queue-Id: 98E51520A78
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Matt Roper <matthew.d.roper@intel.com> writes:

> On Mon, May 11, 2026 at 01:30:56PM -0300, Gustavo Sousa wrote:
>> We got confirmation from the hardware team that the bandwidth parameters
>> deprogbwlimit and derating are platform-specific and not tied to the
>> display IP.  As such, let's make sure that we use platform checks for
>> those.
>> 
>> The rest of the members of struct intel_sa_info are tied to the display
>> IP and we will deal with them as a follow-up.
>> 
>> v2:
>>   - Use good old if-ladder instead of weird-looking pattern "assign ret,
>>     check platform, then return ret". (Jani, Matt)
>>   - Have a single call site for get_platform_bw_params() and pass the
>>     result as parameter to the *_get_bw_info() functions. (Jani)
>>   - Avoid using "plat" as abbreviation for "platform". (Jani)
>>   - s/_plat_bw_params/_bw_params/, since all of the instances are
>>     prefixed with platform names. (Jani)
>>   - s/struct intel_platform_bw_params/struct intel_soc_bw_params/.
>>     (Matt)
>>   - Do not return a default value; prefer to return NULL and
>>     intentionally cause a NULL pointer dereference if a platform is
>>     missing. (Gustavo)
>> 
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bw.c | 161 ++++++++++++++++++++++----------
>>  1 file changed, 113 insertions(+), 48 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
>> index 9c3a9bbb49f6..cf6756b8ae52 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bw.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>> @@ -372,81 +372,147 @@ static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
>>  	return dclk;
>>  }
>>  
>> +struct intel_soc_bw_params {
>> +	u8 deprogbwlimit;
>> +	u8 derating;
>> +};
>> +
>> +static const struct intel_soc_bw_params icl_bw_params = {
>> +	.deprogbwlimit = 25,
>> +	.derating = 10,
>> +};
>> +
>> +static const struct intel_soc_bw_params tgl_bw_params = {
>> +	.deprogbwlimit = 34,
>> +	.derating = 10,
>> +};
>> +
>> +static const struct intel_soc_bw_params rkl_bw_params = {
>> +	.deprogbwlimit = 20,
>> +	.derating = 10,
>> +};
>> +
>> +static const struct intel_soc_bw_params adl_s_bw_params = {
>> +	.deprogbwlimit = 38,
>> +	.derating = 10,
>> +};
>> +
>> +static const struct intel_soc_bw_params adl_p_bw_params = {
>> +	.deprogbwlimit = 38,
>> +	.derating = 20,
>> +};
>> +
>> +static const struct intel_soc_bw_params bmg_bw_params = {
>> +	.deprogbwlimit = 53,
>> +	.derating = 30,
>> +};
>> +
>> +static const struct intel_soc_bw_params bmg_ecc_bw_params = {
>> +	.deprogbwlimit = 53,
>> +	.derating = 45,
>> +};
>> +
>> +static const struct intel_soc_bw_params ptl_bw_params = {
>> +	.deprogbwlimit = 65,
>> +	.derating = 10,
>> +};
>> +
>> +static const struct intel_soc_bw_params wcl_bw_params = {
>> +	.deprogbwlimit = 22,
>> +	.derating = 10,
>> +};
>> +
>> +static const struct intel_soc_bw_params *get_soc_bw_params(struct intel_display *display)
>> +{
>> +	if (display->platform.dgfx) {
>> +		if (display->platform.dg1) {
>> +			return &tgl_bw_params;
>> +		} else if (display->platform.battlemage) {
>> +			const struct dram_info *dram_info = intel_dram_info(display);
>> +
>> +			if (dram_info->type == INTEL_DRAM_GDDR_ECC)
>> +				return &bmg_ecc_bw_params;
>> +			else
>> +				return &bmg_bw_params;
>> +		}
>> +	} else {
>> +		if (display->platform.icelake ||
>> +		    display->platform.jasperlake ||
>> +		    display->platform.elkhartlake) {
>> +			return &icl_bw_params;
>> +		} else if (display->platform.tigerlake) {
>> +			return &tgl_bw_params;
>> +		} else if (display->platform.rocketlake) {
>> +			return &rkl_bw_params;
>> +		} else if (display->platform.alderlake_s) {
>> +			return &adl_s_bw_params;
>> +		} else if (display->platform.alderlake_p) {
>> +			return &adl_p_bw_params;
>> +		} else if (display->platform.meteorlake ||
>> +			   display->platform.lunarlake) {
>> +			return &adl_s_bw_params;
>
> Any reason not to combine this with the ADL-S branch of the if/else
> ladder?

I was trying to follow platforms in chronological order (not sure if I
got it completely right, though).  But, yeah, maybe just better to group
by bw params instances -- differently from IP version checks, there
isn't much benefit in sorting by platforms anyway, at least not in this
case.

>
>> +		} else if (display->platform.pantherlake ||
>> +			   display->platform.novalake) {
>> +			if (display->platform.pantherlake_wildcatlake)
>> +				return &wcl_bw_params;
>
> Can we just flatten this out rather than nesting?
>
>         } else if (display->platform.pantherlake_wildcatlake) {
>                 return &wcl_bw_params;
>         } else if (display->platform.pantherlake ||
>                    display->platform.novalake) {
>                 return &ptl_bw_params;
>         }

We can.

>
>
>> +			else
>> +				return &ptl_bw_params;
>> +		}
>> +	}
>> +
>> +	drm_WARN(display->drm, 1, "Platform-specific bandwidth parameters not found!\n");
>
> I think 
>
>   i915_driver_hw_probe -> intel_bw_init_hw -> get_soc_bw_params
>
> is called unconditionally on all platforms for i915, not just the recent
> ones where we started caring about memory bandwidth, so I'm not sure if
> this WARN is appropriate since we'll always hit it on the pre-gen11
> stuff.

Yep. My bad: I totally missed that this will end up getting called for
pre-gen11; and CI results made that very clear! :-)

>
> Since the values populated here only get used when paired with display
> IP version 11 or later, we should probably add that as a condition since
> those are the only cases where it matters that we found a set of SoC
> parameters.

Maybe we should just bail out from intel_bw_init_hw() if display version
is less than 11? I think that's probably cleaner and we can keep the
current get_soc_bw_params() as is.

Thoughts?

--
Gustavo Sousa

>
>
> Matt
>
>> +
>> +	return NULL;
>> +}
>> +
>>  struct intel_sa_info {
>>  	u16 displayrtids;
>> -	u8 deburst, deprogbwlimit, derating;
>> +	u8 deburst;
>>  };
>>  
>>  static const struct intel_sa_info icl_sa_info = {
>>  	.deburst = 8,
>> -	.deprogbwlimit = 25, /* GB/s */
>>  	.displayrtids = 128,
>> -	.derating = 10,
>>  };
>>  
>>  static const struct intel_sa_info tgl_sa_info = {
>>  	.deburst = 16,
>> -	.deprogbwlimit = 34, /* GB/s */
>>  	.displayrtids = 256,
>> -	.derating = 10,
>>  };
>>  
>>  static const struct intel_sa_info rkl_sa_info = {
>>  	.deburst = 8,
>> -	.deprogbwlimit = 20, /* GB/s */
>>  	.displayrtids = 128,
>> -	.derating = 10,
>>  };
>>  
>>  static const struct intel_sa_info adls_sa_info = {
>>  	.deburst = 16,
>> -	.deprogbwlimit = 38, /* GB/s */
>>  	.displayrtids = 256,
>> -	.derating = 10,
>>  };
>>  
>>  static const struct intel_sa_info adlp_sa_info = {
>>  	.deburst = 16,
>> -	.deprogbwlimit = 38, /* GB/s */
>>  	.displayrtids = 256,
>> -	.derating = 20,
>>  };
>>  
>>  static const struct intel_sa_info mtl_sa_info = {
>>  	.deburst = 32,
>> -	.deprogbwlimit = 38, /* GB/s */
>>  	.displayrtids = 256,
>> -	.derating = 10,
>> -};
>> -
>> -static const struct intel_sa_info xe2_hpd_sa_info = {
>> -	.derating = 30,
>> -	.deprogbwlimit = 53,
>> -	/* Other values not used by simplified algorithm */
>> -};
>> -
>> -static const struct intel_sa_info xe2_hpd_ecc_sa_info = {
>> -	.derating = 45,
>> -	.deprogbwlimit = 53,
>> -	/* Other values not used by simplified algorithm */
>>  };
>>  
>>  static const struct intel_sa_info xe3lpd_sa_info = {
>>  	.deburst = 32,
>> -	.deprogbwlimit = 65, /* GB/s */
>>  	.displayrtids = 256,
>> -	.derating = 10,
>>  };
>>  
>>  static const struct intel_sa_info xe3lpd_3002_sa_info = {
>>  	.deburst = 32,
>> -	.deprogbwlimit = 22, /* GB/s */
>>  	.displayrtids = 256,
>> -	.derating = 10,
>>  };
>>  
>>  static int icl_get_bw_info(struct intel_display *display,
>>  			   const struct dram_info *dram_info,
>> +			   const struct intel_soc_bw_params *soc_bw_params,
>>  			   const struct intel_sa_info *sa)
>>  {
>>  	struct intel_qgv_info qi = {};
>> @@ -466,7 +532,7 @@ static int icl_get_bw_info(struct intel_display *display,
>>  	}
>>  
>>  	dclk_max = icl_sagv_max_dclk(&qi);
>> -	maxdebw = min(sa->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
>> +	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
>>  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
>>  	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
>>  
>> @@ -496,7 +562,7 @@ static int icl_get_bw_info(struct intel_display *display,
>>  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
>>  
>>  			bi->deratedbw[j] = min(maxdebw,
>> -					       bw * (100 - sa->derating) / 100);
>> +					       bw * (100 - soc_bw_params->derating) / 100);
>>  
>>  			drm_dbg_kms(display->drm,
>>  				    "BW%d / QGV %d: num_planes=%d deratedbw=%u\n",
>> @@ -518,6 +584,7 @@ static int icl_get_bw_info(struct intel_display *display,
>>  
>>  static int tgl_get_bw_info(struct intel_display *display,
>>  			   const struct dram_info *dram_info,
>> +			   const struct intel_soc_bw_params *soc_bw_params,
>>  			   const struct intel_sa_info *sa)
>>  {
>>  	struct intel_qgv_info qi = {};
>> @@ -554,7 +621,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>>  	dclk_max = icl_sagv_max_dclk(&qi);
>>  
>>  	peakbw = num_channels * DIV_ROUND_UP(qi.channel_width, 8) * dclk_max;
>> -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
>> +	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
>>  
>>  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
>>  	/*
>> @@ -599,7 +666,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>>  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
>>  
>>  			bi->deratedbw[j] = min(maxdebw,
>> -					       bw * (100 - sa->derating) / 100);
>> +					       bw * (100 - soc_bw_params->derating) / 100);
>>  			bi->peakbw[j] = DIV_ROUND_CLOSEST(sp->dclk *
>>  							  num_channels *
>>  							  qi.channel_width, 8);
>> @@ -661,7 +728,7 @@ static void dg2_get_bw_info(struct intel_display *display)
>>  
>>  static int xe2_hpd_get_bw_info(struct intel_display *display,
>>  			       const struct dram_info *dram_info,
>> -			       const struct intel_sa_info *sa)
>> +			       const struct intel_soc_bw_params *soc_bw_params)
>>  {
>>  	struct intel_qgv_info qi = {};
>>  	int num_channels = dram_info->num_channels;
>> @@ -676,14 +743,14 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
>>  	}
>>  
>>  	peakbw = num_channels * qi.channel_width / 8 * icl_sagv_max_dclk(&qi);
>> -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
>> +	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
>>  
>>  	for (i = 0; i < qi.num_points; i++) {
>>  		const struct intel_qgv_point *point = &qi.points[i];
>>  		int bw = num_channels * (qi.channel_width / 8) * point->dclk;
>>  
>>  		display->bw.max[0].deratedbw[i] =
>> -			min(maxdebw, (100 - sa->derating) * bw / 100);
>> +			min(maxdebw, (100 - soc_bw_params->derating) * bw / 100);
>>  		display->bw.max[0].peakbw[i] = bw;
>>  
>>  		drm_dbg_kms(display->drm, "QGV %d: deratedbw=%u peakbw: %u\n",
>> @@ -792,6 +859,7 @@ static unsigned int icl_qgv_bw(struct intel_display *display,
>>  void intel_bw_init_hw(struct intel_display *display)
>>  {
>>  	const struct dram_info *dram_info = intel_dram_info(display);
>> +	const struct intel_soc_bw_params *soc_bw_params = get_soc_bw_params(display);
>>  
>>  	if (!HAS_DISPLAY(display))
>>  		return;
>> @@ -807,28 +875,25 @@ void intel_bw_init_hw(struct intel_display *display)
>>  
>>  	if (DISPLAY_VER(display) >= 30) {
>>  		if (DISPLAY_VERx100(display) == 3002)
>> -			tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_info);
>> +			tgl_get_bw_info(display, dram_info, soc_bw_params, &xe3lpd_3002_sa_info);
>>  		else
>> -			tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
>> +			tgl_get_bw_info(display, dram_info, soc_bw_params, &xe3lpd_sa_info);
>>  	} else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
>> -		if (dram_info->type == INTEL_DRAM_GDDR_ECC)
>> -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_ecc_sa_info);
>> -		else
>> -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_sa_info);
>> +		xe2_hpd_get_bw_info(display, dram_info, soc_bw_params);
>>  	} else if (DISPLAY_VER(display) >= 14) {
>> -		tgl_get_bw_info(display, dram_info, &mtl_sa_info);
>> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &mtl_sa_info);
>>  	} else if (display->platform.dg2) {
>>  		dg2_get_bw_info(display);
>>  	} else if (display->platform.alderlake_p) {
>> -		tgl_get_bw_info(display, dram_info, &adlp_sa_info);
>> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &adlp_sa_info);
>>  	} else if (display->platform.alderlake_s) {
>> -		tgl_get_bw_info(display, dram_info, &adls_sa_info);
>> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &adls_sa_info);
>>  	} else if (display->platform.rocketlake) {
>> -		tgl_get_bw_info(display, dram_info, &rkl_sa_info);
>> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &rkl_sa_info);
>>  	} else if (DISPLAY_VER(display) == 12) {
>> -		tgl_get_bw_info(display, dram_info, &tgl_sa_info);
>> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &tgl_sa_info);
>>  	} else if (DISPLAY_VER(display) == 11) {
>> -		icl_get_bw_info(display, dram_info, &icl_sa_info);
>> +		icl_get_bw_info(display, dram_info, soc_bw_params, &icl_sa_info);
>>  	}
>>  }
>>  
>> 
>> -- 
>> 2.53.0
>> 
>
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
