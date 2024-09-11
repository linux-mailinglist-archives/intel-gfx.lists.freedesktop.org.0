Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D62974F31
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 12:04:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 720CA10E043;
	Wed, 11 Sep 2024 10:04:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BnxsOOEE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6C3010E043
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 10:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726049053; x=1757585053;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=hj7Y0ZWEuLiWG+15zjsnYQJ4MJ5gg4aX6IoTlzIYsQE=;
 b=BnxsOOEE6ONa3tbbgZ0iisWcBqdeokQ1kJ+hdb0qzW1w9s/dLEmNPt3m
 FlZV9k+Pl2qeJ2g38hTexpQgGqmEGanyLoPr8Hm77JvVt06UtiuqVI/hj
 M4nXlUww2/FBhPZNUGzQkpIrqwWA575n0jSB8gq43hrOOLA1UGDSHZ/31
 OFzizTKbeDRUfYG1vEhYhQoelJOot9tBuX7DM7fORiwQb/TwoU+l6TKLU
 y4a+rLUAVKLRMpuwxpC45YRkG5N4ELmh4FI6DNUFxUkHy1vFb9T1RxxdC
 50OrqknjLvyvQq50yl+mDx6wZE4UxdnyKr4bF51QDUFb7/n7egqM9+cFw A==;
X-CSE-ConnectionGUID: ed7liLUeSIW8Cq/qk0CeeQ==
X-CSE-MsgGUID: NVu5p47kQHm9t8d7vKGbpg==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="24379350"
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="24379350"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 03:04:13 -0700
X-CSE-ConnectionGUID: IYDv0zjhRGmU9YQPUG+Ssw==
X-CSE-MsgGUID: ynZJM8f2RwayxDZOrgvbAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="90602944"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2024 03:04:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 11 Sep 2024 03:04:12 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 11 Sep 2024 03:04:12 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 11 Sep 2024 03:04:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R6tyPgVR2x8JsteGQ3WwB6gZvarUi0HrR0OcfMLZn8qfRcGsTPwaAD4m9j2Q3jNDhKBXrI3kYZyH618VmFQY9k10cOVuIb3pKUQSW1u+Slp00rgu10O3HSHsbgXDB6A7+vS7Z/7JXA7WcLLzoxvJdHjLOO/TuLpuRASgPO+CyahdShM1rFP5/KH6+vcLSsrUE3/CVj9NjQEF5JbJAJ2LrL0IUITRCfgZmrBUlt4DpgGkldvfxJihiZfgKmF0dGv5QUo/jN3eyE4vLVFo7z2XBvswqRNMnggtfQm64skj2RNsBeFIcZ8g2FEVZpxZkeDEpS0f3LwWHHtCdNGLjiELbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hj7Y0ZWEuLiWG+15zjsnYQJ4MJ5gg4aX6IoTlzIYsQE=;
 b=M7yM9qZq00hAJCrn7Au3Yb77fBrzYwclS7nMkA1IIh14Q4pRN1IgaZ4X2Ioj7cvwdYibaafuPQ+bpao2IVbRTW6jN2rCwW5pMcj7Td7O4tbRePg1P1kynckKHAvXtny8AmJQikhYRdElg7PBbtb23j1zYU6J8Po4R10WBobxNTEWm5w8tovFSL2004x2uMugixhR9sim8RD2LMGwBStoYfKXNUO2Y1uahwOZPTxFjNE1NeX3bd/McwfTRy+xsGFngb2Lbr9DTfBkSVp83KkjWG/jUd9BTu3VJb4l6KkDT3jdII/VUVVZsGLG59+6H9aDq+gIs0byR+JYFt5ZUQjqgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS0PR11MB7405.namprd11.prod.outlook.com (2603:10b6:8:134::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7918.25; Wed, 11 Sep 2024 10:04:09 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%3]) with mapi id 15.20.7918.024; Wed, 11 Sep 2024
 10:04:07 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH v2 4/4] drm/i915/psr: Do not wait for PSR being idle on on
 Panel Replay
Thread-Topic: [PATCH v2 4/4] drm/i915/psr: Do not wait for PSR being idle on
 on Panel Replay
