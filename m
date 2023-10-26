Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A277D7C87
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 07:52:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B638310E75E;
	Thu, 26 Oct 2023 05:52:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8F2810E75E
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 05:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698299572; x=1729835572;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=vfW1o+5YDQxpNWHJ52JMyxsiZkJmg2egtzHWLTkSoIQ=;
 b=a4KxmSN/5OYLJZphDB16IMa2OVi75Z/l1zW8kC3rlofji0bcOGRUrVOU
 PnNBNJVtAmjiLJv6pJSxCYuoYWRx8XIUTs2Dum765UTfqkoUxlnfaOheK
 cCDTcRf6XJgT/ZRl3VuWi4g2ySBzwJ2fi0Jf0FglqkHv6UnKryKcII9Aj
 OdJE4ltV0I4y5AwMAwuCrt8AbLsu2AIVoFAi900blTgf8ETEUOosWmE14
 IF/J9D6c26jcAYKZROS4cWFuvl+I+9wMAmkU6kYE107Ip05B7zMrpYYXY
 Ig3c0sH6IRyU3Hp5vv7Y8RwiQ0S7hqZ2yT/YvTcTBVguSoSHz+EtV/MTL Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="9021463"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; 
   d="scan'208";a="9021463"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 22:52:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="708946855"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="708946855"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2023 22:52:47 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 25 Oct 2023 22:52:47 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 25 Oct 2023 22:52:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 25 Oct 2023 22:52:46 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 25 Oct 2023 22:52:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jscDxVFTfwj18cfrG59y9b7uR5bvvGvVzk+WykkjmgVFVgVfH6OeOUZ2SG47ovKdCS4ZOYccO742mFtALWyfONZu4J3z1Sgmbdl602GofSbZ0O4/BjHlgGv/ESux7jjDP60rRH4A1LVnD4LvHj281gJ5i4mU5psqHXV3n6eyqb03rMfF3GDPHa4YFl+kMxnuYvqYoX+GiAhE5ZtY7QnI8kfoPRXHXGD8Ty4LSbtmRj8pgqZfCwlIpYxAxI8K0zeOah2GPWU2lWG5n4KO4+b5xqvADFWYI+VPFYeJQaEZ2wHb31UgMj5A6k4HPVzViJzMCeYafERTicyC062wM/CqZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vfW1o+5YDQxpNWHJ52JMyxsiZkJmg2egtzHWLTkSoIQ=;
 b=HuO0M4Jeq/mmA7GMSi3IxjezWNmaCbf/v8Ru5Ii0H/BIIrdyhxj/NvIhdErFPfsRbtaunonGmddrnACUoElhMgJEnAfMei3QnAIRz3lNLdLqrgQgJ4B76JBiszTZdL8O8+IOCpx+jPmjORA7T1HnPVy/dyUbLpxEnxdLTJ6v1TU3b1RCh0eYVWmzXJ3n82t7uD9WG6sOEa6mK/0yUXZg9hzFmRL5g28oiJj9iP02vSUgA+6k7gTz7g0Xy6FHNioHxIov40eXhVV7qsWimYGdu+DUlVg0ywpJWS38gFk7dY5yagJZsip4atxQplbeNDYVA7izCiYhTfM+oa6GXok2NA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 SA2PR11MB5209.namprd11.prod.outlook.com (2603:10b6:806:110::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.19; Thu, 26 Oct
 2023 05:52:44 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::a98b:5c7d:8396:267b]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::a98b:5c7d:8396:267b%4]) with mapi id 15.20.6907.030; Thu, 26 Oct 2023
 05:52:44 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: Christian Brauner <brauner@kernel.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0gIOKclyBGaS5DSS5CVUlMRDogZmFpbHVyZSBmb3IgZmls?=
 =?utf-8?B?ZSwgaTkxNTogZml4IGZpbGUgcmVmZXJlbmNlIGZvciBtbWFwX3NpbmdsZXRv?=
 =?utf-8?Q?n()y?=
Thread-Index: AQHaB4NfwYOl4E6mJUuOWjePaML0ALBbkhRw
Date: Thu, 26 Oct 2023 05:52:44 +0000
Message-ID: <DM8PR11MB5655CD92ADDA64815FD66EFDE0DDA@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20231025-formfrage-watscheln-84526cd3bd7d@brauner>
 <169826498379.20487.7678246160343879388@emeril.freedesktop.org>
 <20231025-ersichtlich-getan-a7b1a0ed7d08@brauner>
