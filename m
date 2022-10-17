Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42778601DA7
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Oct 2022 01:36:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A6D310E619;
	Mon, 17 Oct 2022 23:36:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B82E610E619
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 23:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666049787; x=1697585787;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=xHSls6fyYz+XKGT+Eg1/rEIKo00tn+nq92dPt6+6380=;
 b=j1IThFypN2iotiezy26AjfRLvTag3g1P7TCRz53R8TrK3EP2oSVJ7UwD
 GPSOpdf5tPpCxp2OnruLA1FUEUlLtXMaQWxLg2XCNi0CI+zmIUVgI78ih
 6SYrIP1Gtbqibnqsh0yCkPiY8LxKJa6ii0FA4zoPoE1O3tRC46eXBgb8X
 jVe7H46kyObfLh23G3EsI2oCbhNOFpbySFo+b9wxRrjf958ChSN7annZf
 6aTq6EYgnJgh3oFuU2Bm5BeggjPk6wrfRj00uMfAIUjO833KJ1qDszK4N
 GMbRh29Xc+jdJiPZnT22yQPN7HDAFlo8oI/xEPp3Rg5WOTJoheMoEtUab A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="286337193"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="286337193"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 16:36:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="579552683"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="579552683"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 17 Oct 2022 16:36:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 16:36:26 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 16:36:26 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 17 Oct 2022 16:36:26 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 17 Oct 2022 16:36:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fBHqa5XHMzhZbIEfjT9m+0np72ndpelGydVj+CRVLhInXeUn7NnvJL8AKsOLgEmlqlcYGp9b0hsJbmoJdQAJYrFwSCHCvT8YWwTUXJ4obb9P+1kN/Te3NOsNz2wx+arpMGEt3Pk9OixRntm3lQwcLiCWNarfeR1kD3IDDv5WY0EI0Di7cG02TAY67DwLudrd3GVLk5TuNkty0aRFdwbzBjBeCpNAwFubiezQ/+/h0gQMSzkAu7+YVBA11dhqY96YCf4nIb9AgoQiikYTaeSj/ikQL7a3xVU1A/I/v1Giq9r/JyStsR+7WKWIORPJdILOXCnlLTYa/d3T0I34Mzcnpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xHSls6fyYz+XKGT+Eg1/rEIKo00tn+nq92dPt6+6380=;
 b=YBecj9h8M5Xt+q46JUR9mNd2HlamyA5/E+4PEFW9Vib1gFtR8CaSggEQjXqVg6A/Y/KZKsrJg39aOz7a/oghvwE9Lma5aLbGV7b2LvD7KM6A32JCkE1zEFQ4Fonb9UGZ8poiRif+/9q1Nx9WvrpPIYJdcEGBeL4MGNHxV8E9cBVEevH7Qm4E3av2PmVsT8HYUJ65fsc5cBD20ld7HyXYnbwdfR/dOInPTsHuiZVOQYnMPW9/pmyf07KLlTTts8OdSopWWQlewPpCOQCuXlcQ0RuH6HBdah2/maVpbTZQFAnPK2NpnybXkJWAN6nDf7PfJxR54w8NYNDr4iIsD9ZZUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 SJ0PR11MB5938.namprd11.prod.outlook.com (2603:10b6:a03:42d::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.29; Mon, 17 Oct 2022 23:36:24 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd%7]) with mapi id 15.20.5723.033; Mon, 17 Oct 2022
 23:36:24 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Harrison, John C" <john.c.harrison@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/guc: Add error-capture init
 warnings when needed
Thread-Index: AQHY4Epaf0zuGaT42kWe0ZuMvmrykK4S/jeAgABEVAA=
Date: Mon, 17 Oct 2022 23:36:23 +0000
Message-ID: <7f85a6e3702559e2296f284e040c3f52e86a8b7e.camel@intel.com>
References: <20221015035952.1741319-1-alan.previn.teres.alexis@intel.com>
 <20221015035952.1741319-2-alan.previn.teres.alexis@intel.com>
 <549304f2-6f64-fba0-0c2d-da5e4b3a2927@intel.com>
