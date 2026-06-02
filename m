Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id w6x2HsYGH2pWdgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 18:37:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F90B630403
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 18:37:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=n822jTjy;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BFBC10F393;
	Tue,  2 Jun 2026 16:37:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6234310F393;
 Tue,  2 Jun 2026 16:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780418244; x=1811954244;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=iiw3U0KKTk2qBrQO813dg2RYjHVGbshLsT9BMn6KNEM=;
 b=n822jTjy4jNZ+J7TVrRD25wARSSl6eMqLn6tGlXtuj+8QNR2oKQZE3o+
 TGu+Xxzts0HnTeYS9F0udC/7RD0QtA+tHNoUdHdj1sf055Qt1iS739A6Z
 cmsWNyNEbuSZfAnhDT36GXtBjw9pHGLzIwCNK2qZkeOmz8qicyK2MCC01
 e09VoMyRFuELZHCEgDfQKmGq7n76qarPAMHpuxafn4iFUPtcFqY5pitcB
 C5OuYHjqvOg0d59SlvrUd8LLwmjYkWV1zLugp8kxgt5WTnopB9K+qlG9u
 58SmQN6UaSthmhZAU8b9+OO0vdhoUymT+sTSWJUdPVnnu9Z4lVK0Pqepb g==;
X-CSE-ConnectionGUID: TBL67LZbTV23aEc7WFK7+w==
X-CSE-MsgGUID: 0L9VOEQrSwist3EYr2q90A==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="98774997"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="98774997"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 09:37:23 -0700
X-CSE-ConnectionGUID: m8cx4MKgTOKpd2lMQsML/g==
X-CSE-MsgGUID: hpE0u79uSOq88vCutaN6iA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="274209371"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 09:37:23 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 09:37:22 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 2 Jun 2026 09:37:22 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.34) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 09:37:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dlN7VQbCMmG1V4rCK9gLGR/twrTYltcm0tF0yWKqt20McRCCef0W5CNo+svjHRU0z3Wm9w7rz82RINAEb5WmlAiB5W3MKrFUSwevVP1Qt0QJPk+8sp/jQVVbxe0gX+DVJ4OQQWUzZ9Awx1Q9gkvkEXCnl5SZ7KKksCvKeg1aJV5hO+kOi7f3oPDAm8miZ/lRVi1GsGedx3rFfIpq4piJJ+LkmOa5EOkM2yB2upcu+34dlR8qH1omFOwNvR8UyLeG3yZhYmFC2SJsxMpkJ1U+7myN2E/zssaK3E8EKgZwsPn2cdv+fpkW6MgvmnSFKUxFo/iyrxeU8r97cQ0oMZy9bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KsGzTlhvfCCoR9bBxw8eUjGAT1zvhrZ2eqzVAnjF8wY=;
 b=ORqqtS7N7Zpgvw7i1ELxYp0Bn0JGT1TA36j3vr0Zn6O0NrNeRhqTGYUPFBQzs2DcJTsEjD0I8/D9RRWAnRXKInMg1nspFQA9LfMNZLbkAD7HnK6y3VL+/STJ7xemMOJgYNMb8bWFCS0pAVQrReb9IfmXmKCN8ek488LRQwl9kB9wqi8BTALbAnDT3y6JnSAJ8olkK8SFEpksMZnK9wKiORDbuyVXi1rpZKtK4QeYO2tP1AGS4mGmyYASd3NmTQMV5Dqfwzb65RyyIrSdC6CGzE56KojXCPcCBkBd85mWxgl4xcC0ItAO/vfItLy1U8HMBl4uS97tsqcfbxTsgxiF5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CY5PR11MB6487.namprd11.prod.outlook.com (2603:10b6:930:31::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Tue, 2 Jun 2026
 16:37:18 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Tue, 2 Jun 2026
 16:37:16 +0000
Date: Tue, 2 Jun 2026 19:37:10 +0300
From: Imre Deak <imre.deak@intel.com>
To: Stephen Fuhry <fuhrysteve@gmail.com>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: Refcount for fec enable/disable
Message-ID: <ah8GtmhJNpb8_f3G@ideak-desk.lan>
References: <20260601142943.1481728-1-arun.r.murthy@intel.com>
 <ah60jJkzbbw25R-L@ideak-desk.lan>
 <IA0PR11MB7307C39641297A08DB4C6A1ABA122@IA0PR11MB7307.namprd11.prod.outlook.com>
 <ah7c59mNa4WfTJKu@ideak-desk.lan>
 <CAEraX5wnHv5qC3fwqNmWbDCu7qxB3+ByTHK8QYpVen3Z23tJQw@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAEraX5wnHv5qC3fwqNmWbDCu7qxB3+ByTHK8QYpVen3Z23tJQw@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF0005F72A.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::2cc) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|CY5PR11MB6487:EE_