In-Reply-To: <20231025-ersichtlich-getan-a7b1a0ed7d08@brauner>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|SA2PR11MB5209:EE_
x-ms-office365-filtering-correlation-id: d1a1157e-dd42-4c57-31b0-08dbd5e7c649
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X/JAxxot1BZxmZflAs/qzkUvMJQerif6ix82NePslVXmkpOA+40MAcFt5kpxTZmnoYv4tk/nE63q4LpBKafUPehcn7UbxcwJkoMrMxPyNbT39ec2xPgRlc6aO5UVPKnlyI81jTOCGSt9WciiB2rjiurd4bTko86kGQinwT8pCVx45UD/AqFL15PXmymRkqxOJd/Gcw7uti/WfaTmRxgBmyoxrMiMCUDazZZuscY5lPcMEI7TOisvbdgD4GIc8PEGepLazlQYFAEu7jZCWt+/XCF3XVNfP7N+VprAM8t66zrs/RsjMaA/EQS/BcTkR13cHa+TL3Bbl3b8kB+WuQamAzjjm7MvaYlhqzD37Wz8yjxQph7rVYud82cLljfH2BnbuCbVFCWKyK2JoJ4sHtUMM2QyPQ4SZ+WgHEB4qBE2Phhi976ntQBxRL4id5u7JHskQonXsk3rFuLIVuYboS+UIRoVQqGMApbQsgwUkElJQ2zyqib1PER3DirBbJX4HUa9IBztXaAkyeHuh6hRc8cIS8SofXLsDvPPZ/JmoBYLIu+Jlx/bXl2CvI9jOisIbgBppR9Jz4LAaavfYNXAEQ2wxCJDX6IyCy65w3yW6xTfjfyhXL4BNxNVtSXcH5xVQxlvPZOjjddQpYdcOTm9tzcGFg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(376002)(39860400002)(396003)(366004)(230922051799003)(1800799009)(64100799003)(451199024)(186009)(26005)(316002)(38100700002)(64756008)(122000001)(9686003)(66446008)(76116006)(66946007)(66476007)(66556008)(110136005)(8936002)(83380400001)(966005)(478600001)(7696005)(6506007)(53546011)(71200400001)(52536014)(55016003)(41300700001)(2906002)(38070700009)(82960400001)(5660300002)(86362001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K0pGUnJPcEpYZUdtOEVqKzBkUjRhZDhPTElCcTFUTnJtOE85TVZ3SW1jRzcz?=
 =?utf-8?B?cndXVHdGVzM5Z29qWlRLRTdneFlsMCtEc1hidEk3cmpIMUxvK2J0WUI1c2VJ?=
 =?utf-8?B?WUo1K0ZYKzhxbmhobCs5b1JoVERzdFF6RWUxYnIxTkFaU2RrVXRrQ2REZFpO?=
 =?utf-8?B?NEs5eWtQTENjUGt3UjBwYlNzM2hOMUFkS2N2bFJBTjlCNUd4Vjk5aThPSWV1?=
 =?utf-8?B?TjhqWVVBUVJLMzFTYXlLOGhqTHByZXFUNjR0eHkvbElQQldsUjNORWhZZFhB?=
 =?utf-8?B?NHpSNlUrWVo5RTNoZlIraE52Y2pDMFhPVE4xeWpadUVyYiswN3hjSHQ0SmdT?=
 =?utf-8?B?MENMZnB0OVlrSWhzNFluYUFzVEhSQ2xZM3UzSEczUnFya1pRRGdVZGUwOXZn?=
 =?utf-8?B?ZUpSUFArMmVSd1hCV3JxcjlIaEwyRDBqMUVHbnRqc0JKNG5ycVZZTzk0dlNp?=
 =?utf-8?B?bFBoYW15Z2h4anpRd2t4K2RnWk9WbHRiTDl6QTUvT0dYTHZ5M1l1WkMrWjF3?=
 =?utf-8?B?ZGZLUTZSVFh6RnhBdE1yTFdpcDBHS1FIcXpRYUV2WTZ1Zmg3cmhqUjhCMk0x?=
 =?utf-8?B?Yk14Z0I5eXlOc2sxY1ZSWTBqZFBrc3MzZXBGUnh4VUMyNVlsek5ZTjVYc29h?=
 =?utf-8?B?bTBid2hQWE85cjMyRVE4YUtCZWJ0UDg0aGdRUmNGMTkwdGdWTjh4U0k3KzFZ?=
 =?utf-8?B?R0F6emJjNnlQNkFZM2RJU09PbmFBQTJSeC9ETjRoQ3hIbm1aeld2WWUzM0o2?=
 =?utf-8?B?NmEvZmpRaitmUzVaWTJFaVF3WVRrczQ0bzJKSEtHZ0w5bXFFcGlrUzlGdVZW?=
 =?utf-8?B?T0xIdmNIU2dMaHVpdm1kWTMxL0NUc3VRa1VmeG1ORnZXdzVoS2NJOXVNZFFp?=
 =?utf-8?B?MkMwRFY3VDlnbld6RDRGOGlJQjQxTzFCT21uZlhYSzRhbFRta2U4NllmZzd4?=
 =?utf-8?B?ellKdEZxbWYvTitxcWJVZjBRK1BpbnhJdlo1S2k1NWVtR0xWbUVWbnhKTzlP?=
 =?utf-8?B?bGRRYVQ0Tjd4aHllRE9JRTZyT2huemFGbFVpMDEwcStxUGFTVmpqTnM3S29i?=
 =?utf-8?B?UEFobWQ4eGhYU3hHOGRkT05qcE02VnkweVdMM3ptcHVJV2lZU3luWXd1WGRE?=
 =?utf-8?B?NndXV0pFVDlRQ3BuUDAzdVpVMGt5cjh3dkFNMS9UOXFMYlg1Q1NXcVVpYzVT?=
 =?utf-8?B?cnRWd2hFaHhlK2lxTVlwWFYwV0tTb09JaUJ5VEhMN1VWS3BqRnJLSnE5Z1NC?=
 =?utf-8?B?UnJwNkdpZUE4dzhNZkV2cTRaMmpUWmZ5a2k5aElmeERNdUFOVm1oRHJPUHEy?=
 =?utf-8?B?ZXlESjJ3OFpqQk0vWVQ3Y2JRd1U0d1lWM3pPdEkyb25EQkg3V2pGaExicUhQ?=
 =?utf-8?B?V2p6VTdpcUJ1dVRydHpYM09qczZQL3NIS0RDdUsvL3Q3RnZYbHVTNlJkQk1U?=
 =?utf-8?B?RmJtamNzS2JCRUlHZFlQZEVlUEM5RkFCK0UxMmpnY3hkZlpBV2F2NEpyNXBu?=
 =?utf-8?B?VDBGVzAzcjFqUUloY3ZtaXo4NzRCQmlrSmVva21FNXZDejhUaEJYczloZmhr?=
 =?utf-8?B?dDEvektJU0kvZy8xaW1SbmwwY0Z1QVltMStBRWtzck5pQ3VyQmN1bTU0MU9a?=
 =?utf-8?B?emVLSHJnbkxxQWU0ZzJtRWpiNytKSGlhc1d2V0IxWU5MSHIxL0xGa0dnNGo5?=
 =?utf-8?B?cnI0RUswOTFJelVjS1JtK0htc2pFdnZOdTBldVY4cmlHdnZiVkNvcDRTeGQ2?=
 =?utf-8?B?djlDNzg5YjNQcHdPcFAycGpjbCtDRUpYaldta1ExeDRmM0R2QjMrNkN5UlEw?=
 =?utf-8?B?akJ1QmF1NDBsNjFWSGtwQlk5aVRvenFDMTNGbUlEemU2bGlPU1VWV1YxNjZ5?=
 =?utf-8?B?WklkQjV4bi9XUVlEZnhMN2d0MDZqMFRrWDlSY2FZK045RDQ1aFcwajUrQUVU?=
 =?utf-8?B?dDg4ZDNQRVBSbzJrWUYyelZjK05ya1d4dnN2YXhMNGtHNHRmbWJDdVF1bFlo?=
 =?utf-8?B?ZTNTZVVmV3ozaGFzZi81MFQ1YjdvZ05XQXBSU2cwWmF0VW9sdEV6WVkrcEdP?=
 =?utf-8?B?SEFrNUs2R05JTjlXaTZFcFB6ZndRczIyMWU2cDFILzZWMUc5SFFGQm9oN3Nj?=
 =?utf-8?Q?k7ia3BQaSgYu9LyagkKDX3hGY?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1a1157e-dd42-4c57-31b0-08dbd5e7c649
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Oct 2023 05:52:44.3334 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6SsUnmm1KClqmmw3FfWtsk89cmILxB6lLuQbugU6emuFJS5hlN/rMxUMyrpf10OmyBi1UiBgZjLn3v4uj75eOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5209
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBm?=
 =?utf-8?q?ile=2C_i915=3A_fix_file_reference_for_mmap=5Fsingleton=28=29y?=
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

SGksIA0KQ0kgaXMgYWx3YXlzIHRlc3RpbmcgYWdhaW5zdCBodHRwczovL2NnaXQuZnJlZWRlc2t0
b3Aub3JnL2RybS10aXAgDQoNCkJyDQpKYW5pDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3Rv
cC5vcmc+IE9uIEJlaGFsZiBPZiBDaHJpc3RpYW4NCj4gQnJhdW5lcg0KPiBTZW50OiBXZWRuZXNk
YXksIE9jdG9iZXIgMjUsIDIwMjMgMTE6MzkgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIOKclyBGaS5DSS5CVUlMRDog
ZmFpbHVyZSBmb3IgZmlsZSwgaTkxNTogZml4IGZpbGUgcmVmZXJlbmNlIGZvcg0KPiBtbWFwX3Np
bmdsZXRvbigpeQ0KPiANCj4gT24gV2VkLCBPY3QgMjUsIDIwMjMgYXQgMDg6MTY6MjNQTSAtMDAw
MCwgUGF0Y2h3b3JrIHdyb3RlOg0KPiA+ID09IFNlcmllcyBEZXRhaWxzID09DQo+ID4NCj4gPiBT
ZXJpZXM6IGZpbGUsIGk5MTU6IGZpeCBmaWxlIHJlZmVyZW5jZSBmb3IgbW1hcF9zaW5nbGV0b24o
KQ0KPiA+IFVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8x
MjU1NzAvDQo+ID4gU3RhdGUgOiBmYWlsdXJlDQo+ID4NCj4gPiA9PSBTdW1tYXJ5ID09DQo+ID4N
Cj4gPiBFcnJvcjogcGF0Y2gNCj4gPiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcv
YXBpLzEuMC9zZXJpZXMvMTI1NTcwL3JldmlzaW9ucy8xL21iDQo+ID4gb3gvIG5vdCBhcHBsaWVk
DQo+ID4gQXBwbHlpbmc6IGZpbGUsIGk5MTU6IGZpeCBmaWxlIHJlZmVyZW5jZSBmb3IgbW1hcF9z
aW5nbGV0b24oKSBVc2luZw0KPiA+IGluZGV4IGluZm8gdG8gcmVjb25zdHJ1Y3QgYSBiYXNlIHRy
ZWUuLi4NCj4gPiBNCWRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMNCj4g
PiBNCWZzL2ZpbGUuYw0KPiA+IE0JaW5jbHVkZS9saW51eC9mcy5oDQo+ID4gRmFsbGluZyBiYWNr
IHRvIHBhdGNoaW5nIGJhc2UgYW5kIDMtd2F5IG1lcmdlLi4uDQo+ID4gQXV0by1tZXJnaW5nIGlu
Y2x1ZGUvbGludXgvZnMuaA0KPiA+IENPTkZMSUNUIChjb250ZW50KTogTWVyZ2UgY29uZmxpY3Qg
aW4gaW5jbHVkZS9saW51eC9mcy5oIEF1dG8tbWVyZ2luZw0KPiA+IGZzL2ZpbGUuYyBDT05GTElD
VCAoY29udGVudCk6IE1lcmdlIGNvbmZsaWN0IGluIGZzL2ZpbGUuYyBBdXRvLW1lcmdpbmcNCj4g
PiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jDQo+ID4gQ09ORkxJQ1Qg
KGNvbnRlbnQpOiBNZXJnZSBjb25mbGljdCBpbg0KPiA+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9tbWFuLmMNCj4gPiBlcnJvcjogRmFpbGVkIHRvIG1lcmdlIGluIHRoZSBjaGFu
Z2VzLg0KPiA+IGhpbnQ6IFVzZSAnZ2l0IGFtIC0tc2hvdy1jdXJyZW50LXBhdGNoPWRpZmYnIHRv
IHNlZSB0aGUgZmFpbGVkIHBhdGNoDQo+ID4gUGF0Y2ggZmFpbGVkIGF0IDAwMDEgZmlsZSwgaTkx
NTogZml4IGZpbGUgcmVmZXJlbmNlIGZvcg0KPiA+IG1tYXBfc2luZ2xldG9uKCkgV2hlbiB5b3Ug
aGF2ZSByZXNvbHZlZCB0aGlzIHByb2JsZW0sIHJ1biAiZ2l0IGFtIC0tDQo+IGNvbnRpbnVlIi4N
Cj4gPiBJZiB5b3UgcHJlZmVyIHRvIHNraXAgdGhpcyBwYXRjaCwgcnVuICJnaXQgYW0gLS1za2lw
IiBpbnN0ZWFkLg0KPiA+IFRvIHJlc3RvcmUgdGhlIG9yaWdpbmFsIGJyYW5jaCBhbmQgc3RvcCBw
YXRjaGluZywgcnVuICJnaXQgYW0gLS1hYm9ydCIuDQo+ID4gQnVpbGQgZmFpbGVkLCBubyBlcnJv
ciBsb2cgcHJvZHVjZWQNCj4gDQo+IEknbSBub3Qgc3VyZSB3aGF0IHRyZWUgeW91J3JlIHRlc3Rp
bmcgb24gYnV0IHBsZWFzZSB0ZXN0IG9uIHdoYXRldmVyIGlzIGluDQo+IHZmcy5taXNjLCBJIGd1
ZXNzIHdoaWNoIGhhcyB0aGF0IHBhdGNoLg0KPiBnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2Nt
L2xpbnV4L2tlcm5lbC9naXQvdmZzL3Zmcy5naXQNCg==
