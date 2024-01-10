Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A821E8297BE
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 11:40:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0785310E5B6;
	Wed, 10 Jan 2024 10:40:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F05710E5B6;
 Wed, 10 Jan 2024 10:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704883242; x=1736419242;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mCBAqiNUUbq7sSEEbB2VM9k8ihtwwiznfxRx3es34PQ=;
 b=CQDUmrgoVzUVbyL4py8tpAQBde0up3JIFrkIYA83ZzkZe6KojJX8J5Fp
 pdaNbBd7koSLZasOF9Y14wq93iJNjPm2TonOf6ruH2Lrj1KzEXxLCF7JE
 trpJCb0C9ZcKVYY0f46ebyM04y+GoB/tr6VaqBWQPXuWl5NQ70TIS1SYh
 CirWWQlKVBCwEMBHbd3ahsdGaXcX0bnTGOIq8RjAh85bJmxziHH/xcnip
 /PePbWO5qTHk4wJnRZTZ/GO+3U79xDqg0Jf8dXljbK6XhKmadzJpWIuGB
 CoXzVPSouzvyNMSaeZknK66uZwvNf7AuAjM2KXycTHpO+wIP+mhVk+siZ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="398169484"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="398169484"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 02:40:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="925596943"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="925596943"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jan 2024 02:40:41 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Jan 2024 02:40:41 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Jan 2024 02:40:41 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 10 Jan 2024 02:40:41 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 10 Jan 2024 02:40:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mfbU7sRDYVSt2k68iySwF6NdSejdyQtljNqt4nWVeIAEgCU2QAHLF2Cd/gYjKhlGgvh+Z+Rp5JhfFKaAk463aiPo6y3QhIQdLgzKrEeBrpDpSgSC7crw+VqvkMWBJwA+eSrtnjhZRd5eE4tOimpeVxea5mSZzDTy259DU15dAInm6IgWptdJFJdkK8YfjrU5DdJpRX3nV266Tnt4diJcnAnjM3vlLiTiwA7qVYDEYTID56B3oeMH5iou+pSgCjBqbQtx0IDakq5E8Umnrfi5Non8uVkb9k2NcmvEHoxlQd16UZFSdR37GmnBrB2geAX34Xu0ObYpV9QoHdc7Hboxcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mCBAqiNUUbq7sSEEbB2VM9k8ihtwwiznfxRx3es34PQ=;
 b=HxShytvwltmpdNA6ZVrwaflBtqHr96na7vdguMH+b9bfb677P4xZgB6OHbQv4gJBYjoUSB+yEBufeIiz4ZnEEOY43jXhY/mQ7766Hhw90AU3KZ5v5ZAgOd1jNwxku2P7CG/PT892En84sv1mn0x3gRDuVXG+DOSpMU7Lnr2fkcpAtW4KokPzlQCdHH/W2SzRTGOAEmeSMYVxC3xKWNab0HcokuP3RaomOhFBL0nrjTUuEabq+PvB1+9BqONHSwpMcjdtXFsbzz3n7yVsUWtI36Slk7N1dO2wQi4H4NU6/mXgLLIq4WJiRuLFBGqjbQ5lAc4YI+0gxSWEZq1Wy4BeHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB6753.namprd11.prod.outlook.com (2603:10b6:510:1c8::22)
 by DM3PR11MB8759.namprd11.prod.outlook.com (2603:10b6:8:1ac::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.17; Wed, 10 Jan
 2024 10:40:38 +0000
Received: from PH8PR11MB6753.namprd11.prod.outlook.com
 ([fe80::4b4:61d6:9dff:eca]) by PH8PR11MB6753.namprd11.prod.outlook.com
 ([fe80::4b4:61d6:9dff:eca%7]) with mapi id 15.20.7159.020; Wed, 10 Jan 2024
 10:40:37 +0000
From: "Illipilli, TejasreeX" <tejasreex.illipilli@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "I915-ci-infra@lists.freedesktop.org" <I915-ci-infra@lists.freedesktop.org>,
 Patchwork <patchwork@emeril.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBGaS5DSS5JR1Q6IGZhaWx1cmUgZm9yIFVwZGF0ZSBieHRfc2Fu?=
 =?utf-8?B?aXRpemVfY2RjbGsoKSBmb3IgWGUyX0xQRCAocmV2Myk=?=
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgVXBkYXRlIGJ4dF9zYW5pdGl6?=
 =?utf-8?B?ZV9jZGNsaygpIGZvciBYZTJfTFBEIChyZXYzKQ==?=
Thread-Index: AQHaQDVyC8L+uJ0h00equXb10pcha7DP7swAgABAxgCAAAKxAIACsArg
Date: Wed, 10 Jan 2024 10:40:37 +0000
Message-ID: <PH8PR11MB67538269896726BE45002808F2692@PH8PR11MB6753.namprd11.prod.outlook.com>
References: <20240105140538.183553-1-gustavo.sousa@intel.com>
 <170450007739.57734.9730932781578833450@5338d5abeb45>
 <170472095605.1993.691108924719228706@gjsousa-mobl2>
 <170473486617.2509.12334250289552057392@gjsousa-mobl2>
 <170473544419.2509.9279237983752134912@gjsousa-mobl2>
In-Reply-To: <170473544419.2509.9279237983752134912@gjsousa-mobl2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB6753:EE_|DM3PR11MB8759:EE_
x-ms-office365-filtering-correlation-id: 1b236b0d-6e99-44f7-cf56-08dc11c89575
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qi6DJBqtB/PqlD4MxmFNa0jlRNxs0c8pT1Aoy9Cx3/8GFFpiQgqI+hVdmdpdaZ4L7b9nIIPIn8hfgfWFzDgcfKOXysYXYxju0T9K6F5qbTYuqcvjp1SGAsPDTVVZ5QuU+QOqKgCjOwbpww4QSzrOCmQcgscFddQyY7xsuZz1F3qojr2EGiY1NJmfgvt4RjxNsPyEsPfBiaJM6I2nVKiMEVNRW1yD7l3t0lT/6qB5IamdWa90ZIkiDBjZGxZTxy01TjR5LxGaAMtMDeHtVjSosjjW0YnQ3ovmPWo8Xi6nH9G0ssAjl3+QuS0eYusWvADlUo7+nwjuf+VywIt5lNg0fPRlGdGHperEmUbvkaAgl8JwRD/kfN3osXUYIAggERTohQuXdgv5KqsesY6vl+c01Q0GcEm10aEHQzD86N2R3FhFgmxxrCw1C66OyMdPuN7+frUof6EiYkCAcSlU5HdZT4aGZxMrQwB5vmfIvv44UBC62XzCsqoUBhP3flK7psdy5sH2Xz/fE08OAtbfeRlYRgvFl4g6NLS5C97sEZz7+z5dWqZDR2cvPn8mLibB72PtlDrl6HxGwwQZzYaXh7sq1sT+Re8SS4n+3b5SKifhDGM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6753.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(366004)(346002)(396003)(376002)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(83380400001)(9686003)(26005)(122000001)(38100700002)(4326008)(53546011)(52536014)(5660300002)(2906002)(966005)(6506007)(7696005)(478600001)(15650500001)(71200400001)(8936002)(64756008)(66446008)(66476007)(66556008)(110136005)(316002)(66946007)(76116006)(41300700001)(38070700009)(82960400001)(33656002)(86362001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eVk4REo3elg2YXJTSmJpM0JqT0c1WTRldERiQWNsRFdaajVnSkw4WklFbEpS?=
 =?utf-8?B?WVh3cTFzS2FWR2xzM3lNZm4xdWt1MU5NVENLZkhpT3FVelcvbnJhZmxBeFBz?=
 =?utf-8?B?WU53c242RllzV0Q4bEc5WXB0UmozOFVSd0tJUEpFMGlQS2ZNNmR0c2tIa1U1?=
 =?utf-8?B?ZDhteDUwQjF5dzZiVSsvRHdOWmMzbVN1b0UrdXAvcGdnZUtpOXhsVXljeER4?=
 =?utf-8?B?dFZhb3duUFRkcTNwV3dlcVloY0p2cWhQaU9NOGdaNjMwRDJCUVFlUG83aGtI?=
 =?utf-8?B?TGozcDRNMk0zaHNFT2w1VlI5Q3BidTBORmExUkU0aGJteXE2REJiVFA0UjNY?=
 =?utf-8?B?azR1MHFsdlRyakoyeHJUbkNBN2FySXhvTEJ0dFdON2ZQQi9rYUs1M3NNaGlU?=
 =?utf-8?B?cGZvK0xqQS9makozNTVkR3dYdHNWOFRrSFArcEJpMitUVFllOFhMTENWaGtI?=
 =?utf-8?B?TXcybU1PMC9CU2xxeTJCSTlzMmtUbEh2TWtoMk5Ubll2M283K2hLZ0RudkVm?=
 =?utf-8?B?YmFHWHp2c2plb0llWFFRUnlMRDVTbzV0dFRTRkdTMjVjelFLbzVndVBlQ0NH?=
 =?utf-8?B?NXRVMUJGT1piaGNGZUFYdEozVjBySW13bXgrbDNrMk94cnd5KysrR3dsOGdV?=
 =?utf-8?B?WGUzQkp5Ymp1Nk1Mbks5RE12QVR6QzdBWmEvSUhTd2VRMUJjYnpkc2g1d0FU?=
 =?utf-8?B?QzJXUjE5MHJxMnEzUmdCaldsRnU5Q1Q5OHg4djYzckJwV0ZjeXNRNXJacnor?=
 =?utf-8?B?S051NlhzMFZ1NHptd3JmME1JSzFzUTNuMFVHVnh3SDFtQ1JRNzh5Ty9oSW9s?=
 =?utf-8?B?WFBRVGdualdTNkJyWWhaNXRYcjBtdVJmakh1SmtLMVh6ZE05VTIyMWk1cXhJ?=
 =?utf-8?B?UHFHQVppT3ZvajNDRnBMTEZOdWtxdkRIQ1hSNTVOVkF1T1R2cW9DQkZld21n?=
 =?utf-8?B?N3oyWm5GRG5MbjhOUFNyRkdNRDgzUitDaGd4SDZYVVVtQjBxYjIweVc5YklQ?=
 =?utf-8?B?aHU3bnNtY3lLbmRMU1h5emxXSVhnMklzV0dFYzlYR0tybmVwSXVyQllldXND?=
 =?utf-8?B?OVlCOVAzeS94TGx1RHI2K0d1QjRLUjE4dUwwYzNLZlQ5dkg0SnViWDdnb3Zy?=
 =?utf-8?B?RXZUMS9ZVXp4OVVDYmxoU1NLQjR3U1ZWZnV3YWtQLzlFcVhWdmJkc3hNd3hN?=
 =?utf-8?B?Qld4cTlZZGw1RXl4RWtnM1hNQXBXZU1HWXhxcEhxNmN3QXdIMGlMb1hwZEh3?=
 =?utf-8?B?SlhCQ2lhUmkybFNGdENCVVBaUXUzMyswOWprLzE5QlpQKzBuSldGTHFmTTZ4?=
 =?utf-8?B?VllxUTc4aVQxUUt2dWNhRmdlZHdOaTI4bTIyMDl6ZHlKM21ydFMyMkt1Y01q?=
 =?utf-8?B?dTB2SGhXdGhFZ1JxVHorQm9BbWVVdFhTb0RyUVA1TitSZmdWRjhtV1VIZEQz?=
 =?utf-8?B?N3U0eHExdjhxc2txMWUveVNJWCtabFZ0Z3lNSlNpSUx6VFJqalRWamduaElG?=
 =?utf-8?B?dHpROVJ5S3NGejF6YlVnV0pFbHhYZk9tbEhaMHdjRkw0Q21GejlhMjR5dnhI?=
 =?utf-8?B?Ui9tV3YrZ3pDUHI4Q2FhMzAyUHVRK09KT0dqdjlFVkQyNU4xUTBKMGNUSHVu?=
 =?utf-8?B?UDc2TVgwdlB0M2pUQ1VOdTBsR3BCajFxQ04xTk5pTCtObUVuN2FwQkRwQWN3?=
 =?utf-8?B?bElGejQvM1VhUFhJRjIrUlFScm16cVVlU3BMRWcrY2hEMVhZN0ozY3hMK0gr?=
 =?utf-8?B?RFBwUDN5WDlSTkJOWDVQRXhMbUVDaVIrVDYxK1hFZTVhUUtNN0g1bmJjaFRo?=
 =?utf-8?B?ZXd5KzI2NEZ6R1BqcktYdFd0NDdrNFhBV1VFYmlKSTAzTnQ3WUhoaVN3M3dM?=
 =?utf-8?B?bno4dlNnYWR0TjJiS3Nabi9JWU1XalBuZ1ZXV214d3hLRVF3MlNLK2Q3TFJE?=
 =?utf-8?B?MVEza3JQcTFvVzdxei9kZm5PTjFMSFBKU2pmS0F2L1JKNDF3STZBWCtXNEQy?=
 =?utf-8?B?c2FIaUdtT1BJUUVlZUpvdWNuZDVINlZVazd3NSt3dHUvQ0NVWEM5eE8zcVA0?=
 =?utf-8?B?VXBKeDFXREZla2Q5aG9ydVhCQjR1MHhJZmU4S0o0VVhEaTkrTnNCYllRczFm?=
 =?utf-8?B?TnNONHA3cVdVVlk1OXpuNjhraDJScGFyU0w4bzRkVkUwbDVyeVdiblpzQk4y?=
 =?utf-8?B?cFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6753.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b236b0d-6e99-44f7-cf56-08dc11c89575
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2024 10:40:37.8385 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0uQ7IZGDsSSM+Cj/uPgvJrqWZPC+SkIBTHumfK/uMQnDFYao3IJ1QL5qppqlP8QIXpIN96zYxu2H0wJfIfqM0Kktbx+7r0OhNEvi//bXUn4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8759
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTI4MTc1LyAt
IFJlLXJlcG9ydGVkDQoNClRoYW5rcywNClRlamFzcmVlDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tDQpGcm9tOiBJOTE1LWNpLWluZnJhIDxpOTE1LWNpLWluZnJhLWJvdW5jZXNAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgR3VzdGF2byBTb3VzYQ0KU2VudDogTW9uZGF5
LCBKYW51YXJ5IDgsIDIwMjQgMTE6MDcgUE0NClRvOiBJOTE1LWNpLWluZnJhQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZzsgUGF0Y2h3b3JrIDxwYXRjaHdvcmtAZW1lcmlsLmZyZWVkZXNrdG9wLm9yZz47
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBpbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQpTdWJqZWN0OiBSZTog4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgVXBk
YXRlIGJ4dF9zYW5pdGl6ZV9jZGNsaygpIGZvciBYZTJfTFBEIChyZXYzKQ0KDQpRdW90aW5nIEd1
c3Rhdm8gU291c2EgKDIwMjQtMDEtMDggMTQ6Mjc6NDYtMDM6MDApDQo+UXVvdGluZyBHdXN0YXZv
IFNvdXNhICgyMDI0LTAxLTA4IDEwOjM1OjU2LTAzOjAwKQ0KPj5RdW90aW5nIFBhdGNod29yayAo
MjAyNC0wMS0wNSAyMToxNDozNy0wMzowMCkNCj4+Pj09IFNlcmllcyBEZXRhaWxzID09DQo+Pj4N
Cj4+PlNlcmllczogVXBkYXRlIGJ4dF9zYW5pdGl6ZV9jZGNsaygpIGZvciBYZTJfTFBEIChyZXYz
KQ0KPj4+VVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzEy
ODE3NS8NCj4+PlN0YXRlIDogZmFpbHVyZQ0KPj4+DQo+Pj49PSBTdW1tYXJ5ID09DQo+Pj4NCj4+
PkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzE0MDgwX2Z1bGwgLT4gDQo+Pj5QYXRj
aHdvcmtfMTI4MTc1djNfZnVsbCANCj4+Pj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT0NCj4+Pg0KPj4+U3VtbWFyeQ0KPj4+LS0tLS0tLQ0KPj4+DQo+
Pj4gICoqRkFJTFVSRSoqDQo+Pj4NCj4+PiAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5n
IHdpdGggUGF0Y2h3b3JrXzEyODE3NXYzX2Z1bGwgDQo+Pj4gYWJzb2x1dGVseSBuZWVkIHRvIGJl
ICB2ZXJpZmllZCBtYW51YWxseS4NCj4+PiAgDQo+Pj4gIElmIHlvdSB0aGluayB0aGUgcmVwb3J0
ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgDQo+Pj4gY2hhbmdlcyAgaW50
cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTI4MTc1djNfZnVsbCwgcGxlYXNlIG5vdGlmeSB5b3VyIA0K
Pj4+IGJ1ZyB0ZWFtIChJOTE1LWNpLWluZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9yZykgdG8gYWxs
b3cgdGhlbSAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJl
ZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuDQo+Pj4NCj4+PiAgDQo+Pj4NCj4+PlBhcnRpY2lw
YXRpbmcgaG9zdHMgKDggLT4gOCkNCj4+Pi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0K
Pj4+DQo+Pj4gIE5vIGNoYW5nZXMgaW4gcGFydGljaXBhdGluZyBob3N0cw0KPj4+DQo+Pj5Qb3Nz
aWJsZSBuZXcgaXNzdWVzDQo+Pj4tLS0tLS0tLS0tLS0tLS0tLS0tDQo+Pj4NCj4+PiAgSGVyZSBh
cmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQ
YXRjaHdvcmtfMTI4MTc1djNfZnVsbDoNCj4+Pg0KPj4+IyMjIElHVCBjaGFuZ2VzICMjIw0KPj4+
DQo+Pj4jIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMNCj4+Pg0KPj4+ICAqIGlndEBrbXNf
dmJsYW5rQHF1ZXJ5LWJ1c3ktaGFuZ0BwaXBlLWMtaGRtaS1hLTI6DQo+Pj4gICAgLSBzaGFyZC1n
bGs6ICAgICAgICAgIFtQQVNTXVsxXSAtPiBbSU5DT01QTEVURV1bMl0NCj4+PiAgIFsxXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTQwODAvc2hhcmQt
Z2xrNi9pZ3RAa21zX3ZibGFua0BxdWVyeS1idXN5LWhhbmdAcGlwZS1jLWhkbWktYS0yLmh0bWwN
Cj4+PiAgIFsyXTogDQo+Pj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTI4MTc1djMvc2hhcmQtZ2wNCj4+PiBrNy9pZ3RAa21zX3ZibGFua0BxdWVy
eS1idXN5LWhhbmdAcGlwZS1jLWhkbWktYS0yLmh0bWwNCj4+DQo+PlRoZSBkbWVzZyBvdXRwdXQg
ZG8gbm90IHByb3ZpZGUgY29uY2x1c2l2ZSBkYXRhIGZvciB0aGUgSU5DT01QTEVURSANCj4+c3Rh
dHVzIGFuZCBJIGJlbGlldmUgdGhlIGlzc3VlIGlzIHVucmVsYXRlZCwgc2luY2UgdGhlIHJlYWwg
ZnVuY3Rpb25hbCANCj4+Y2hhbmdlIGlzIG9uIHRoZSBkcml2ZXIgaW5pdGlhbGl6YXRpb24gcGF0
aC4NCj4+DQo+Pkhvd2V2ZXIsIGZvciBzYW5pdHkgc2FrZSwgYXMgR0xLIHRha2VzIHRoZSBieHRf
c2FuaXRpemVfY2RjbGsoKSBwYXRoIA0KPj5kdXJpbmcgaW5pdGlhbGl6YXRpb24sIGNvdWxkIHdl
IHJlLXJlcG9ydCwgcGxlYXNlPw0KPg0KPlJlLXNlbmRpbmcgdGhpcyBub3cgYXMgYSBtZW1iZXIg
b2YgSTkxNS1jaS1pbmZyYUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IA0KPm15IHByZXZpb3VzIGVt
YWlsIHdlbnQgaW50byBhIG1vZGVyYXRpb24gcXVldWUgYmVjYXVzZSBJIHdhcyBub3QgYSBtZW1i
ZXIuDQoNCk9uZSBsYXN0IHRyeSwgYXMgaXQgbm93IGNvbXBsYWlucyB0aGF0IHRoZSBtZXNzYWdl
IGlzIHRvbyBiaWcuLi4NCg0KLS0NCkd1c3Rhdm8gU291c2ENCg==