X-MS-Office365-Filtering-Correlation-Id: 893c5415-7cb3-435a-10e8-08dec0c534e5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|22082099003|18002099003|6133799003|56012099006|4143699003|11063799006|5023799004;
X-Microsoft-Antispam-Message-Info: 63DbkhsCz9HSkb+7J4S3KwZ1F25zGaL9tiuznFuEcJHdZUqnmIXcpUOOfIumslmHTQybm+fAtXWrASAWCP8nJY/LVGZ6bnkh0VulNM0100ySMgD4A60TJczRtSLQzoVRgDWvuj0OuhRetdVUwQvdTuVvk3TIs5l/yO5FS9xc8mu81j6UyZS2X9zxIUIzQPAq6m5Zk8mLVNoNP8L4ZlXDuqXuck0kf+iuF3Y5GtOUt755/m/puzdmQJkd4ClT5kcGzkq6Wd9kQg6l4BVk8vseqegAf2Hqu7mGUyXf7kv0zHnbcYNIwPhZ07hyRA6HOjXgajcYFXYzhnT3dcT9cyjBOOoZ0whjQsr9ZbRm5mObpuptqXY3DgS4fl1e5YvnBZI0b8nkp2mm9AT4zYna1NKSmpGjOGNQIUGHdQZXfkfFRb5Gd6EmV/ENID/+SfYoNoRmI0dADviTsJJGLXqoklNnLKc031/GTjnqwVH7DGZBI0LAPQ2Yrw7eAeQz4uJfNgt01BCFoc1RGGDuc4svo/Q+9C1Wc8TAlSUrISkQ8P25MKTvtfFXcAkZ08B9iDpG3jOptJsDE/S9VOGAj5+6zU3cYmitTCFV1uMiVr+BKfZxMBfxl33edpkDoxS5qBYo6bz6qa/GURcWTyfcFG8BJtvj6A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(22082099003)(18002099003)(6133799003)(56012099006)(4143699003)(11063799006)(5023799004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHhMZjVFdlpVVVFYRGZSdzR4U2lQTVJtTC9WVVZTL2lsSjNvNU40WUdIM0F5?=
 =?utf-8?B?TEw5UHhCbjIwbWoyT1lJVXJsK3VlU0JYYy9wa0FyMUtWTTBXZVdmNjJOTnJL?=
 =?utf-8?B?ZGI0QmFSL1IyOHlMSkxJNEEyRVc3enRjTzJjSHR1N1hzSk9DWng1djYwYTJm?=
 =?utf-8?B?dFB0ODVXTERRa0pwOVhvQnEzNWhwREhPMWpRdVYwWWFXM1I0aHIrK1FqVmlS?=
 =?utf-8?B?VVhwQlR6TTN5WnZ1WC9PbVBhSU53Uklpanl4V2pDYWtKZ0s0b3U5OHl1M0c3?=
 =?utf-8?B?Ym9LUHA1YjdBTTRDTE1jbHU4bFBKZU81VVhrZmxRU2twYTBYU0tDWHJCNUpK?=
 =?utf-8?B?enFybXBJL0ZRSWNjTG0zZG5BMEYzQWRDd3IrNmV1TzNhbjc5UXliYTF6YmtO?=
 =?utf-8?B?T0xCdmJ6WEZqTW1Tc0pmWFN4QmV4TGdheFE3MmliY0R3dUNIRC8wVitOc2xO?=
 =?utf-8?B?ZUgwYzAvbnBtQVNiaWpabEtLeTBYQlhIZUd5UW42ZlBXcjlhdUxTUkhTZTdW?=
 =?utf-8?B?azdDeURJSDhtRjJPNFNpT0VCYXp0TkxLREdLTzk2M1hVUjRITzJQakdzNjNL?=
 =?utf-8?B?RmdhaXQyRUZaN3JRbitIRWZRakdQdEF5N25YNG5IZEtEVU1Mc2JDRDgxUFR0?=
 =?utf-8?B?M2V5ZDcxVCs1dExtUlBPUnJNd1F1TzZ6N0tBaUtUZ3VLVU5EU0xEMXdmdHQv?=
 =?utf-8?B?Rjl5dVZRdmFNVm1KTXVwa2xwTU5qcW83TTdERmtwdklZRkNtRXZXeCtyZEx4?=
 =?utf-8?B?aHlGeGJOTzFEZk5aRk5Wa2pJaVA1c0wwSnovdkNMQUxWcURra2E2ODNWSVFu?=
 =?utf-8?B?OVFKdmZXdWNuUkozcXhyRU9MY2hCZHkzcElRYlJ3RlhtdTlwaHJ1ZE4vdUwy?=
 =?utf-8?B?TDVReStFMnlXNExjNStyS2VvTG9SbTNDaWZKUUdyNHhobkJlVmhMcHh2YUJ2?=
 =?utf-8?B?d24wUjJoSzdFWEYyRlNudmlrV3cwWHRWck8zdkVJdnNLdlFDZEplcVNBdE5j?=
 =?utf-8?B?RzVuOUNzZUE1QTByR2lDYzNWVXBUeUtPVzVHY3M5cWYwb0JLalRpa2ZOTGR6?=
 =?utf-8?B?a21BMzh3ekpEU1dGRldJdjY0c1NvdkZ2MSs1VTBSS0FXdjFBNlNRQnBwa0tG?=
 =?utf-8?B?NWVIYS8rN200WHJseW4veVVMZ0g3VWE2aXU2SDdKOTE3QkVPL2JwL3RaVVBy?=
 =?utf-8?B?Sit0MzF4a2Y4ZHdTb1J3NlRBWnNhbHpNOHo1bWxZMDJFUHNDYXRycGFWUGZZ?=
 =?utf-8?B?Vm5YV3FRWVJwMTUweGxKQmIvYVZyMUpBN0tHcVRNU2JHT3FaNXZYL1BzWEpQ?=
 =?utf-8?B?Q25hbEt1NmdXUDNuUkpzL21icUJMWU5GWGY2RlQ1VmxuZjJIZUJTQ3A1OWFi?=
 =?utf-8?B?TjNpZTNRUzhZVVpwWnZ1a3NJVm5oNXovUEhyZnFpZFpIRWJwcVpRYmpaVWx0?=
 =?utf-8?B?ZmlyRWxNOWs5b1puUThCK0F3TzQzVDc0WmlyM1l2SlI3YVJDc3VRVW5oZ2hP?=
 =?utf-8?B?dHh5amoycEpVbEVWTzVaYzVFdHkvY1UvZCtZOWJ0RmZxTGpEZEZOcW12ZEp1?=
 =?utf-8?B?TlFlSk1oamFNQ3pScmF5Uzdaa3NDSzN1U1Z6bkVFVnhPazNJcHNHK1B2alo3?=
 =?utf-8?B?WE5aY3p5aVFPdkN1ZGc4cGxLZ3ZQTHg3elVzUTZwUS9VYmR1dnZmTlRmL29y?=
 =?utf-8?B?eTdPa2QvN2dRL1BMNnkwSi8rd0ZWSHM0MVJVOUgvVitrN0xpWk85bVJ1NFpW?=
 =?utf-8?B?cEtPOUNXekkrMDdNRnIweC9BU3lDS0lQbG5SVjJvRFRyUEIzVTl6ZE5nbHl5?=
 =?utf-8?B?b0Q1YmIrSWduWkRjbjlNUk9MWTAvMUlIUlhSRTlVOEhOODBrS240VDBHV2h4?=
 =?utf-8?B?VWFocndkQlhTSnBFRGFMMmdyNjViVWxhS2hla0FJWDBKUTUrV0tubDBJL1I0?=
 =?utf-8?B?QU9JVGYrT1BPWisvRStjOTArcXcyU3pKblRXRVZVaHg0RzdqY1phblZ3cGlR?=
 =?utf-8?B?TTVEZENuOFBqWHNRTWgwNHM2Q09VWVVOeUNhck5XMXBRa09aRXFQWXlDblhl?=
 =?utf-8?B?Qm1ua3UzSmI0MUdVYUluMGt6QXc3NUp1VGMxU3dpZ3pUUE1CVVZlOGF6b25F?=
 =?utf-8?B?NmwveTVzTVU2aHdPWnR3MFJDSUhZZlJKWnJxYVk0V1Mzb0doZk1UM2pHVzlk?=
 =?utf-8?B?OTdWREN6K2RtTWhzTldzaHlLaUlyZE1lWDZUeUlINnNKYTM1Smo0aHBKM1A2?=
 =?utf-8?B?RHM2U3dMdTFhS0xuZEt5dm5hYlllQXJadmlLdEFrQjZobjA5OTUyZVNlSURX?=
 =?utf-8?B?akJBeDlnTDczYVFmcXE3RFhjQzJEZ011TWQzMEZubk1Fc01NWFJGUT09?=
X-Exchange-RoutingPolicyChecked: D05RbrPGv1Z/G9Vt65CFTlfRnoS2L+OcGNhaAPkyFXsAw2hX3Xvd1XpbSkTumaaf+UMYUdJ5jTB5ybLotDn1RoA2b/uTQOm0XWSTuA0sNENczNrQmUtspWYfKmk83SOs+i55fdMZ276Hw/9NeDE2ti2ScHVOWfJc0BhJwH13uM+Xuj7ppdk/1Vt6hLMqKtWzIeJ0qus3AplS1Om+EXOzg8E2fgcCaeo3vsTv5Shj459fbSlacAAXw8C4Tsq1mRhSdQiHY/WDB1STWp3MF5kShz39X1sWK5C7avRLd4jZ+6/DTOWYq/HWtJvwFSqJD9hh2WY0xJrlVXgQxZ5mF+FEBw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 893c5415-7cb3-435a-10e8-08dec0c534e5
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2026 16:37:16.4164 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kaJ7JlZH8seNG2of7BN3LfaESdRM2O0qPZir2jFK1TIDOEPXK4qzoMjBiRjG9dsJ+KF2qb5kps3L0pdNgn1cHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6487
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:from_mime,intel.com:replyto,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FREEMAIL_TO(0.00)[gmail.com];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7F90B630403

On Tue, Jun 02, 2026 at 11:33:09AM -0400, Stephen Fuhry wrote:
> I can share some observations from the debug logs captured on the affected
> system (drm.debug=0x10e, Alder Lake-P [8086:46a6], ThinkPad dock, 1080p on
> pipe B + 4K DSC on pipe C) that may help clarify the root cause.
> 
> Imre's assertion about the enable/disable gating appears to be correct from
> the logs. The active_links sequence across every modeset cycle in the
> captured trace is always clean:
> 
>   disable: 2 -> 1 -> 0  (intel_mst_disable_dp, intel_encoders_post_disable)
>   enable:  0 -> 1 -> 2  (intel_mst_pre_enable_dp, intel_mst_enable_dp)
> 
> No interleaving, no double-calls. intel_ddi_enable_fec and
> intel_ddi_disable_fec are each called exactly once per link per modeset
> cycle, as expected.
> 
> The mismatch and cascade are instead driven by repeated failures in the
> fastset check. In the cable-unplug log, 8 "fastset requirement not met,
> forcing full modeset" messages fire for both pipes between t=110.803s and
> t=110.899s -- before a single active_links change occurs. After replug,
> there are dozens more at ~20ms intervals (t=125.5s to t=126.3s) as the
> driver re-probes the dock, each one attempting and failing to commit a
> modeset.
> 
> The direction of the first mismatch after dock connect is notable. The
> very first fastset failure shows:
> 
>   [CRTC:186:pipe C] fastset requirement not met in fec_enable
>                     (expected no, found yes)
>   [CRTC:186:pipe C] fastset requirement not met in
> hw.pipe_mode.crtc_hdisplay
>                     (expected 1920, found 3840)
>   [CRTC:186:pipe C] fastset requirement not met in dsc.config.pic_width
>                     (expected 0, found 3840)
> 
> The SW computed state has pipe C at 1920x1080 with no DSC and no FEC, while
> HW has it at 3840x2160 with DSC and FEC active (from the previous
> session/firmware state). The modeset that follows clears FEC. The next
> compute correctly selects DSC (and therefore FEC), triggering the opposite
> mismatch ("expected yes, found no"). This back-and-forth drives the cascade.
> 
> The question of why the first SW compute produces fec_enable=no for pipe C
> when DSC is needed seems to be where the actual root cause lies -- whether
> that's a mode-negotiation timing issue (compositor requesting 1080p before
> 4K+DSC is negotiated) or something in the compute ordering in
> intel_dp_mst_compute_config.
> 
> Full log (drm.debug=0x10e, cable unplug/replug) is attached to issue #16303
> if useful.