Thread-Index: AQHbACqldTI6E2Sz0Uqdyowz08BrNLJQpIEAgAG/CIA=
Date: Wed, 11 Sep 2024 10:04:07 +0000
Message-ID: <913965243948cd339af3274360b47c199621e58e.camel@intel.com>
References: <20240906070033.289015-1-jouni.hogander@intel.com>
 <20240906070033.289015-5-jouni.hogander@intel.com>
 <PH7PR11MB5981F64004B891921C01FBE1F99A2@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB5981F64004B891921C01FBE1F99A2@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS0PR11MB7405:EE_
x-ms-office365-filtering-correlation-id: e3412381-7808-4780-c13d-08dcd24912f6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VlpHZGlyRzgvWklvY09manhNQ3B2VDJMZ2ZUU3R6S1B1VVJJT3JMcmV0WHVt?=
 =?utf-8?B?QkR2Z1lXd2E4UVlhSVcySjAxNE5BcEVHdFFkMVRvNVhBakNJZmZkc2VKV29a?=
 =?utf-8?B?bERkdHBBeEJIMUFqNFRxbGQybzc2R1pKY0tSVFpvK3ZmeFlEVkpKWUdRRlp4?=
 =?utf-8?B?cW16NERNTGFsWHZRZTYyT3AyZW1WOVMxVGVQUm8vNENReHFkMkNQQzNyNEYr?=
 =?utf-8?B?cSs2UlJiUmlXUjBVVDFlTFptZXlpTVI4ZzBnc1p5U01mSXhhQ3BrZ01MZzJa?=
 =?utf-8?B?c0RXeTl6QjhJMlVPQUtQQ3NJWjdiNnRnRXh5QWljUmV4ZTlhMXk1c0lWWGdm?=
 =?utf-8?B?b0hUdHNZSmczNjhhcHh2RldhUmdzTS9JZ0Yyb1JzUEJqYWQ3bjR4dlJSQWxN?=
 =?utf-8?B?RHFLdmZUR1RtT296RHh4QmtEY3h0ZmxLa0lBMzBkcDdsSTRsMHdXYTl0NnZN?=
 =?utf-8?B?eXR2K29wR3BDcnlwUWxTYTREMkdRdi83YnpYNzRkUFlkYjZzbEE3N0lTV004?=
 =?utf-8?B?ZGtuYlpLeEJ3bHFxa0ZqMHM4eUNFb1dHcXl4eUJUSGc2bFhPYXd4V0h6dkxa?=
 =?utf-8?B?L0ZKVStuKzBWdU9LenZ2UHNPUDllenlVd3BSYVFjUWhKdzJjZDFFc3dwRnV4?=
 =?utf-8?B?RWdwZ0JVbkdIalFOaVZQMTEwME5vc21SS3dBWjJFWEtzU0FqVHMxbnpOS1lX?=
 =?utf-8?B?Y0VNRVFDRW1WeFdZMGkyc2NMaDVTOWQwME5keXpjcE5PRjRrajk5cnF3V3M4?=
 =?utf-8?B?R3hkckpCaStWTXNSY0wxTFR6N2p0VUZKS2VZQUNWdHdWMFhqaUNSUFJnTWgw?=
 =?utf-8?B?eUthemZURVpwN2pkUElhbXhvRkJURDRqRENIdGpLZ2dYS1cybWpCd3pyWkRI?=
 =?utf-8?B?MSs4a2VqbDAzalBPSTJjZjZEZ0x6Q3ZQNE5zczdtWnFNek5nZWFMQjJ6eU15?=
 =?utf-8?B?aE9rOUF5RG1OYlEybjNVM3QwckxBL0paajE5MVNJR3U5QkJhWHo0V0NvWno0?=
 =?utf-8?B?RHJ4RXdGZXNmdFZGaHljeExaa2ZqTzJJYkJLZFNBSHBtL1dLUWFoVlZ4VDVy?=
 =?utf-8?B?NDgrU2ExV205ZVB1enZYbkc1Y1dRT3E4YXBidmp5TFRUdk9LNjJyNS9WS0FV?=
 =?utf-8?B?Nm5rWUNTU1BzMkdnc0pnMjhGREJFV0NKUFJFUWROTnZpVkdWVWgxQmpGNkNF?=
 =?utf-8?B?dFY4cDRaTU5PK1VCTjJSWjlXSVpmdEE0dDJKK0hMMDZpb2N4RVlMOUFUTlc1?=
 =?utf-8?B?QVVOOVRRenBSTjR3M0dTMEFTYnJ0UEtCZmNubHNBYmMxeC9EVERaKzBMYmxk?=
 =?utf-8?B?YjZweTJNYkdXa25uS0xxVkIrZk5JOWo0RURoRGFkcWlmMjI0M2VKTXhXSkp6?=
 =?utf-8?B?OXI0T2Z3bTFuWFh5SUh2c09wa1pZcFFXNjNJZldRS292cnM1SkJXQVdlQWsx?=
 =?utf-8?B?MXFqYVBPN2w4dzZVbE1xVDFxWGxKYVJzVS9JR090STRBVWVETzNaRkZUdmNr?=
 =?utf-8?B?UzhtdEU1NVZqMXpCQWhjNTlyeTk3Z3R0bVMwdWZxZDhDTVRJcDAxVkYvZ1J6?=
 =?utf-8?B?YmhWNDZtbFRsMXdOUFIzdnRuTGtPUEN3NGxDazViMjJYNWxwR3U3bnZ3Mkxz?=
 =?utf-8?B?L3Z1Sko0VVREK3B0aFZrSnJHTjhZcE11OC85VFZWb1NFZUhJVkZ5U01pVlh0?=
 =?utf-8?B?dVJNZGRqVURlbHUvRzVuQ2NFNnVSZzlQNWZnWCt4Z056OFVPSDcrWGZpaEdl?=
 =?utf-8?B?STgxR2xQNC9lNHQvTUtpQmk3THpjQTZiTXBlcmlJc2JjNlR5ckY1bFhBemtV?=
 =?utf-8?B?bjJwbXRXYnpWdWFSWkRSZHZDY0JBbDZsSWpUSnV6WWVhS0luNElWcTBid085?=
 =?utf-8?B?azJCL09nd2U4dytIcWRXb2JCNUpUMnJkNE5QL1RUd0ZKUWc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WmhwendycHNsNXFEVkVMNkdvcVFPM3pLMktVUzRPN3Q3UG1ZdzRSL0FXOVVi?=
 =?utf-8?B?T2pTcW85aUVPS2RxWlo0TVBiRmJPek5tN2x2QXhmM1cxUWNSTGhGSHgzVXQ1?=
 =?utf-8?B?bWlLU0V5cWxkOW5jcEtVSXRRdlVyeVgwU2MxbFh3M29Ta1kzb0NGRXcxRU5T?=
 =?utf-8?B?S2djOEpCMzZPNW1HNUg1NmxhcFhMTjh6dGJERlJ4Qk1SM2lrT0w2QUlPdmkw?=
 =?utf-8?B?RzN3amlSZmg0Yzg3SEtJRVpwb3k3TXV2ZU52SFlCOGphWk1xeExOYmE0YnVq?=
 =?utf-8?B?Vms3TVpHU3F3QXZ1dW9MRTVFd21ZTnp2bjhESDdYbGJBTmE4L2ozZXkyRDFw?=
 =?utf-8?B?d0tzU0xibFBUbW5yc21LcTNuRjVMSnpkazZua2xTdlppaC9tNWRtckdpOThG?=
 =?utf-8?B?UzlRYjBOU1dDNkxtNkRhTGRFYThHczhHY0oxcFBUOFR4cmMwdWRCeUdwK1BQ?=
 =?utf-8?B?UDkyM0xueCt2NWNNWlpvYU91VzFoZklHbGd1ZXRjYU1VRncvL1YyU2dUd3Fw?=
 =?utf-8?B?MHprY0dtd2pBSHZqSmhvTmFEcERIRWQvMC9KUjdwTFR5Y2J6N3Z3d2kzVHRt?=
 =?utf-8?B?bXJJY1Z3RE9UeFF0Tkd6dlljUUtNb25rYUcvTUtiSEwrM1JweGRyMklhdkU4?=
 =?utf-8?B?cHp6aldzVVFyRmtKM3p3SFgyUXhjdndteGcwNE9jelJxbHhBYmZzNndTdTZn?=
 =?utf-8?B?ZDE1cWt2WDYxVDJHMGdrRFhtblA0REg5UXlSMUJ3OVhnSTlraWY1aklZM09y?=
 =?utf-8?B?SDlGRTF5SGJJWU1sczNuVjZXK0JYcDRaYlkwTkg2K0NPNVVsTVN3ZG9wSytM?=
 =?utf-8?B?RW41d0kzY2NScUJkdkNOczZjaFowNWtzeGxKUlhZNG9sU0lERi8wYjBpQkhm?=
 =?utf-8?B?WkpnWDlEVml1OS81VGFVSTdrZFlyRk0zdnp0T1dnVkYveVBRRzRoOFovVkRW?=
 =?utf-8?B?Yyt1MXNRNmpyRVI3ZnBaNnJFVkFSbmp0WTYxN3pFVGJPT0FsZDgzemREdFpN?=
 =?utf-8?B?TDJNZXJsNmh3NzVWUkV4anUweFo2ek9iUFpNWWNxNGk2UzZ4OUdwM0x4aDhX?=
 =?utf-8?B?MDRTbFRTdTRRRjdBUWhtODJPRkZqeFdxRmNoSzh2L1FNT0FLS0F4ajVUWS9i?=
 =?utf-8?B?cGx5cHBja0dudzNZTzdaaHpQUmVCaEQ4aFc3MTJ5M29jQUVWQzlTOU15Znp6?=
 =?utf-8?B?ajBscnpnWjQ4QnVOQ1hzUmc2Q01YVmpVV09YM1gwNmtFU3krZU0wZ0x0b21k?=
 =?utf-8?B?MHkwNWdJa0Fwelg2bzR4Z3QxcXAvL1EzenZDcmkyK1pJUlJhMUs3UjB2cTVD?=
 =?utf-8?B?cWtDeGR0VE9GZU1TdkhOdy8zZi9kVFdyLzN0RVhYYjBSV1lTdnRtdlV2TXhN?=
 =?utf-8?B?WW5qVXloNnZJVXl1NDdWbXNMb244TWRJMFFGNC8xSUVCNm5GU0lIK25laU9q?=
 =?utf-8?B?VlJBcy9JYzhzbENndEpmWjNqSDE4UTFWNEdyc1pBRHNLZ0hRWTRSaVBXTGFo?=
 =?utf-8?B?OVhmczNGUXpoZzc4bVhZYU9hYnBuMzJlVkhQN1RFM1grRS8vdXRGdXFLcjBp?=
 =?utf-8?B?UkUxdExnaTBuanRZSnZzbmpkb0x0RjJLbE9ETjNQclNyVElVblBtRXF4Rmow?=
 =?utf-8?B?REE4U0IzZmZKUEV4U094MWxiM1l0ejBBSEhseGFITVE5c2xGL0drcTRYWlZC?=
 =?utf-8?B?MU1VN0dMcmp6d0JkdXRnKzRSTWxGSm4rTDRRRHhES1VlYnM0MXBoTlFBenV3?=
 =?utf-8?B?djJGelg2M1RlanRQVFZPMjBXRWU4RmJnY0tkK0Z6Vy9Vcmdjb2JMaStUZ1Jr?=
 =?utf-8?B?cE9MVG00Q1JjWHVtR09BZDIwN3R5YVY2K0l5SmRrOURmTnlMbTFYTHYyK2lK?=
 =?utf-8?B?ZllsTFN5UHJtc3ZYQVBBNjdPNzVSem1DUXJKNjU1Vm1OY0lTZlBoZGdZSHFz?=
 =?utf-8?B?VXhhZWJhQzBkbmJ5eTRacXJOa2pWVDdXcWk4MEs2aThJcnlIWHZKczNJcFkr?=
 =?utf-8?B?S0kxbk5BMG9zaTFvRU84YjhXaUk1WUxmVlhFNC9OZy9UQmFJL2NKVlFac2oz?=
 =?utf-8?B?N2ZJblFSUEZSeUp5RVR2RXpqQ01KUmdtVjdLaWdLaUxwdXliSUxLM21XYkJi?=
 =?utf-8?B?QU55MkZoTE05eVFlRUllS1Vpb0trMldvbWtZajdNdXUydy9RZUpNR0x3UWpQ?=
 =?utf-8?B?bmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <183141F9C210C6449DCA28BEF0EFB2A1@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3412381-7808-4780-c13d-08dcd24912f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2024 10:04:07.2254 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3yob3C/keMvQQaoOspcUS2vEX3R8QUZqxwUhrHK0DgyPJkjO2Q3cjpuK8wjINclkyC4iqoBr6FevRXG+MTz9mEGwT5zravWvOZ7AxF0jco8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7405
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

