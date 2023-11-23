Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 246017F58F4
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 08:16:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51AAF10E07A;
	Thu, 23 Nov 2023 07:16:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E08010E07A
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 07:16:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700723762; x=1732259762;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=V+dUkZo2gEe2vEZKDZG+9NbI8MqQ3YlUHbdXc2ccaXw=;
 b=AqBT8ERAnudT92umzeI/brmztvxjQYio4fNwQKAbYN45fhrs+RtaJ475
 6ouY4w08mjZJur4IFLJdAZO2Z8gqw3tAH7Ma+ZBfXfGfYIictHOLf9Kq6
 D7Ga3vlfiQihEXzKxoLr1nP31NKsqM5dlC3BS9w/alNPI+3an9MJ9BUNP
 zONjox3eSQx18UdIe2Hvv4sBxA18I2SSNviYKVOMXd37Ly1AG1q5ssFrd
 EsK56hnGhAFDeFd7YV4r0Xph8lGJ28AuQ+CIbxsduJroGr9nDxZZNXjOS
 oxsBjl+220ojlizDjku65se0TAE0ENzPwcLbNSXxRUnHm1cObZnlH+kta w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="377236669"
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; d="scan'208";a="377236669"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 23:16:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; 
   d="scan'208";a="8559812"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Nov 2023 23:16:02 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 22 Nov 2023 23:16:01 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 22 Nov 2023 23:16:00 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 22 Nov 2023 23:16:00 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 22 Nov 2023 23:16:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P0bZ4YllJQeaeYTj+Jxq6+WLGPZxcs+gXD5MA3kHVmYQkdCsAtL96ScHkNn2TB0d6KLvyyBevWdKVmOBBWsi9phj1LRayCc9vIGp//QY9xT9TEqrPw6rvq7fg0jYtG9sdcwWUGOVAr2HZtk++oFwcYLjNEIf8VXeTnaRluhumKhf30NxSWfuV3/lu2/wmj0GXzQUIzdOrs7AQn9frDGsdtPoCuah/UPVYVpMd8P4FatjgHllv9pBhLRFeHY7TfBheXORYsZOh2OUxiz5GeDre+FbqZic14RIJvU8OsIcotzOJutT68ekb5DhznACa/f/EeXiqLsswQQlnBYucjHWrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V+dUkZo2gEe2vEZKDZG+9NbI8MqQ3YlUHbdXc2ccaXw=;
 b=STA+i7wBUsWSH4A5HJtsibYxFwZ5P3Su7zhYGK5bws7kKte7IDhka6u9iU8y0U4xwG0cFbu+sgi9AOnWKbb8NASW0C/N+rYMfABGktY64bQOq3xrcPZfbocd/LI1pZmtk3LPGkG4hyvbXcu6yIS2zZAdDzBh3fkJkyjeCYPDKXlmwt3s+OEU+qLKKE5OWtWTd3vz36o5+ycgn1u5HK0FoUISniNRv/1sQOLcBX8IgtMq5/EzjbdaSAbRKyXClAQ8/f99VTcj6vmy77So/OXfBaxjRbebSKzEY+uBgth9pmtpH82Fa7CUOIuqEkFjnOwYJT8aiU7sD0GSNayDRQ6pLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CO1PR11MB4946.namprd11.prod.outlook.com (2603:10b6:303:9e::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7002.28; Thu, 23 Nov 2023 07:15:53 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892%3]) with mapi id 15.20.7025.019; Thu, 23 Nov 2023
 07:15:53 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/4] drm/i915/psr: Include some basic PSR
 information in the state dump
Thread-Index: AQHaHXXGue1zyKP76Ui+xiNtvkBMg7CHftwA
Date: Thu, 23 Nov 2023 07:15:53 +0000
Message-ID: <8927fdf7bd10cc90486f01f0ac214ad64a7d6593.camel@intel.com>
References: <20231122093137.1509-1-ville.syrjala@linux.intel.com>
 <20231122093137.1509-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20231122093137.1509-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CO1PR11MB4946:EE_