In-Reply-To: <549304f2-6f64-fba0-0c2d-da5e4b3a2927@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|SJ0PR11MB5938:EE_
x-ms-office365-filtering-correlation-id: 5cf74682-dd41-4a82-6de8-08dab098675d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rLpHW8bSe4Itn9h5lsHMbDtbpqUz2ab5OxDDKdpOiAQjd5KLCksiT1BOGsUkY1DvQNAAYmZiQYba7QfITm+Hem2Zfez6o9oNkWpotKpY+Kaoj3J6jjH3a7aJ725Tshq1M3KVW2X84M3seQgfwYIFSQG0kw/bbc4uMHfor43CsCV7zo66hDkHg/dZmb0BtWpoYDXXdpAHywB58+kThGcapr+Jc+ZzBwfT9Z9FaXDZjrbdA4rNngkKmDqlrmZ0EsMqkg0Ij7KOTdDuXu1Q35UZaUhKth/Sfo0jNlZBWdw4hn/3eWxfEjB+iJuO/xGOLxkuf2WPffTwg7IGuMzTlyB/2ayw7LoUkUQ48o6I0IY48TeShxaQo0AavXZKdsAh5FPSFD4kQSPSKFZXXEBrzsyDYUg+XE5qYOpGoCzl3NP0R2kqwqE00t4oD+OQejonmiRCOKhDRvzNx3IjjDTEJjPXTyPM/JuKJbi97ptdfQqwhpr+EeAfLJD1vzDdQd0w1mpMNjv0qzMpf2hs8Qm2fyvahaOBMtT6kgpwqLxarRyMJpEVKVIGIhgOijZ7uUboURc38URrRYDAQmTADZ/xO9XAMb1O0998n8OLoo3sp8UGXJFntOC1X3/PS8eAfKZ3JzoP4E5ngWnM1Owuj/a3PSTM9cpEZMpiCSJZ31bUhiQes+vZafzEI32isf3dK9iPNpv3zmmQCGUzxrY9y8vhwd++TFm9IfwFGIZhjM3aIHu85ltR5OH9c4w+rTDzDoVLtLyNIUW5N5BH51Opg+/YkJE3OA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(366004)(136003)(396003)(376002)(451199015)(36756003)(86362001)(38070700005)(122000001)(38100700002)(82960400001)(4001150100001)(186003)(2906002)(5660300002)(53546011)(6506007)(2616005)(6512007)(26005)(478600001)(83380400001)(6486002)(316002)(71200400001)(110136005)(66476007)(76116006)(91956017)(66946007)(66556008)(64756008)(8676002)(41300700001)(66446008)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VEVQWVB4Mmt0N29EMlVCSXppeTVwL0g4UCt2Ykl4K1RDTU5lSy9OMWlSbkFn?=
 =?utf-8?B?M2x0QmQ2dDlRVHMyTkNnQ2t1Mld1YTUyRmhIOGwyMjBocUpkNmVTK1NDT1BP?=
 =?utf-8?B?aVYvN0lqL0NCN2tHV1dGYWVZWEE1S2dtbWliQ01peXIwOGFKY2ZkRHozTEd0?=
 =?utf-8?B?cVF0bTJmT3pGQXJ3bHc1WXN4angzaGlxTzlKUEMrcFJQcDZVeXJ6bjcrZFor?=
 =?utf-8?B?RnBvcWc4Yzc1dnVjUGhYMmRvcHR0c2dNMVBBeXlJeGN6Q0c3eitxYXRSNm1n?=
 =?utf-8?B?MThjNTU0VlQ0Umc1T1V0RHZzbVMyYzVYbFVoWFhwRm02eVIzNi9rUng4SmVQ?=
 =?utf-8?B?SSthM2tGNnhRMlBsK1ZuZkNuNzk0THpsL3ZSWkx5OGZzRG5UTHJnRitTVVBn?=
 =?utf-8?B?cnJDNGxTUWdVUVdjTjQ2bk1va29FWTE5VW9sZTY5RUJaWFNadUxOeURFOUta?=
 =?utf-8?B?UG5LdGxSZTU3NFJuU0h6aHppNlJjQ1lpYVhLMHZWUFRvMlczMVFDc081b3pz?=
 =?utf-8?B?UUJGSnpaZmltR2N6U0ppdWE4S204U2s2Y1k4MzJSbGtMVENYTkowbmR0aDUv?=
 =?utf-8?B?Q3IxcTRJV1JIUjBhTkdyVnlwZnpncHNvekpEOXd5WDBXbXpuVXBJVU4rQ1Y2?=
 =?utf-8?B?T1VoRUV2TTBGVjJiWldReUhmeERTL01aUmxZdGZldWRkZU5qTkd6azduOXha?=
 =?utf-8?B?RXBBNmpSK1R2MVpsUld0ekdLVVoyRldBTUxjRVZVUlYvVnE4ZDcvdW93SFk3?=
 =?utf-8?B?THlWU0RDL1ZJbTlyME5YVUtMZ09oTUM1TVpibExOSGhqSWhqU3VuR20xRVM0?=
 =?utf-8?B?am56cTNzakJJdCtLWE1aQVRwT3ZLZGlEcWpVN05aUVNRVEdnbWJFRTE3T3Zs?=
 =?utf-8?B?WlVOazd4bjhFZnlqYzZZcE1uUlRIbm5ndENuSHIyNW00clEzNm8vTitLdjFx?=
 =?utf-8?B?UGpNZG1ZdEpWVm5BVnZjUGdwL1QweFNOMmhSOXExcXJlN2lBTFBNU3RoRHEy?=
 =?utf-8?B?eVRCTmxsWDhHdnZKeStXRHJvTnZTUFgvdFFCNVZLb3VBOEJaRXNZUGYxSXdx?=
 =?utf-8?B?UE1nRWpNZi8vQVY3YW1yME5UL3hGT005RVNDaVRIZHlOTHdWSWpDcUhDWnBL?=
 =?utf-8?B?a3ovUjh3Q205SzljdW10TlZ4UmdIL1Y1aWx3YXFnVkhRRytWMUpwaFlJOHVs?=
 =?utf-8?B?QVFoeEovYThkY095RnJsM1JYOG5ZTjZzcUQwVXZTSmlxaHEzOXp0ditRR05H?=
 =?utf-8?B?T1IyRzRpRTRXZU04bFBDemI0VWdpeGlJWnFpVzNHbUFEOGFZb0N2NTJETjBl?=
 =?utf-8?B?MjFJMzhMMHpGYTkzSDdzNmZQSWx5TWFRS2VBM2UvWVdMMDV4NlY1Z2JjdWNY?=
 =?utf-8?B?ME5hVHJpTnk4V0taUWx3eTVjeWpQZlViMHUyRjZFelBRNUlSSWNRc1RhdXJV?=
 =?utf-8?B?RVIwSVZsdHJCSXptcVRheUc0aVZWN2k1Y3d2elh0THY5QWZ5OGYybFliSUZG?=
 =?utf-8?B?c1dkbncwUlp4NncvUU8vbUR5TWJCWWZwTkt1T3VHNjlhOTVBb0JFZlArajVI?=
 =?utf-8?B?ZEh0Z3Nxb0kwZGJzZ2J0MTY1WUlCOFdZakhnZm5FdzBsTzg3Mnk3cWFZcTZo?=
 =?utf-8?B?d1JLMXpRNkwwdW9sVlZpNW8wY3Nzak5iV09CeWR3RW1tS2lER0QvcVZnU29o?=
 =?utf-8?B?ZnZuVXBUaGJVRkJzcEFVWWJkNVJLSFlMSW14QSs4WHJzbHFJYUd4RHR0ODJs?=
 =?utf-8?B?RUVDK2EzeHh2R2tiRnN3SGpJV0IvSDlyMEVtMmNWeGJ4TXQrYm9LUTRCazd3?=
 =?utf-8?B?VFJFSHQwOXF5Mm56SE1zRWhhaGJ2emFkNGlqNzhwZnRaalpZU04rSVhwenpR?=
 =?utf-8?B?ajV2QU9PMmVSczdUNmVpQldPaFQ0eFFjejJBdzhXVzZmSVI3a3NpNitSeXBD?=
 =?utf-8?B?T3R6aDIyU2pvQVp3bDZiSzFha3dOem5wdGlhT3dFQTlZcFNoUEJFUVI1N0Zv?=
 =?utf-8?B?UDB0YVJLRC8vWGs2QS9uWlgySXc4OTBMdTkwdEYyWGNRMUJaWHQ1RmFkUU9n?=
 =?utf-8?B?d0xPWUZaT0FxL1A3aTJNWGZmQmMraFNmeWhhcy9zMDhkMmdZVDJQUTJrUXBw?=
 =?utf-8?B?S2w2TjdROUkwSmovZ0pHdndQeXJhL1JHYW1nbWVXTFJ4dXFXNzBMVCtvTHdy?=
 =?utf-8?Q?ilDhZ66DBCCJ1QgPV3b5LRo=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6D421F6FEF8E134F9F16D10332AEC97B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5cf74682-dd41-4a82-6de8-08dab098675d
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2022 23:36:24.1571 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PhUxo2/fi6HFBYLOVdLjZGinvFIysmPyHTVxYBUfGRyAZvwg/P5Zmc7fLYFbrALs/uBEEQLx4W/uMbH4dNjwoo4kBA8oTaSwBRwC63hJouil8U1z+kvdjarYvKVDGS/c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5938
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/guc: Add error-capture init
 warnings when needed
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

