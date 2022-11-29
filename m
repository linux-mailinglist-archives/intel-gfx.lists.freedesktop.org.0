Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8DE63C195
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 15:00:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D548210E03F;
	Tue, 29 Nov 2022 14:00:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8639D10E03F
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 14:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669730428; x=1701266428;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=uOf1BTztTmcKt7/6TyaD5Dv4DtusBq384TFyMjUqq9A=;
 b=Jzf3bobwZ6eQRDdQbVvHBUZ6qNuv9WqiLKpF6tVfrKnjeCsP+XrxcNHl
 KmBfjiQM22/F5hzPmYRlKfF89oTB8xa77eUsHE8OByROilaZinjZeotp7
 VXSF7Auokan4htOHKY7P5o/ZXjtkZe+9Qrsi+bTDAP07wIpqXp+J4BVGQ
 4xvF4Oj/HBizkpV6yV5Q8+je0ZxjUmwucIMyMNOwb/lt39IrqDw81LPPw
 AB35S9+e8QFmqsdm11dWXQTrNBmnQpKOFAXQL5bJiV+bxGYgujIcSkYX3
 MaN+N6GA3UP50J/wpGeJKXKPrc4b+Un+1r5sSWFf28YObu0HgXQuOLIqM Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="302701839"
X-IronPort-AV: E=Sophos;i="5.96,203,1665471600"; d="scan'208";a="302701839"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 06:00:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="818222216"
X-IronPort-AV: E=Sophos;i="5.96,203,1665471600"; d="scan'208";a="818222216"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 29 Nov 2022 06:00:27 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 06:00:27 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 06:00:26 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 29 Nov 2022 06:00:26 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 29 Nov 2022 06:00:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TP8+DOD3Znf/irtRoOS4PfRUxJRPen6PMOPtL0iF/o3X6wfYtnbld9rhrWUKqgzyMJkSZBSLSdvj0NZ8GjmGP2g6+CyVt/gSXTGhvdyFiuw/g4yn3qCAWjhdobHOWAQP/sjOo8bxEPalPTLCA1bQFA2+96OfIo5wJCrRb1ecgkJBZsFFpesTdxsV7WJ1li5X/oEV8qQS7aR3hYGRzwN3dzAQ2I56YJYKxTPG6vC8FNUvXyi2GZ5jcigZm9gocNCPPJZo6fzc6nQdYkwCZAhvvBZbY2bj4z2Ihmp5ESjudwUqp7TgfVMlc224hxW0b3GlJcEmtR4Bs7gvL3R5sBLx0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uOf1BTztTmcKt7/6TyaD5Dv4DtusBq384TFyMjUqq9A=;
 b=jDNjUfNJP+x8x4MtRHpl/CwpmyHsJ0wXu1Oeffu9Hw4lih9L1BQ/9KfrlJeer9+jsH4npqaVtL2//6GvE3t/v2YXFrjweKlIyo9+XpUPqyrR5OODQs3V3Ze5Y2ZjycRS/uYcWnbsak4PDp1Y29NdE7WNKnVRApamzbOoQLWW6jMjOmnGWMdV6KKGD4KZ4HOMSEvBDijf7cpPBZnpFMDnm7Gkb7rzVXucwc6SCEUnNd01+G1icuYWwN1u65Y3y4S0uTJc6QdMYE3arl3fJf+ZNpSatRNM8pRqhJmkxY4XlHTs1g7hGsh4IvLxNYaoJKmS+Rtz6gSvEABOrScTDtlKEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB2054.namprd11.prod.outlook.com (2603:10b6:903:2d::9)
 by PH7PR11MB6908.namprd11.prod.outlook.com (2603:10b6:510:204::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Tue, 29 Nov
 2022 14:00:24 +0000
Received: from CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::4cfd:8303:d46:1c7f]) by CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::4cfd:8303:d46:1c7f%8]) with mapi id 15.20.5857.023; Tue, 29 Nov 2022
 14:00:24 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [PATCH] drm/i915/psr: Add continuous full frame bit together
 with single