I found drm-debug-dmesg-fec-patch.txt on the ticket. This seems to be a
6.12 kernel, with the change in this patch applied. There is a strange
delay at boot-up between 13.894595 and 148.167 when nothing seems to
happen.

I see indeed multiple disconnect/reconnect events for the dock starting
like:

[  159.428600] usb 3-6: USB disconnect, device number 10
[  159.428605] usb 3-6.3: USB disconnect, device number 11
[  159.428607] usb 3-6.3.2: USB disconnect, device number 12
[  159.431529] i915 0000:00:02.0: [drm:gen11_hpd_irq_handler [i915]] hotplug event received, stat 0x00040000, dig 0x00008a88, pins 0x00000800, long 0x00000800
[  159.440423] usb 3-6.3.3: USB disconnect, device number 13
[  159.440430] usb 3-6.3.3.1: USB disconnect, device number 14
[  159.442548] usb 3-6.3.3.2: USB disconnect, device number 15
[  159.452345] usb 2-3: USB disconnect, device number 6
[  159.452352] r8152-cfgselector 2-3.1: USB disconnect, device number 7
[  159.521344] usb 3-6.3.3.4: USB disconnect, device number 16
[  159.544816] usb 2-3.3: USB disconnect, device number 8
[  165.839439] i915 0000:00:02.0: [drm:gen11_hpd_irq_handler [i915]] hotplug event received, stat 0x00040000, dig 0x00008a88, pins 0x00000800, long 0x00000800