QWdyZWVkIG9uIGFsbCB0aGUgb3RoZXJzIChhcyBwZXIgbXkgb3RoZXIgcmVwbHkgdG8gVHZydGtv
KSwgYnV0IG9uIHRoYXQgMm5kIGxhc3Qgb25lOg0KDQpPbiBNb24sIDIwMjItMTAtMTcgYXQgMTI6
MzMgLTA3MDAsIEhhcnJpc29uLCBKb2huIEMgd3JvdGU6DQo+IE9uIDEwLzE0LzIwMjIgMjA6NTks
IEFsYW4gUHJldmluIHdyb3RlOg0KPiA+IElmIEd1QyBpcyBiZWluZyB1c2VkIGFuZCB3ZSBpbml0
aWFsaXplZCBHdUMtZXJyb3ItY2FwdHVyZSwNCj4gPiB3ZSBuZWVkIHRvIGJlIHdhcm5pbmcgaWYg
d2UgZG9uJ3QgcHJvdmlkZSBhbiBlcnJvci1jYXB0dXJlDQo+ID4gcmVnaXN0ZXIgbGlzdCBpbiB0
aGUgZmlybXdhcmUgQURTLCBmb3IgdmFsaWQgR1QgZW5naW5lcy4NCj4gPiBBIHdhcm5pbmcgbWFr
ZXMgc2Vuc2UgYXMgdGhpcyB3b3VsZCBpbXBhY3QgZGVidWdhYmlsaXR5DQo+ID4gd2l0aG91dCBy
ZWFsaXppbmcgd2h5IGEgcmVnbGlzdCB3YXNuJ3QgcmV0cmlldmVkIGFuZCByZXBvcnRlZA0KPiA+
IGJ5IEd1Qy4NCj4gPiANCj4gPiArCWlmICghZ3VjX2NhcHR1cmVfZ2V0X29uZV9saXN0KGdjLT5y
ZWdsaXN0cywgb3duZXIsIHR5cGUsIGNsYXNzaWQpKSB7DQo+ID4gKwkJaWYgKG93bmVyID09IEdV
Q19DQVBUVVJFX0xJU1RfSU5ERVhfUEYgJiYgdHlwZSA9PSBHVUNfQ0FQVFVSRV9MSVNUX1RZUEVf
R0xPQkFMKQ0KPiA+ICsJCQlkcm1fd2FybigmaTkxNS0+ZHJtLCAiR3VDLWNhcHR1cmU6IG1pc3Np
bmcgcmVnbGlzdCB0eXBlLUdsb2JhbFxuIik7DQo+ID4gKwkJaWYgKG93bmVyID09IEdVQ19DQVBU
VVJFX0xJU1RfSU5ERVhfUEYpDQo+ID4gKwkJCWRybV93YXJuKCZpOTE1LT5kcm0sICJHdUMtY2Fw
dHVyZTogbWlzc2luZyByZWdpaXN0IHR5cGUoJWQpLSVzIDogIg0KPiA+ICsJCQkJICIlcyglZCkt
RW5naW5lXG4iLCB0eXBlLCBfX3N0cmluZ2lmeV90eXBlKHR5cGUpLA0KPiBXaGF0IFR2cnRrbyBp
cyBtZWFuaW5nIGhlcmUgaXMgdG8gbm90IHNwbGl0IHRoZSBzdHJpbmcgYXQgYWxsLiBZb3UgY2Fu
IA0KPiBpZ25vcmUgYSBsaW5lIGxlbmd0aCB3YXJuaW5nIG1lc3NhZ2UgaWYgdGhlIG9ubHkgYWx0
ZXJuYXRpdmVzIGFyZSBlaXRoZXIgDQo+IHRvIHNwbGl0IHRoZSBzdHJpbmcgb3IgdG8gb2JmdXNj
YXRlIHRoZSBjb2RlIHdpdGggdW5yZWFkYWJsZS91bm5lY2Vzc2FyeSANCj4gY29uc3RydWN0aW9u
IG1ldGhvZHMuDQo+IA0KPiANCkkgZG9udCBzZWUgaG93IG5vdCBzcGxpdHRpbmcgdGhlIHN0cmlu
ZyBtYWtlcyB0aGUgZ3JlcCB3b3JrIGFzIHBlciB0aGUgcmVhc29uIFR2cnRrbyB3YXMgYnJpbmdp
bmcgdXAuLi4gYnV0IHN1cmUsLi4NCmlnbm9yaW5nIGEgY2hlY2twYXRjaCBoZXJlIGlzIGZpbmUg
YnkgbWUgLSBhcyBpIGRvIGFncmVlIGhhdmluZyBhIHNpbmdsZSBsaW5lIGlzIGJldHRlciB0byBy
ZWFkLg0KDQouLi5hbGFuDQoNCg==
