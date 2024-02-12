Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7E98516AE
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Feb 2024 15:11:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A886910E749;
	Mon, 12 Feb 2024 14:11:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D97zTdMo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74DAE10EBE2
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Feb 2024 14:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707747114; x=1739283114;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9nF9BiXYLqfpsAXFOEeOXu26sUQayBVCF60+DfD9nJY=;
 b=D97zTdMoNHFZSYxkty1iLM+s3vudIJW2c4iNJNHU5XGApXmk8pcn1aSD
 Ey+h7gB64FOO9VRh9GwIJDdzdEiSEXXQO4T3NuxhBPtOgLaxlI62rnjuT
 4rSz5p9JOk+v9kfVPytzz/y68hZ0RbKo0j2PBOMXEqfhtJhwRjIfqeCGI
 v091YJ9xTlbVIfTqAnmSphXeZMrE6rhQkUEzdsvqjewpKccpxIcw/im+U
 7Pp5mKHj3V1XzLKXc8dJSmw4PAzZT1s4PP3LvBbkdxqNYq0e5yg8ra4BZ
 ufXN2s2SMWqwm2KzWM84i5svh+xhiKSnvdyaoq4PRaXi9al2oH9Nly+7c w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10981"; a="2069175"
X-IronPort-AV: E=Sophos;i="6.06,264,1705392000"; 
   d="scan'208";a="2069175"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 06:11:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,264,1705392000"; 
   d="scan'208";a="7219953"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2024 06:11:54 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 12 Feb 2024 06:11:53 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 12 Feb 2024 06:11:53 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 12 Feb 2024 06:11:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WQnWQynYMARHNZqTlYmTXtdztL0qj0XfFa0+1xQ+Hr4sCMAC5R64bkNSlRXrJ6ymMQeGtbmw0KUtq59HFXuJD61jkX/0ERU+3YupfVCZ2f/CmVmnGqlzTgMBBL5lfqkgjWhVbpI1ixviuQThAJkBQO3l/Nspg+tg1bv44v7od4rZALAca0+ZNXBAuf86RBdHOOJBJKJT7W0tye4BZglktN5t318n/+BL2yUv/bBp6phY6+mZBN6lAyfUNZ0xgM8Jxtw0lMPHLGZekWrzhteaW/q2zkOmZXTboLfuiXBYGoyO7rb1wGJGnd3fg+SiUJzXOmthvvKg3iH5khd1WKpdbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9nF9BiXYLqfpsAXFOEeOXu26sUQayBVCF60+DfD9nJY=;
 b=Kv0pVLsWpNMqO9fhZjCfiOiOxCE9kQJ1N0ObiTR/07W2hXmkbXgaGk3u8Ulld65kS+gGaPDCM8raVf10MDvLBlUeEkKX3UkAVS7X82v9pZVByVQ76q5xZFknydfr4EmAWJRUJD4sO0dbDIhAebs+VOENds77bFA9qfm80TrNH0T20StkzGuut5NUV6Vb5XMDqYKeGzuphGPrhWFjOfCcPoqROHX+34Ocawn+VlscOzFC8c9tgie/VzePOZhvxd8YNwrp9FKPZfoVIagHa8mAbdIkB8D0+wGhfZdmSac498eDd5mnglHuYEGPJ0iJxUZmWO4ybdMNixzU+YaORd+CKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DS0PR11MB6494.namprd11.prod.outlook.com (2603:10b6:8:c2::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.35; Mon, 12 Feb
 2024 14:11:51 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca1a:739f:f7d4:866d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca1a:739f:f7d4:866d%3]) with mapi id 15.20.7270.033; Mon, 12 Feb 2024
 14:11:50 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 1/5] drm/i915: Fix PLL state check for gmch platforms