repeated about 5 times start at 159.428. At first look this seems like a
non-display related issue leading to the disconnection of the whole dock
with all the USB device on it.

To get a better understanding of the root cause could you please provide
a log with the latest drm-tip kernel without any patch applied as I
requested on the ticket?

Thanks.

> 
> Stephen Fuhry
> 
> On Tue, Jun 2, 2026 at 9:39 AM Imre Deak <imre.deak@intel.com> wrote:
> 
> > On Tue, Jun 02, 2026 at 04:35:42PM +0300, Murthy, Arun R wrote:
> > >
> > > > -----Original Message-----
> > > > From: Deak, Imre <imre.deak@intel.com>
> > > > Sent: Tuesday, June 2, 2026 4:17 PM
> > > > To: Murthy, Arun R <arun.r.murthy@intel.com>
> > > > Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org;
> > Stephen
> > > > Fuhry <fuhrysteve@gmail.com>
> > > > Subject: Re: [PATCH] drm/i915/display: Refcount for fec enable/disable
> > > >
> > > > On Mon, Jun 01, 2026 at 07:59:43PM +0530, Arun R Murthy wrote:
> > > > > The FEC_ENABLE bit is per port basis and is enabled/disabled on ddi
> > > > > pre_enable and post_disable. This fec is shared across the mst
> > streams
> > > > > and can be enabled per stream basis as well.
> > > > > So have a refcount to track the usage of FEC and then enable/disable
> > > > > accordingly.
> > > > >
> > > > > Closes:
> > > > > https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/16073
> > > > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > > > Tested-by: Stephen Fuhry <fuhrysteve@gmail.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_ddi.c      | 66
> > +++++++++++++++++++
> > > > >  drivers/gpu/drm/i915/display/intel_ddi.h      |  1 +
> > > > >  .../drm/i915/display/intel_display_types.h    | 12 ++++
> > > > >  .../drm/i915/display/intel_modeset_setup.c    |  6 ++
> > > > >  4 files changed, 85 insertions(+)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > > index 86520848892e..e12a3d6d6a67 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > > @@ -2096,6 +2096,47 @@ void intel_ddi_disable_clock(struct
> > intel_encoder
> > > > *encoder)
> > > > >           encoder->disable_clock(encoder);
> > > > >  }
> > > > >
> > > > > +/**
> > > > > + * intel_ddi_seed_fec_refcounts - Seed per-port FEC refcounts from
> > > > > +active CRTCs
> > > > > + * @display: display device
> > > > > + *
> > > > > + * intel_digital_port::fec_active_streams is the per-port refcount
> > > > > +that gates
> > > > > + * programming of the shared DP_TP_CTL_FEC_ENABLE bit. After initial
> > > > > +HW state
> > > > > + * readout (driver load, resume, GPU reset takeover), the persistent
> > > > > + * crtc_state->fec_enable values reflect what HW currently has; we
> > > > > +need to
> > > > > + * align the refcount with that so the first paired disable doesn't
> > > > > +underflow
> > > > > + * and the next enable doesn't incorrectly skip programming the HW
> > bit.
> > > > > + *
> > > > > + * Must be called once after intel_modeset_readout_hw_state(),
> > before
> > > > > +any new
> > > > > + * modeset commit can run.
> > > > > + */
> > > > > +void intel_ddi_seed_fec_refcounts(struct intel_display *display) {
> > > > > + struct intel_crtc *crtc;
> > > > > +
> > > > > + for_each_intel_crtc(display->drm, crtc) {
> > > > > +         const struct intel_crtc_state *crtc_state =
> > > > > +                 to_intel_crtc_state(crtc->base.state);
> > > > > +         struct intel_encoder *encoder;
> > > > > +
> > > > > +         if (!crtc_state->hw.active || !crtc_state->fec_enable)
> > > > > +                 continue;
> > > > > +
> > > > > +         for_each_intel_encoder(display->drm, encoder) {
> > > > > +                 struct intel_digital_port *dig_port;
> > > > > +
> > > > > +                 if (encoder->base.crtc != &crtc->base)
> > > > > +                         continue;
> > > > > +                 if (!intel_encoder_is_dig_port(encoder))
> > > > > +                         continue;
> > > > > +
> > > > > +                 dig_port = enc_to_dig_port(encoder);
> > > > > +                 dig_port->fec_active_streams++;
> > > > > +                 break;
> > > > > +         }
> > > > > + }
> > > > > +}
> > > > > +
> > > > >  void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder
> > > > > *encoder)  {
> > > > >   struct intel_display *display = to_intel_display(encoder); @@
> > > > > -2413,12 +2454,22 @@ static void intel_ddi_enable_fec(struct
> > intel_encoder
> > > > *encoder,
> > > > >                            const struct intel_crtc_state
> > *crtc_state)  {
> > > > >   struct intel_display *display = to_intel_display(encoder);
> > > > > + struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> > > > >   int i;
> > > > >   int ret;
> > > > >
> > > > >   if (!crtc_state->fec_enable)
> > > > >           return;
> > > > >
> > > > > + /*
> > > > > +  * FEC is link-wide: DP_TP_CTL_FEC_ENABLE is per-port while
> > > > > +  * crtc_state->fec_enable is per-stream. For DP MST, several
> > streams
> > > > > +  * on this port share the bit. Only program HW on the first stream
> > > > > +  * needing FEC; subsequent streams just bump the refcount.
> > > > > +  */
> > > > > + if (dig_port->fec_active_streams++ > 0)
> > > > > +         return;
> > > >
> > > > This doesn't make sense to me. FEC is enabled for the MST link and if
> > it's
> > > > enabled then fec_enabled is set in the crtc_state for all the streams
> > in the MST
> > > > topology. intel_ddi_enable_fec() will be called only for the first MST
> > stream
> > > > being enabled and intel_ddi_disable_fec() will be called only for the
> > last MST
> > > > stream being disabled. So I don't see why the above refcounting would
> > be
> > > > needed.
> > >
> > > The  logs mentioned in the above listed gitlab issue shows mismatch in
> > > fec enable/disable in the MST scenario. Hence added this refcount
> > > logic to overcome the mismatch.
> >
> > The root cause for the mismatch should be better understood then. I
> > still think that it's something else than the lack of refcounting.
> >
> > > Thanks and Regards,
> > > Arun R Murthy
> > > --------------------
> > > > > +
> > > > >   intel_de_rmw(display, dp_tp_ctl_reg(encoder, crtc_state),
> > > > >                0, DP_TP_CTL_FEC_ENABLE);
> > > > >
> > > > > @@ -2454,10 +2505,25 @@ static void intel_ddi_disable_fec(struct
> > > > intel_encoder *encoder,
> > > > >                             const struct intel_crtc_state
> > *crtc_state)  {
> > > > >   struct intel_display *display = to_intel_display(encoder);
> > > > > + struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> > > > >
> > > > >   if (!crtc_state->fec_enable)
> > > > >           return;
> > > > >
> > > > > + /*
> > > > > +  * FEC is a link-wide property and DP_TP_CTL_FEC_ENABLE is a
> > per-port
> > > > > +  * register, but crtc_state->fec_enable is per-stream. For DP MST,
> > > > > +  * multiple streams on the same port share this bit. Refcount the
> > > > > +  * active FEC users on the port and only clear the HW bit when the
> > > > > +  * last user goes away, otherwise tearing down one MST stream would
> > > > > +  * disable FEC for sibling streams still using it.
> > > > > +  */
> > > > > + if (drm_WARN_ON(display->drm, dig_port->fec_active_streams <= 0))
> > > > > +         return;
> > > > > +
> > > > > + if (--dig_port->fec_active_streams > 0)
> > > > > +         return;
> > > > > +
> > > > >   intel_de_rmw(display, dp_tp_ctl_reg(encoder, crtc_state),
> > > > >                DP_TP_CTL_FEC_ENABLE, 0);
> > > > >   intel_de_posting_read(display, dp_tp_ctl_reg(encoder, crtc_state));
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h
> > > > > b/drivers/gpu/drm/i915/display/intel_ddi.h
> > > > > index 580ecb09b8b6..3678c28a0dc9 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> > > > > @@ -78,6 +78,7 @@ int intel_ddi_toggle_hdcp_bits(struct intel_encoder
> > > > *intel_encoder,
> > > > >                          enum transcoder cpu_transcoder,
> > > > >                          bool enable, u32 hdcp_mask);  void
> > > > > intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder
> > *encoder);
> > > > > +void intel_ddi_seed_fec_refcounts(struct intel_display *display);
> > > > >  int intel_ddi_level(struct intel_encoder *encoder,
> > > > >               const struct intel_crtc_state *crtc_state,
> > > > >               int lane);
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > index f44be5c689ae..84bd0d993197 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > @@ -1987,6 +1987,18 @@ struct intel_digital_port {
> > > > >   struct ref_tracker *ddi_io_wakeref;
> > > > >   struct ref_tracker *aux_wakeref;
> > > > >
> > > > > + /*
> > > > > +  * Number of active streams on this port currently using FEC.
> > > > > +  *
> > > > > +  * DP_TP_CTL_FEC_ENABLE is a per-port (link-wide) HW bit, but
> > > > > +  * crtc_state->fec_enable is per-stream. For DP MST several streams
> > > > > +  * share the same port and therefore the same FEC enable bit. Track
> > > > > +  * how many active streams want FEC so that the HW bit is only
> > > > > +  * programmed on the first enable and only cleared on the last
> > > > > +  * disable. Modified under the modeset locks.
> > > > > +  */
> > > > > + int fec_active_streams;
> > > > > +
> > > > >   struct intel_tc_port *tc;
> > > > >
> > > > >   struct {
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > > > > b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > > > > index e88082c8caac..14f038b8ef81 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > > > > @@ -950,6 +950,12 @@ void intel_modeset_setup_hw_state(struct
> > > > > intel_display *display,
> > > > >
> > > > >   intel_modeset_readout_hw_state(display);
> > > > >
> > > > > + /*
> > > > > +  * Seed per-port FEC refcounts from the just-populated active
> > > > > +  * crtc_states before anything can issue an enable/disable.
> > > > > +  */
> > > > > + intel_ddi_seed_fec_refcounts(display);
> > > > > +
> > > > >   /* HW state is read out, now we need to sanitize this mess. */
> > > > >   get_encoder_power_domains(display);
> > > > >
> > > > > --
> > > > > 2.25.1
> > > > >
> >