SGVsbG8sDQoNClRoZXNlIGFyZSBub3cgcHVzaGVkIHRvIGRybS1pbnRlbC1uZXh0LiBUaGFuayB5
b3UgSW1yZSBhbmQgQW5pbWVzaCBmb3INCnlvdXIgcmV2aWV3cy4NCg0KQlIsDQoNCkpvdW5pIEjD
tmdhbmRlcg0KDQpPbiBUdWUsIDIwMjQtMDktMTAgYXQgMDc6MjQgKzAwMDAsIE1hbm5hLCBBbmlt
ZXNoIHdyb3RlOg0KPiANCj4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBG
cm9tOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiBTZW50
OiBGcmlkYXksIFNlcHRlbWJlciA2LCAyMDI0IDEyOjMxIFBNDQo+ID4gVG86IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBDYzogRGVhaywgSW1yZSA8aW1yZS5kZWFrQGludGVs
LmNvbT47IE1hbm5hLCBBbmltZXNoDQo+ID4gPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsgSG9n
YW5kZXIsIEpvdW5pDQo+ID4gPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiBTdWJqZWN0
OiBbUEFUQ0ggdjIgNC80XSBkcm0vaTkxNS9wc3I6IERvIG5vdCB3YWl0IGZvciBQU1IgYmVpbmcN
Cj4gPiBpZGxlIG9uIG9uDQo+ID4gUGFuZWwgUmVwbGF5DQo+ID4gDQo+ID4gV2UgZG8gbm90IGhh
dmUgQUxQTSBvbiBEUCBQYW5lbCBSZXBsYXkuIER1ZSB0byB0aGlzIFNSRF9TVEFUVVNbU1JEDQo+
ID4gU3RhdGVdIGRvZXNuJ3QgY2hhbmdlIGZyb20gU1JERU5UX09OIGFmdGVyIFBhbmVsIFJlcGxh
eSBpcyBlbmFibGVkDQo+ID4gdW50aWwgaXQNCj4gPiBnZXRzIGRpc2FibGVkLg0KPiA+IA0KPiA+
IE9uIGVEUCBQYW5lbCBSZXBsYXkgREVFUF9TTEVFUCBpcyBub3QgcmVhY2hlZC4NCj4gPiBfcHNy
Ml9yZWFkeV9mb3JfcGlwZV91cGRhdGVfbG9ja2VkIGlzIHdhaXRpbmcgREVFUF9TTEVFUCBiaXQN
Cj4gPiBnZXR0aW5nDQo+ID4gcmVzZXQuDQo+ID4gDQo+ID4gVGFrZSB0aGVzZSBpbnRvIGFjY291
bnQgaW4gUGFuZWwgUmVwbGF5IGNvZGUgYnkgbm90IHdhaXRpbmcgUFNSDQo+ID4gZ2V0dGluZyBp
ZGxlDQo+ID4gYWZ0ZXIgZW5hYmxpbmcgVkJJLg0KPiA+IA0KPiA+IEZpeGVzOiAyOWZiNTk1ZDQ4
NzUgKCJkcm0vaTkxNS9wc3I6IFBhbmVsIHJlcGxheSB1c2VzIFNSRF9TVEFUVVMgdG8NCj4gPiB0
cmFjaw0KPiA+IGl0J3Mgc3RhdHVzIikNCj4gPiBDYzogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5t
YW5uYUBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3Vu
aS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IA0KPiBMR1RNLg0KPiBSZXZpZXdlZC1ieTogQW5pbWVz
aCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+IA0KPiA+IC0tLQ0KPiA+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDEzICsrLS0tLS0tLS0tLS0N
Cj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQ0K
PiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
ID4gaW5kZXggNTgxYzQwOWNlNzMwOS4uMWE0ZWYyMzFhNTNjYSAxMDA2NDQNCj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IEBAIC0yNzg2LDEzICsyNzg2
LDYgQEAgc3RhdGljIGludA0KPiA+IF9wc3IxX3JlYWR5X2Zvcl9waXBlX3VwZGF0ZV9sb2NrZWQo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEVEUF9Q
U1JfU1RBVFVTX1NUQVRFX01BU0ssDQo+ID4gNTApO8KgIH0NCj4gPiANCj4gPiAtc3RhdGljIGlu
dCBfcGFuZWxfcmVwbGF5X3JlYWR5X2Zvcl9waXBlX3VwZGF0ZV9sb2NrZWQoc3RydWN0DQo+ID4g
aW50ZWxfZHANCj4gPiAqaW50ZWxfZHApIC17DQo+ID4gLcKgwqDCoMKgwqDCoMKgcmV0dXJuIGlu
dGVsX2RwX2lzX2VkcChpbnRlbF9kcCkgPw0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBfcHNyMl9yZWFkeV9mb3JfcGlwZV91cGRhdGVfbG9ja2VkKGludGVsX2RwKSA6DQo+ID4g
LcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoF9wc3IxX3JlYWR5X2Zvcl9waXBlX3VwZGF0
ZV9sb2NrZWQoaW50ZWxfZHApOw0KPiA+IC19DQo+ID4gLQ0KPiA+IMKgLyoqDQo+ID4gwqAgKiBp
bnRlbF9wc3Jfd2FpdF9mb3JfaWRsZV9sb2NrZWQgLSB3YWl0IGZvciBQU1IgYmUgcmVhZHkgZm9y
IGENCj4gPiBwaXBlIHVwZGF0ZQ0KPiA+IMKgICogQG5ld19jcnRjX3N0YXRlOiBuZXcgQ1JUQyBz
dGF0ZQ0KPiA+IEBAIC0yODE1LDEyICsyODA4LDEwIEBAIHZvaWQgaW50ZWxfcHNyX3dhaXRfZm9y
X2lkbGVfbG9ja2VkKGNvbnN0DQo+ID4gc3RydWN0DQo+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqbmV3
X2NydGNfc3RhdA0KPiA+IA0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbG9j
a2RlcF9hc3NlcnRfaGVsZCgmaW50ZWxfZHAtPnBzci5sb2NrKTsNCj4gPiANCj4gPiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKCFpbnRlbF9kcC0+cHNyLmVuYWJsZWQpDQo+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmICghaW50ZWxfZHAtPnBzci5lbmFibGVk
IHx8IGludGVsX2RwLQ0KPiA+ID4gcHNyLnBhbmVsX3JlcGxheV9lbmFibGVkKQ0KPiA+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNvbnRpbnVlOw0KPiA+
IA0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoaW50ZWxfZHAtPnBzci5w
YW5lbF9yZXBsYXlfZW5hYmxlZCkNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHJldCA9DQo+ID4gX3BhbmVsX3JlcGxheV9yZWFkeV9mb3JfcGlwZV91
cGRhdGVfbG9ja2VkKGludGVsX2RwKTsNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgZWxzZSBpZiAoaW50ZWxfZHAtPnBzci5zZWxfdXBkYXRlX2VuYWJsZWQpDQo+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChpbnRlbF9kcC0+cHNyLnNlbF91cGRhdGVfZW5h
YmxlZCkNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqByZXQgPQ0KPiA+IF9wc3IyX3JlYWR5X2Zvcl9waXBlX3VwZGF0ZV9sb2NrZWQoaW50ZWxfZHAp
Ow0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZWxzZQ0KPiA+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldCA9DQo+ID4gX3BzcjFf
cmVhZHlfZm9yX3BpcGVfdXBkYXRlX2xvY2tlZChpbnRlbF9kcCk7DQo+ID4gLS0NCj4gPiAyLjM0
LjENCj4gDQoNCg==