Thread-Index: AQHZA8djPUVprNzsCU+4rHU3wWCkcK5V7kYA
Date: Tue, 29 Nov 2022 14:00:24 +0000
Message-ID: <61eb16851de8a3dab2fef98745a238b5668e93f1.camel@intel.com>
References: <20221129075100.56655-1-jouni.hogander@intel.com>
In-Reply-To: <20221129075100.56655-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR11MB2054:EE_|PH7PR11MB6908:EE_
x-ms-office365-filtering-correlation-id: 8ba238dd-be31-4ec2-aaf3-08dad2121013
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Vc99NSr1aW3ORbHs21wdwSOW9K4UsmbPlAX5APAPPpHrG1FIf8q4hJioAsPUEyBeIs0+bxGJl7gaytjVnJFxObSoWoRXpOmKrbhmANnGQLFXjsECKZJJM/E6OSJyiWLFavp0/QVY50rEroNB+B6vJRLh/XggTIj3laPgVi8YgfUXi0qXHcLu0iC2ZZWBR5ZSl1y9ep+Qdst+fE5f3hrpFE0HBCp4FTYYT5fHFNQAalFnZMRb+bePZxPRj/ZlC5Y16v6+p/2Se7eR7Z/z2/0vp5BCHNH7xOn6rnZ+mTKfkkHRfK9NImUbvMuuTgLwqrbL3TjKPIaOfTfsolp3V/dJ8jVf8S4z0SuvnMvpE9z1gTox/p0WVCzQue161ievER5MOwcKC59176/KEZJrrV1zpi1wpQHD8vOubZgTMIbTjcNnWRc7rHSEkstswZmWOIoM9Qxnymltg2QUMrBgoWmQ0i8mQAtpcswngXap8FsncCWCb1Karo1Ajsjq1gu+2KuP5dQovP0DMvq7MBWeon2jvhAAdrk9npSAh7EVqSHnFZ8Puj3QDphO9FidGQtdCzdVQG9xLRo+cR0GhWAcMKu8B9OePyrrztFDTCfmflwWUnkShMLAMri/KsS4dTuJs6VLPA6ikkhZnkPBtleDqRM6CepQS7oBDwo1ADY8LlxCHesNtrh4NipSjU1jcjlHDYeAOs4sRKdgN6Xev0fn5Nsc2Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB2054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(39860400002)(366004)(136003)(396003)(451199015)(66946007)(122000001)(82960400001)(2906002)(4001150100001)(41300700001)(38070700005)(38100700002)(86362001)(66574015)(83380400001)(110136005)(6486002)(64756008)(66446008)(91956017)(6636002)(54906003)(2616005)(478600001)(66556008)(316002)(71200400001)(8676002)(36756003)(66476007)(4326008)(8936002)(5660300002)(76116006)(186003)(6512007)(26005)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZjdvcGpyREQ4SUh3b3hOY2ZtNUFsVnZ4UGxJQUpBRHVqQkVYSDFiWGxRampz?=
 =?utf-8?B?MldWK3Q4MzdhNXdid3JQakpMclhUQ2x6dTdvTEFiRHl2MXVwZytrY0J4dTcw?=
 =?utf-8?B?V1YrU2RHOW82M01MUEhHanlhSFBveTZmNUNtSzZUdm1LTXRBZ2FqMm1YNEVR?=
 =?utf-8?B?cXlhNGN1RHFaUERDdldGQUhPTmxnRHU3MXpQZmtHRkFnaUZ3VTJ3bmVDZ2ZQ?=
 =?utf-8?B?MklNOG1SK05Nd3F4N3Q5RkgyeERJc3BKczBSZ0libi9TQUZGVWovM1JraWo0?=
 =?utf-8?B?N0QxajJSbzVQRlV5eVNjOGlPT2habmpKbFBDbGNtcm9VV0ZWdE1xVlQ5R1dH?=
 =?utf-8?B?M2Z3SitqRXNNWHFUZGcwM2lnQTNDU25tVVEraWxaSDlIWUYxOUo2TFBqb3RZ?=
 =?utf-8?B?eVdRWUFrREloeEl1eEhjKzNEdG9GZzJsWkVqREk1aXZMN3I5U2VtY0xhMGIy?=
 =?utf-8?B?R3RKY24yNGNlMEs0ZnMwV3RWcnQ0bHBqQ2VSbDE3d3RVazh2ekNWVDBCclVI?=
 =?utf-8?B?UDVxbGtNOWo0TkZ2SzFmNWlnTmNONndJZXZldlRmNmcxTGgxVC9POUttZGRn?=
 =?utf-8?B?S1Jldm44RzJCRzl4VEV0d1YyOEFHTis2LzgwRmFrUURzTkhoSkFYV0lmeGtF?=
 =?utf-8?B?QkFXOW1qRjFFOFcrSzRkT0x5STArNnRNN2phcWFTYzVxdEd5UzdYaVVzV0ZH?=
 =?utf-8?B?dVRjZmhPYjl1MHZ5ZmFuOVVkNTNwcG4vbDM4THdxV2lXK09QQzZsdnZZdjlP?=
 =?utf-8?B?dXJ3aGF0VUlCZkJrL0pWc1Q5dVR2WkN6NTN0VEdUQ3liWlhRLzl2MEZzRzdK?=
 =?utf-8?B?bGxIa2tYek0rWEV4aENnMkNLcmFXL1k3eTRteHF2ekR2QmY2VEwxQjZGN3lh?=
 =?utf-8?B?dndRZk85OFFyUUNyMFQ1aG9HandlZnhqSy9NU3JNd1N6SmpobDNMNUZreUtU?=
 =?utf-8?B?VTM2MStic3RlTFBOdU0zeVNhajNMekhrZitxNlhxcW9STTVEV3dXT2hPeDFs?=
 =?utf-8?B?NmpxNVFmSWVMNGlTOXZhNldMSmdzYmZNaVREbTJEbGNaMitraXd2K2F0aFM4?=
 =?utf-8?B?V09YUlh3TGIveURzSW56a1hhSElDNVBnZnlmUXRJNEd4c3VZYjJQRkxkVWR6?=
 =?utf-8?B?eEF3bkJzUk5mVFVJcVpBQUprQTM1YXgzV2E1Kys5d1gyNXAzU3JPVlJ2cEs2?=
 =?utf-8?B?c05aNWVsd291b1pibEpXVmZVK3VmTElRTmhVMmg3ZnpUQVVYZStYaEMvbmdH?=
 =?utf-8?B?ZHBST3NUZW9Jc3I5azBvV3pLNm9ncFVHckhOdm01bVhYbExidkF5dXVseE1R?=
 =?utf-8?B?NjhqWTFFRUtZODI3a25kcWVJdERFc1JYR0lxMVVSelNhMHk0OU5KbklDcDNE?=
 =?utf-8?B?czNVRlExSkxZK0JBTGZCdGU1c2VJNG5BWkhCc2VEZDdibTFiNEZUVXYrZGRv?=
 =?utf-8?B?MTlZcUtlYlZRbDN6RndNK0hXN1M2VE51dUcyc0NZTENYOXQzdzROTXY1cmxC?=
 =?utf-8?B?R2grY1hQZXRySWJPanI1VERpeEtZS1A0b01WS3Q4OU1zZlBFV1ArRnNhcFM4?=
 =?utf-8?B?cUdETnBuQVdKc0JJWEZyOEQ3bmIvMVp6VlIwbWR6ME90OFdSMGhwU2RCbmNQ?=
 =?utf-8?B?QVljWUdzT0xpSE85VTdCaVF2cTBDbnRpVkliUUJrUEZxNmxaZmR3V1N3Z21Q?=
 =?utf-8?B?TDI0WXR4eWpia1p0NUhjdGQvMHdMT3d3MHQwZVRXQVBmZkNtaHR2VmJMOVdm?=
 =?utf-8?B?b0o3bGY5R0xtUEw5N2FQNS9zVEhWNWY5VEJKOXhsUzB3am1xUGxmWWZseGVu?=
 =?utf-8?B?OWFGU085WkNPaU9jNEEwVnZxVWtFa3hnRkprQUNjNDZDeU9NQnE4eUZXdUsy?=
 =?utf-8?B?NUNsSThDVEhjTzI1aGtBdkpiQkg5dVFpMmVacFFnWXJpZ2lmeXNlM2tlMThK?=
 =?utf-8?B?R2ZCWUt1M3JNRFZkZWxPbEY5UE1iRWI0ZGlSMEZWOE1PNG8wNGJKUzRwcE5l?=
 =?utf-8?B?QW5pUElia3B6czFtUEEzSy9pZytiWExZK3k5UGU3ckpRbUxJUzdyMVRCR21W?=
 =?utf-8?B?NzlJblc0Zzg2TzJpQWVwdHArNkV6R0VDMGNEZnRVc1UvdGgxOS9FdEwvcmFz?=
 =?utf-8?B?WFlMWTBHeXhHU0tmWGhoT2REbTJTYWsvV25Gc2pwRm5sZVkzR0plNWQyVXhD?=
 =?utf-8?B?aUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C09B3BE3DD236349BC7B9EE27A907E1B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB2054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ba238dd-be31-4ec2-aaf3-08dad2121013
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2022 14:00:24.6846 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XoKhENv1rpyU+GhwcbyWhKeBxJg/Hg6ON4hLl+IoJLpUEkVIoPZ82zO28ERFQo+ZaCDwIiB7AFeaQhMP0KiUrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6908
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Add continuous full frame bit
 together with single
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