x-ms-office365-filtering-correlation-id: 12459522-8efc-4280-2b3d-08dbebf407ac
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wP1+og1+iDyG8VlUyMFUFxg/PNJm+0AmjErONwY2fxlqkkMVYLgYsuJcABtO4/RUbIoegQxerLZxQIbL9T+UDtBVoo1Zrb3g1piIo2JTqQJgoJ2PMQXnjUlYfXMgjhiEkkSs3MdIRLp1Mdb6Bpd2e8ME195Yd57mZ9i6n4XIk0Bgt3HBh054DaMsP2muAM7wV9k8oFXlndYZc8Fxd1BV0OY6e6kZdGeSqaDONFMcfy4K1MiS+ewaq3xANQo68iGBc5o5f2rG7HEnT+p7F+r3F5h2Sy7LiVRQvQsIuKt2e95uP57blXFumyA2/ycaa+jZs+O4CXHXhx+63oOFi0K4uwahtafHiV5J3KXQynYUVEAj31PE9OOFMdi5oQpRPk82owC645/VxjJ/XnzzK04wYDpG/TwcLwYJ+3XAkmWhEVLrkaKh6c0RXFYXTYkDoApVV9h+ybizpToVrs2Vce1kunFW8RRwHmjRh1sx2kfAz6xngdeXF2FBhGinQZkX+qF+uUJeu+rOvtpxnrvdImUgpGjng5g7/N9k0sH8X7EWWDw+Px6QwII0rAczsziyqtznSIM5rtZ6+J7owyrc4LB5q00/8hWT8GpvcxRXrPVVBtJQynxA6iptBUkS3dJ6m3AJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(366004)(396003)(136003)(376002)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(2616005)(38070700009)(82960400001)(86362001)(66556008)(316002)(71200400001)(110136005)(6486002)(36756003)(91956017)(64756008)(66946007)(66476007)(122000001)(66446008)(83380400001)(26005)(66574015)(6512007)(4001150100001)(2906002)(41300700001)(478600001)(6506007)(5660300002)(8676002)(76116006)(8936002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bDdLZmJ1TU04Ky9kc2RrcnhsR2wycEZlODFKbFVPMWQ1RHRHaDl2SEtBQ3lW?=
 =?utf-8?B?N2hoUHdMZFgrNnZCalB1WmFBUDcwdCtBbnE5UHJqWncvb1hxdXVkeEdXRWor?=
 =?utf-8?B?Yjg4WEkya0ZUd1d3QVJXMW1lMnBud080YkEyTk1FVnNnd3cyZGlONHVKUWR0?=
 =?utf-8?B?OEp4ZXRWNWcvRjhHOWFWSWk5S3hBUU5NWmFsU0hLZHEvaTNnQ2ZmQ2xhY3RW?=
 =?utf-8?B?UjVzZWMxWDM4UmRuRy95dEU4Syt2bEV3UEN1bkV3UlNFQUNXZkpPQTlUMGps?=
 =?utf-8?B?SHJ2NnNMQVJ2eDRMVWlLc01RUEhrYTgxTTM0Yy9WNVBicTRscnlsMEZoVnNs?=
 =?utf-8?B?TVNjVVprUFJWczRpUHFzUUV2UDRvZFRRVFpWNnYrV3ZQN3ZKZVBudXBzbU54?=
 =?utf-8?B?L3lLOExQL20wRVhHQ2ZaVDNHMi9SUHpidHRPNVRqODQyeWxaYzFPWWFkNHk5?=
 =?utf-8?B?c3E1NUVDcnlWUVp4MC9hb3hqMmxHY2hoVWdYOU5kM2FaY0h6MHRlRWRlQTFp?=
 =?utf-8?B?QnFCVGRRdUQ3S01VbmtOUU9pSmVxR2Q3K3p1R2c4ejlLQ0N5TElJOXBJN05h?=
 =?utf-8?B?TVNjWUlmbzN3R1JPbmZYc0UvbU1PdW5CQVBJV0dTOWZKMUVoYmMvcWJla3Zz?=
 =?utf-8?B?SkFVNnZTWW1IOE5ldTdlYkFFdVJINjIwbEhEUU1LMmRFQS9wanQ0dmJHb0RL?=
 =?utf-8?B?Zk83eWxoRDZFOGJNaUx5bm9vWTVUYWEzd2RGaG0yaWlURVNoY3JKWGZsVW1C?=
 =?utf-8?B?dTFvWDNLMGtFTFo0ZlNPaG9Ic3RFRkRRVTJ6NnRaYlVLRWttQkx3M1MxTjZp?=
 =?utf-8?B?RmVmRzdsZ2RRQnREUGJSdW1rUVFIRHdnTXgxSVRqSlhEcHVVNnFOSnZ1dXRR?=
 =?utf-8?B?NHNvdm1MWWhHbTZSZGlvU0pYZU0vS2RTNkFrSW5sWTNOSjVPT0pBZVdZZ1N1?=
 =?utf-8?B?Mk1CWHh2NCtrTFFiSkJZYnVuQ1Bxc3lSYkhzV0U4TGNjeVQrWHZIOTYxYVJJ?=
 =?utf-8?B?SmZIL09pRnFacVJkMFZhUis2WGtycU9XYVMxTER0dlNVdFFlU2N0NFRSYXFC?=
 =?utf-8?B?N1lucVdRL1RDdDRuM29tcExkL1RGOHBkVlR5UVZqb285SFIyamdsdDVDcHEw?=
 =?utf-8?B?TFlEYjRacndCK0lpYTdSc09SaThnT2hBNUMrc0VsaEg3b1pwWDVZUG9Zc2Zh?=
 =?utf-8?B?K3lXZWpRZW9iWHUrelF1NEY5WUU2MFZ1YktUbzdNYzVHZ3NJMklseG1zNG5N?=
 =?utf-8?B?UXJhU2hkVFR2OEllbDEvelhMT3NNMHNlc3NFcFZSOGlGVzhKbEp5QVdkdGpP?=
 =?utf-8?B?RHdnbW0zM3Q5OEFXNHRuc3JMN3FRT3VoTTlDK1BWSmZ0NGprN3oyaUhJL05G?=
 =?utf-8?B?OG16TGtrQ1JOZnJ6RXRDN04vMkZKQU9TMjh5OG1EMC96VXBwZlFTS3JweWZP?=
 =?utf-8?B?cW9uWkI3YnpUbVBGNzhsYzB6ano2RXNUNkVRNjEweXhMY3RRRCtKcXF3OU5j?=
 =?utf-8?B?MjNOeTl4Ti9ra21sVHBETnE5VzlqaHl2NVRFRWhuKzlSbFNuQnhpOE4xcDRu?=
 =?utf-8?B?MjN4SVlhNDVqVGU5KzBhbWtPcVYzOE54RlF1bHFMUW1ZSUxUMSsyeU9CYWIx?=
 =?utf-8?B?djZSU3N2L1oxWm1YemxqWVI4cDFZYXc4b3REUnRFZm9jSGVNY1hGOE9zY09E?=
 =?utf-8?B?dW13Mjk3NlI2T01UNEFLV1hXS29qZW1nenQ3OElPcUxUZllJeG11T3c1Y3J6?=
 =?utf-8?B?a1BYMy9iWU56NFpmSzFCYkZOZzF3WTJDbXNVTUdsNkFTMXZIV3BMUXFaZk9G?=
 =?utf-8?B?UnBTTFZpVlNrTU1RNUp4dFlKekxKdG03amhDaFFCcXFXdW54eGNDZVFMTi9U?=
 =?utf-8?B?bTkyZmxlQ0NLOTAyazBmWktBam1kZkw3RTh3a3FzOFlMOHo0UEp4K1NiZmx2?=
 =?utf-8?B?bUVlOXM5SlMwMTRpVVBqRGRQVkZ4aDhRV3NwRWdNalNMeTl3NGVaRm83OG5k?=
 =?utf-8?B?MmNtUkN0d3hLMTRVeUd5UnJZaDZEUlhkS1E2SkRaTU9mcERrQkt1YWdTc3l0?=
 =?utf-8?B?UmFybnpjaE1Mc1J2cWNGNHQzUzdTWnJDQkpGS2JnSXNFYmZTVWltV0NKRTJv?=
 =?utf-8?B?Qzk0T2hDQVRZdlJSNDhQQ0ZnTVBWRitWUzVXU3lxb09DMU81SjNHTlp0Y1px?=
 =?utf-8?B?bnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <941B47074926254CBA75954527863FFF@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12459522-8efc-4280-2b3d-08dbebf407ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2023 07:15:53.6327 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aJgpB/bCwBS3AAtpfnitNHAAwm5IoF/BzsB5lZsj5AUjJuVDIVGW7wxg4CucYqQVj5H9S8oT0KeUZIJ/d29yITIUoRdxyHJiEYQkX04cwOA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4946
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/psr: Include some basic PSR
 information in the state dump
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

T24gV2VkLCAyMDIzLTExLTIyIGF0IDExOjMxICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
Cj4gQ3VycmVudGx5IG5vIG9uZSBjYW4gZmlndXJlIG91dCB3aGF0IHRoZSBQU1IgY29kZSBpcyBk
b2luZyBzaW5jZQo+IHdlJ3JlIGluY2x1ZGluZyBhbnkgb2YgaXQgaW4gdGhlIGJhc2ljIHN0YXRl
IGR1bXAuIEFkZCBhdCBsZWFzdCB0aGUKPiBiYXJlIG1pbmltdW0gdGhlcmUuCj4gCj4gU2lnbmVk
LW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
PiAtLS0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Y19zdGF0ZV9k
dW1wLmMgfCA1ICsrKysrCj4gwqAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Y19zdGF0
ZV9kdW1wLmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Y19zdGF0
ZV9kdW1wLmMKPiBpbmRleCAyZDE1ZTgyYzBiM2QuLjViY2RiZjA4MzI4MSAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGNfc3RhdGVfZHVtcC5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjX3N0YXRlX2R1bXAu
Ywo+IEBAIC0yNjIsNiArMjYyLDExIEBAIHZvaWQgaW50ZWxfY3J0Y19zdGF0ZV9kdW1wKGNvbnN0
IHN0cnVjdAo+IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnLAo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgImZlYzogJXMsIGVuaGFu
Y2VkIGZyYW1pbmc6Cj4gJXNcbiIsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cl9lbmFibGVkX2Rpc2FibGVkKHBpcGVfY29uZmlnLQo+
ID5mZWNfZW5hYmxlKSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgc3RyX2VuYWJsZWRfZGlzYWJsZWQocGlwZV9jb25maWctCj4gPmVuaGFu
Y2VkX2ZyYW1pbmcpKTsKPiArCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9k
Ymdfa21zKCZpOTE1LT5kcm0sICJwc3I6ICVzLCBwc3IyOiAlcywgc2VsZWN0aXZlCj4gZmV0Y2g6
ICVzXG4iLAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHN0cl9lbmFibGVkX2Rpc2FibGVkKHBpcGVfY29uZmlnLQo+ID5oYXNfcHNyKSwKPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJf
ZW5hYmxlZF9kaXNhYmxlZChwaXBlX2NvbmZpZy0KPiA+aGFzX3BzcjIpLAo+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cl9lbmFibGVkX2Rp
c2FibGVkKHBpcGVfY29uZmlnLQo+ID5lbmFibGVfcHNyMl9zZWxfZmV0Y2gpKTsKCk1heWJlIHlv
dSBjb3VsZCBhZGQgcGlwZV9jb25maWctPmhhc19wYW5lbF9yZXBsYXkgaGVyZSBhcyB3ZWxsPwoK
QlIsCgpKb3VuaSBIw7ZnYW5kZXIKIAo+IMKgwqDCoMKgwqDCoMKgwqB9Cj4gwqAKPiDCoMKgwqDC
oMKgwqDCoMKgZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgImZyYW1lc3RhcnQgZGVsYXk6ICVkLCBN
U0EgdGltaW5nCj4gZGVsYXk6ICVkXG4iLAoK