Thread-Topic: [PATCH 1/5] drm/i915: Fix PLL state check for gmch platforms
Thread-Index: AQHaW4cu4+bcKMw5t0C/kfNETZANoLEGw6Ag
Date: Mon, 12 Feb 2024 14:11:50 +0000
Message-ID: <MW4PR11MB70541136D9707CD92CA51697EF482@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20240209183809.16887-1-ville.syrjala@linux.intel.com>
 <20240209183809.16887-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20240209183809.16887-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DS0PR11MB6494:EE_
x-ms-office365-filtering-correlation-id: 4d3f751d-4487-41c9-21a4-08dc2bd48e8e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OYUA+FHY/RhwJfLAnOamr18dVBVhDeRAfeLYbWWXqMJQezEtgXxjrM2Ph0OCDwbYcGMk0LQVFvnDOHfBUleUpvd6xnFPeEfigKdw3cH+vNDHpQwcoGX2l/aFwc/1Ab37cKJpzq+uzsSREEVNtVgnyQX8cmXCiReUWonmKMrvpgjLBtdZR7JuYZPZpcQsp39YBLLQSPncQJZjfYckwv1Z7vpeStjIGtunP+xkByyAbZl1xbM2yT+3jYhxcIMVZ8v2Gr5ktcskMRzwOoEd18pwV6l3lLGxkKfsz+vJuCqF+J1f7VSE/z3quI09sVRtS4aGELj1Ms6tscNPxJqegYbfuMfGTVzBrTPQAgKX1+Z0MjhzP6YAnH/QXeZNuxYAz7yXkD1b4P8UWaHMw/iFaRI50gKfRBFr/nlp4scC/8AxWxz01ugYG6FcjFGRZLwMLkOurAKctIQxhEt1Gwz+8HGEmIwLcBdkH77Uqa8xkOxQOC6RBsBLo0beyZkvmmellFqIwHLr5vdPmpzsS3pkNmjZfOgPaMdvfZXN1/UFWjau8UUZQ/EHKL3fUoEQI+RGAc97/Gz+PxQ8jwOXGq/E2b/9bM54mR6EkZ3xRoPESUOdZHuiM42HNQldaq2OYZGcB/q2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39850400004)(346002)(396003)(376002)(136003)(366004)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(38100700002)(122000001)(83380400001)(86362001)(33656002)(7696005)(478600001)(6506007)(26005)(66574015)(9686003)(53546011)(71200400001)(82960400001)(38070700009)(110136005)(52536014)(5660300002)(66946007)(66556008)(66476007)(76116006)(55016003)(316002)(41300700001)(8936002)(8676002)(66446008)(64756008)(2906002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YXkxaUcvWWtDdFVTVXdoQ2ZOU0c1Ny9hOUljZlp4eUF6ME9qUVJ2UndOejdP?=
 =?utf-8?B?alNKaVpBeWNwMkdlTFRwSWVOaCsrOXZtMlpOdmE2OGpNK2Q3VWFVUzRDMlJQ?=
 =?utf-8?B?N0ZLVUhuWm1wejlwRTZuUXBzbXFPTnEyWVpjVkd5bjFWVkdZL3ZxOGNucVRC?=
 =?utf-8?B?SWZTMUR6NFJaZTAwUG41eU5heDhlSENzdVgvT2lMOEIxYzRQT3ptb3g2U0M5?=
 =?utf-8?B?MUx6emF4bzZBVVdUK3NwR0ZwVU9QU0NJd0JJL0sxcnVRWlhZaEJUL3ByUjJ6?=
 =?utf-8?B?Rkx6N2xiSzlWQU9QUDdDTFZ0NDJSS1phTTJob0I2Mk9ET1hqYjJ1c1lRR3VJ?=
 =?utf-8?B?NjhWWktyUXMxQUkzV2ZUZk5VcFdVTFdWRERUeDV3UGVWdThKcnduOEw2czhr?=
 =?utf-8?B?OEYxcTdLTzBvRmlpM2NaYWM2bXZ6SjZabGdMTnJxZkVZSTN6SVJNRWVIaTgr?=
 =?utf-8?B?Q2xqakZGS3BpckdQcnFYdTlKR2kya3hMTTZKbDVseUdVa2hlVzRIaEVxMzVH?=
 =?utf-8?B?bHQ0V3crZks2NW0zUi9IRFZmY3FBOHEvZ0hFZDdvdlZHSFdxWlRLaG5MeXN3?=
 =?utf-8?B?MnV0N05ENXZ5UXkxcjlESGovalVWcXdjTTZ0QlArUzF4UEwzd1VkOVh4Y21u?=
 =?utf-8?B?cW1rWTQ1Mm9uT2VaMkdUMnBhNUZXdElFbDJ4SUZ2aGJMSlAwVEVUdHg3VDlz?=
 =?utf-8?B?VzlPNzJ4K085NmY1dGpYM1daaUtyTUVMVzBodU5vb0FCcm9JaGhpRGVSTUQ2?=
 =?utf-8?B?VEFuLzdsSVhjS2VJa242V0ZtT21ubVBwcXZSOEFwVzJwd3c1YUJDM3hzRTBv?=
 =?utf-8?B?NFVvNkpGQXRVUDl2YWNOaXZEYnNjK2JTOE4rS3pOdDJ6UkpHaHQ4MTM2RmRw?=
 =?utf-8?B?OGgzUkVFRVM3UDBqbkhDSGU5OGdOZVU4ZnhlN1FYalBIQ2xTMkU4ZDJiTlNt?=
 =?utf-8?B?UGlFemVnVkJuRzFPNkg5aFIrc0d5U3FJdWo3Q1Zqc2c1YWxMRFhXK2ZtSitF?=
 =?utf-8?B?UnVzZTIvUUsvTUs3aks5a2V3TUxXcDFjTlRwL0Y2c0V0c1pXbjlEN0pRRk1T?=
 =?utf-8?B?amwxZTY0SnFDUm9jcmZSVzhiZkdEK3I2TUF3UUFkMGp2Njlsc21XdG0rZkVG?=
 =?utf-8?B?Wm5PMmg2WlYvSStCclQyZWVxaTNIa3Y3S25ISXVmOXVleG9CdWk5cS9CYkR2?=
 =?utf-8?B?Rkk1cE10MTJlRXhsaG1LN0Nib3JoR2dsZmtGK05qb2ZNN3VpMStGSUMvUlph?=
 =?utf-8?B?dGNWdU9JSEpUTXB1L25veGQ3ek8zSjd0cFl6a2VaSnE5RXUzZXMyMmRqZ1l6?=
 =?utf-8?B?cGJXcndHajdIYzRvOE1vVVl1MHlyRlFWeDhXWTlIZmNLeDlCYkh0cjdLMzBK?=
 =?utf-8?B?OW9ncjZacWhpczNjSkhsUWJoa29kdmNJK1NCajZweDFZSWp1VVBiaUttRWJQ?=
 =?utf-8?B?akdqQytrK0JxdHQwRjFlRmpXMzNxV3VuTjZRQ3VXck5QMXFpeUZKRk5TUVJx?=
 =?utf-8?B?OGt3M1lMWm1tRzRaRmN1MHo2SHI3cXVDUysxM0didm9PckxRUVZsMGpSSENs?=
 =?utf-8?B?ZkIySkozVWdBUFJCRkh6VXdyLy96TDVMT3RDbDJIOHg0OTJ2TGNIaGlTVWFo?=
 =?utf-8?B?UXQyM1o5NmxmN09FZTJsdFczc0ZEeGZBV1pDNUFkZVF6bytRK21KZG1WWXMy?=
 =?utf-8?B?L1Q3WVZUWVcxSG40YnR6RXQyVU96QzNPMVBVWGF6ZzZrbkIxK24zc3J1YVha?=
 =?utf-8?B?bmFLZ04xRlpzcXl1OS9XWi9BWTFpL01Oai9BRWVicHFhVndPOWVvUm14c2Rr?=
 =?utf-8?B?Q0hvaFNXdVpHVlE5NVlvbTdTcllINGV4bDZFdFNIcFpDWnhLYnJlYWFzdkFh?=
 =?utf-8?B?TDUyWVp4R2ZpNStIOThOWWVhWC9scEZXcGhmWXl2UTVOUkVSd3ZkL05KbnRN?=
 =?utf-8?B?VTZBcm1hL2ZXOWY2QllUcmNld0xIY0F1Si9LVG9HNEgrbzF6ZWVDanpSYkFX?=
 =?utf-8?B?dFFpYXM4ZTQxTkQzcHQ3RUFZSVFJemI3RStKZ2o5cW1sZHZzdkhxTmxzT1JH?=
 =?utf-8?B?MUxPSk9SbTBrU2ZOcmQzVU9jenJtSVNqYkhVU2lsUlRReUphMmdpaldMMTZD?=
 =?utf-8?Q?YIXWj80OcXz5sl7lKYPSCPmTI?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d3f751d-4487-41c9-21a4-08dc2bd48e8e
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2024 14:11:50.4203 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: svsGo1bqYor6oRyxBphso89fMTv1A+5ZMpS6DRAt7ZXWVJnfpyb3DUcbB/UdBi/TyH6tN1iIn4X/Hot2lSNkfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6494
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlIFN5cmph
bGENCj4gU2VudDogRnJpZGF5LCBGZWJydWFyeSA5LCAyMDI0IDg6MzggUE0NCj4gVG86IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDEvNV0gZHJtL2k5
MTU6IEZpeCBQTEwgc3RhdGUgY2hlY2sgZm9yIGdtY2ggcGxhdGZvcm1zDQo+IA0KPiBGcm9tOiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gR01D
SCBEUExMIHN0YXRlIGNoZWNrIHdhcyBtaXN0YWtlbmx5IHJlbW92ZWQgaW4gY29tbWl0IDg3ZmM4
NzVhMmI4NSAoImRybS9pOTE1L2RnMjogU2tpcCBzaGFyZWQgRFBMTCBoYW5kbGluZyIpLg0KPiBC
cmluZyBpdCBiYWNrLg0KPiANCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9s
YUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDQgKysrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggN2RiMDY1NWQ4YzllLi5mMjA3MjhiN2Y2
N2IgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jDQo+IEBAIC01MjE1LDkgKzUyMTUsMTEgQEAgaW50ZWxfcGlwZV9jb25maWdfY29tcGFyZShj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3VycmVudF9jb25maWcsDQo+IA0KPiAgCVBJ
UEVfQ09ORl9DSEVDS19CT09MKGRvdWJsZV93aWRlKTsNCj4gDQo+IC0JaWYgKGRldl9wcml2LT5k
aXNwbGF5LmRwbGwubWdyKSB7DQo+ICsJaWYgKGRldl9wcml2LT5kaXNwbGF5LmRwbGwubWdyKQ0K
PiAgCQlQSVBFX0NPTkZfQ0hFQ0tfUChzaGFyZWRfZHBsbCk7DQo+IA0KPiArCS8qIEZJWE1FIGNv
bnZlcnQgZXZlcnl0aGluZyBvdmVyIHRoZSBkcGxsX21nciAqLw0KPiArCWlmIChkZXZfcHJpdi0+
ZGlzcGxheS5kcGxsLm1nciB8fCBIQVNfR01DSChkZXZfcHJpdikpIHsNCj4gIAkJUElQRV9DT05G
X0NIRUNLX1goZHBsbF9od19zdGF0ZS5kcGxsKTsNCj4gIAkJUElQRV9DT05GX0NIRUNLX1goZHBs
bF9od19zdGF0ZS5kcGxsX21kKTsNCj4gIAkJUElQRV9DT05GX0NIRUNLX1goZHBsbF9od19zdGF0
ZS5mcDApOw0KPiAtLQ0KPiAyLjQzLjANCg0K