T24gVHVlLCAyMDIyLTExLTI5IGF0IDA5OjUxICswMjAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IEN1cnJlbnRseSB3ZSBhcmUgb2JzZXJ2aW5nIG9jY2FzaW9uYWxseSBkaXNwbGF5IGZsaWNr
ZXJpbmcgb3IgY29tcGxldGUNCj4gZnJlZXplLiBUaGlzIGlzIG5hcnJvd2VkIGRvd24gdG8gYmUg
Y2F1c2VkIGJ5IHNpbmdsZSBmdWxsIGZyYW1lIHVwZGF0ZQ0KPiAoU0ZGKS4NCj4gDQo+IFNGRiBi
aXQgYWZ0ZXIgaXQncyB3cml0dGVuIGdldHMgY2xlYXJlZCBieSBIVyBpbiBzdWJzZXF1ZW50IHZi
bGFuaw0KPiBpLmUuIHdoZW4gdGhlIHVwZGF0ZSBpcyBzZW50IHRvIHRoZSBwYW5lbC4gU0ZGIGJp
dCBpcyByZXF1aXJlZCB0byBiZQ0KPiB3cml0dGVuIHRvZ2V0aGVyIHdpdGggcGFydGlhbCBmcmFt
ZSB1cGRhdGUgKFBGVSkgYml0LiBBZnRlciB0aGUgU0ZGDQo+IGJpdCBnZXRzIGNsZWFyZWQgYnkg
dGhlIEhXIHBzcjIgbWFuIHRyayBjdGwgcmVnaXN0ZXIgc3RpbGwgY29udGFpbnMNCj4gUEZVIGJp
dC4gSWYgdGhlcmUgaXMgc3Vic2VxdWVudCB1cGRhdGUgZm9yIGFueSByZWFzb24gd2Ugd2lsbCBl
bmQgdXANCj4gaGF2aW5nIHNlbGVjdGl2ZSB1cGRhdGUvZmV0Y2ggY29uZmlndXJhdGlvbiB3aGVy
ZSBzdGFydCBsaW5lIGlzIDAgYW5kDQo+IGVuZCBsaW5lIGlzIDAuDQo+IA0KDQpIb3cgZGlkIHlv
dSBnZXQgdGhpcyBpbmZvcm1hdGlvbihzdGFydCBhbmQgZW5kIGxpbmUgMCk/DQoNCj4gIEFsc28g
c2VsZWN0aXZlIGZldGNoIGNvbmZpZ3VyYXRpb24gZm9yIHRoZSBwbGFuZXMgaXMNCj4gbm90IHBy
b3Blcmx5IHBlcmZvcm1lZC4gVGhpcyBzZWVtcyB0byBiZSBjYXVzaW5nIHByb2JsZW1zIHdpdGgg
c29tZQ0KPiBwYW5lbHMuDQo+IA0KPiBVc2luZyBDRkYgd2l0aG91dCBTRkYgZG9lc24ndCB3b3Jr
IGVpdGhlciBiZWNhdXNlIGl0IG1heSBoYXBwZW4gdGhhdA0KPiBwc3IyIG1hbiB0cmFjayBjdGwg
cmVnaXN0ZXIgaXMgb3ZlcndyaXR0ZW4gYnkgbmV4dCB1cGRhdGUgYmVmb3JlDQo+IHZibGFuayB0
cmlnZ2VycyBzZW5kaW5nIHRoZSB1cGRhdGUuIFRoaXMgaXMgY2F1c2luZyBwcm9ibGVtcyB0bw0K
PiBwc3JfaW52YWxpZGF0ZS9mbHVzaC4gVXNpbmcgQ0ZGIGFuZCBTRkYgdG9nZXRoZXIgc29sdmVz
IHRoZSBwcm9ibGVtcw0KPiBhcyBTRkYgaXMgY2xlYXJlZCBvbmx5IGJ5IEhXIGluIHN1YnNlcXVl
bnQgdmJsYW5rLg0KDQpUaGlzIGxvb2tzIGRhbmdlcm91cywgaGF2ZSB5b3UgY2hlY2tlZCB3aXRo
IEhXIGVuZ2luZWVycyBpZiBzZXR0aW5nIGJvdGggY291bGQgY2F1c2UgYW55IGlzc3VlPw0KQXQg
dGhlIFNGRiB3cml0ZSB5b3UgY291bGQgZ2V0IHdoYXQgaXMgdGhlIGN1cnJlbnQgdmJsYW5rIGNv
dW50ZXIgYW5kIHByb3Blcmx5IGhhbmRsZSBmdXR1cmUgUFNSMl9NQU5fVFJLX0NUTCB3cml0ZXMu
DQoNCj4gDQo+IEZpeCB0aGUgZmxpY2tlcmluZy9mcmVlemUgaXNzdWUgYnkgYWRkaW5nIGNvbnRp
bnVvdXMgZnVsbCBmcmFtZSB3aXRoDQo+IHNpbmdsZSBmdWxsIGZyYW1lIHVwZGF0ZSBhbmQgc3dp
dGNoIHRvIHBhcnRpYWwgZnJhbWUgdXBkYXRlIG9ubHkgd2hlbg0KPiBzZWxlY3RpdmUgdXBkYXRl
IGFyZWEgaXMgcHJvcGVybHkgY2FsY3VsYXRlZCBhbmQgY29uZmlndXJlZC4NCj4gDQo+IFRoaXMg
aXMgYWxzbyB3b3JrYXJvdW5kIGZvciBIU0QgMTQwMTQ5NzE1MDgNCg0KUGxlYXNlIHVzZSB2ZXJz
aW9ucyBpbiB5b3VyIHBhdGNoZXMsIHlvdSBoYWQgMiBwYXRjaGVzIGluIHRoZSBwcmV2aW91cyBh
cHByb2FjaCB3aXRoIHRoZSBzYW1lIHN1YmplY3QgYnV0IG5vIHZlcnNpb25pbmcgYW5kIG5vIGlu
Zm9ybWF0aW9uIGFib3V0IHdoYXQNCmNoYW5nZWQgYmV0d2VlbiB2ZXJzaW9ucy4NCg0KPiANCj4g
Q2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IENj
OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gQ2M6IE1p
a2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IA0KPiBSZXBvcnRlZC1ieTogTGVl
IFNoYXduIEMgPHNoYXduLmMubGVlQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSm91bmkg
SMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDE5ICsrKysrKysrKystLS0tLS0tLS0N
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDViNjc4
OTE2ZTZkYi4uODgzODgyMDE2ODRlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gQEAgLTE1MTAsNyArMTUxMCw4IEBAIHN0YXRpYyB2b2lkIHBzcl9m
b3JjZV9od190cmFja2luZ19leGl0KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICAJCQkg
ICAgICAgUFNSMl9NQU5fVFJLX0NUTChpbnRlbF9kcC0+cHNyLnRyYW5zY29kZXIpLA0KPiAgCQkJ
ICAgICAgIG1hbl90cmtfY3RsX2VuYWJsZV9iaXRfZ2V0KGRldl9wcml2KSB8DQo+ICAJCQkgICAg
ICAgbWFuX3Rya19jdGxfcGFydGlhbF9mcmFtZV9iaXRfZ2V0KGRldl9wcml2KSB8DQo+IC0JCQkg
ICAgICAgbWFuX3Rya19jdGxfc2luZ2xlX2Z1bGxfZnJhbWVfYml0X2dldChkZXZfcHJpdikpOw0K
PiArCQkJICAgICAgIG1hbl90cmtfY3RsX3NpbmdsZV9mdWxsX2ZyYW1lX2JpdF9nZXQoZGV2X3By
aXYpIHwNCj4gKwkJCSAgICAgICBtYW5fdHJrX2N0bF9jb250aW51b3NfZnVsbF9mcmFtZShkZXZf
cHJpdikpOw0KPiAgDQo+ICAJLyoNCj4gIAkgKiBEaXNwbGF5IFdBICMwODg0OiBza2wrDQo+IEBA
IC0xNjI0LDExICsxNjI1LDggQEAgc3RhdGljIHZvaWQgcHNyMl9tYW5fdHJrX2N0bF9jYWxjKHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiAgCXZhbCB8PSBtYW5fdHJrX2N0
bF9wYXJ0aWFsX2ZyYW1lX2JpdF9nZXQoZGV2X3ByaXYpOw0KPiAgDQo+ICAJaWYgKGZ1bGxfdXBk
YXRlKSB7DQo+IC0JCS8qDQo+IC0JCSAqIE5vdCBhcHBseWluZyBXYV8xNDAxNDk3MTUwODphZGxw
IGFzIHdlIGRvIG5vdCBzdXBwb3J0IHRoZQ0KPiAtCQkgKiBmZWF0dXJlIHRoYXQgcmVxdWlyZXMg
dGhpcyB3b3JrYXJvdW5kLg0KPiAtCQkgKi8NCj4gIAkJdmFsIHw9IG1hbl90cmtfY3RsX3Npbmds
ZV9mdWxsX2ZyYW1lX2JpdF9nZXQoZGV2X3ByaXYpOw0KPiArCQl2YWwgfD0gbWFuX3Rya19jdGxf
Y29udGludW9zX2Z1bGxfZnJhbWUoZGV2X3ByaXYpOw0KPiAgCQlnb3RvIGV4aXQ7DQo+ICAJfQ0K
PiAgDQo+IEBAIC0yMzA3LDEyICsyMzA1LDE1IEBAIHN0YXRpYyB2b2lkIF9wc3JfZmx1c2hfaGFu
ZGxlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICAJCQkvKiBjYW4gd2UgdHVybiBDRkYg
b2ZmPyAqLw0KPiAgCQkJaWYgKGludGVsX2RwLT5wc3IuYnVzeV9mcm9udGJ1ZmZlcl9iaXRzID09
IDApIHsNCj4gIAkJCQl1MzIgdmFsID0gbWFuX3Rya19jdGxfZW5hYmxlX2JpdF9nZXQoZGV2X3By
aXYpIHwNCj4gLQkJCQkJICBtYW5fdHJrX2N0bF9wYXJ0aWFsX2ZyYW1lX2JpdF9nZXQoZGV2X3By
aXYpIHwNCj4gLQkJCQkJICBtYW5fdHJrX2N0bF9zaW5nbGVfZnVsbF9mcmFtZV9iaXRfZ2V0KGRl
dl9wcml2KTsNCj4gKwkJCQkJbWFuX3Rya19jdGxfcGFydGlhbF9mcmFtZV9iaXRfZ2V0KGRldl9w
cml2KSB8DQo+ICsJCQkJCW1hbl90cmtfY3RsX3NpbmdsZV9mdWxsX2ZyYW1lX2JpdF9nZXQoZGV2
X3ByaXYpIHwNCj4gKwkJCQkJbWFuX3Rya19jdGxfY29udGludW9zX2Z1bGxfZnJhbWUoZGV2X3By
aXYpOw0KDQpzdHlsZS4NCg0KPiAgDQo+ICAJCQkJLyoNCj4gLQkJCQkgKiB0dXJuIGNvbnRpbnVv
dXMgZnVsbCBmcmFtZSBvZmYgYW5kIGRvIGEgc2luZ2xlDQo+IC0JCQkJICogZnVsbCBmcmFtZQ0K
PiArCQkJCSAqIHR1cm4gY29udGludW91cyBmdWxsIGZyYW1lIG9mZiBhbmQgZG8gYSBzaW5nbGUg
ZnVsbCBmcmFtZS4gU3RpbGwNCj4gKwkJCQkgKiBrZWVwIGNmZiBiaXQgZW5hYmxlZCBhcyB3ZSBk
b24ndCBoYXZlIHByb3BlciBTVSBjb25maWd1cmF0aW9uIGluDQo+ICsJCQkJICogY2FzZSB1cGRh
dGUgaXMgc2VudCBmb3IgYW55IHJlYXNvbiBhZnRlciBzZmYgYml0IGdldHMgY2xlYXJlZCBieQ0K
PiArCQkJCSAqIHRoZSBIVyBvbiBuZXh0IHZibGFuay4NCg0KDQp0dXJuIG9mZiBhbmQga2VlcCBi
aXQgZW5hYmxlZD8hIG1ha2VzIG5vIHNlbnNlIHRoaXMgY29tbWVudC4NCg0KPiAgCQkJCSAqLw0K
PiAgCQkJCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBQU1IyX01BTl9UUktfQ1RMKGludGVsX2Rw
LT5wc3IudHJhbnNjb2RlciksDQo+ICAJCQkJCSAgICAgICB2YWwpOw0KDQo=
