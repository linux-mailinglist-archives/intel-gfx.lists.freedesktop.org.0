Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C2968945A
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 10:50:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B6C410E4BD;
	Fri,  3 Feb 2023 09:50:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7101710E4C2
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Feb 2023 09:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675417840; x=1706953840;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Igq4oNTTC7Q5hjyggjI/dq4E2qMkWNdcCl4y03PT8Mg=;
 b=YiaGCqVSXzlBJXbdrr6RX8V+JMREvcoBL/Iesq5IU4a1VBr6hLkkajPQ
 t5xxYBdL6S3TlCQal9Zos8i11r1dAY6x95459aLahbsBne7dkQvNekZrY
 F/Nl+hIVoW1GeKJtVssh8/G0QVoGFq8imVJYir3qeMwotg0ma+iu7u6CZ
 Eib2+7+6Uv5zfyG9SgiAJQJ34g7lCoaO9CXR7Cs3PWnwGNGay1yxpEUQ+
 kCA9aNmE+xI5i9oTKWrnnsAypadMrlzv8gYzn9Xulsn9CCq6m4qThP4NR
 /q2F8rVWOhF7csIaWncuJM8iOHbPSqjjdgW14vp23aJhZJ7zVnrGTgG+I g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="391101602"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="391101602"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 01:49:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="698016640"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="698016640"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 03 Feb 2023 01:49:27 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 3 Feb 2023 01:49:26 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 3 Feb 2023 01:49:26 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 3 Feb 2023 01:49:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g325FkEh+R5LDL3ogWOrA6qyWAJXwAY7HlL2fKTrgjZATr+uAMtTatH945Jl+DEdKXbEzE+OKk+4VOwYNx/5volm6SFaxINRTNxQujntLyn/rSprGrmNsswRYFjdDgssfuPG7ESigWE33tSWEVg/NOoLbgh0IbJZ1VssLPiwECe69FX3MjR8dq8Ung8pPCH9cGfvuFfhlfKRqSXxApgFklKLxOepoLDciM64IJiJkPQSTFyiWrOZ5PMbmtkbNy/0lSc0TtiTReHCrucI8qStlt8bGHqSxiWXdt2F/ltA7YLKvND8R3X3ajzgRJ/VWs6VnO0V0LOAgDoKT4xm0CRHrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Igq4oNTTC7Q5hjyggjI/dq4E2qMkWNdcCl4y03PT8Mg=;
 b=NxOEWEgGRYlDqV/sxZvSPVqe7Dandmugyp3Y7lktffUxZQvmb5jNpLnXIUHH3mW9SFf9wqvk3nJf852WJGvL8itxBV1svYq1Fa94PLTbg7v3qm7Rew8ma44reWL3zz0pUCktf4aM/FX3phMMC2iBWoX4N5MAeOol+E6mSkSLW/UgQTy9TGYtMhbxcN4Im+RwHHzhxSQPuGW4vI7FDmwPmnWSRIuIztF7a3U5sArQx2KwkyHTmRJ7NbcgP8Vt6ZlmWavvfZAMw59PNEREYd292hO6DhVH2KB1jZsfGOS3qHOFvOFok7kjCznfLtiUUz776HmddmGQzbYNTnx63uFR8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DS7PR11MB7932.namprd11.prod.outlook.com (2603:10b6:8:e5::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6064.29; Fri, 3 Feb 2023 09:49:19 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::e470:7eba:a68a:78be]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::e470:7eba:a68a:78be%9]) with mapi id 15.20.6064.027; Fri, 3 Feb 2023
 09:49:19 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 01/13] drm/i915/dsb: Define more DSB registers
Thread-Index: AQHZK1pKIBm47mD5SkutrwjseSjkBK69EVqw
Date: Fri, 3 Feb 2023 09:49:19 +0000
Message-ID: <PH7PR11MB59813E5770ADF25B2372B036F9D79@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
 <20230118163040.29808-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20230118163040.29808-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DS7PR11MB7932:EE_
x-ms-office365-filtering-correlation-id: bb81f729-cc30-40e4-abd2-08db05cbebc5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Llx/2s8cX+Zdb7VcsTEEPQx8hxT5oO+FAZBWhi7jeiH4ki+bLSMemqQEgn0cNVnhavSlm26Sxgni/3+raHynhCOYBbXIbcZoXOUkKFiiY8493CQYPcJ7L5KqO3sapyWhG6vbCHwr8SvpgmYVwQE11vJbU/GII2nQaSgXfKD0VVg4hoju9YGDZphbZUZBJh5KaYmMnY0gbo2bqZeLjlNOFp/QFzqTi6EfHaHFbwN1Q2vhb64H23LUbxjk5cTSkLQmCHtCq7vtgXY6dqtm06PJzBEHP/4BZcypEAf1wSl9BzHo3AjO3r8lTnP+DTR7kVui8NDV1DLKQMusyYBjY86ptSm4Fug7XR9x1VqLykIzMVc1wU2ujsn0Qu72ssKdbHofTE6pbiGDWPjMpTvppJENCNKuTaZ8QwAIin32Xd0YOe3io633E0kEbFgb6pWUjcTqJr1DiofN4dZmBdNsMMhN7LXvG9zRox4bTMD0gHHxBON1I3hYBvHqdkR33uzKeNmtnYyQdrvkNIPpnyvePD/PozQp+0p5kxuWsgMkYZ4nqXsulNPDWtWnbQqsbpn9mTywp3klWczeAll+bJkqb7xRjsM91B0meSnF7hO+IR/BL2phzuHkny7PDslYDLL9IShLyuY18grF87Rr96f7Kka7hClZPMtwfXI2m+FqUGz2u1NugJVuQDgrLCU3tcmV7hxxLZarWKy8SaBEZW7TkMGrFA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(376002)(396003)(136003)(366004)(346002)(451199018)(33656002)(66556008)(66476007)(66446008)(478600001)(76116006)(5660300002)(83380400001)(71200400001)(64756008)(66946007)(2906002)(186003)(55016003)(26005)(9686003)(8936002)(41300700001)(38070700005)(82960400001)(122000001)(38100700002)(316002)(110136005)(86362001)(6506007)(7696005)(53546011)(52536014)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TjA2d3hqWWwyZ3IxK3pJcDBueGoxS3JJL0M1Qnd2bDc1VktqSjBOWVNPMHdN?=
 =?utf-8?B?Mk8xbWViZkhlUUlOUnYvUEkxa3plbFA0UmJ6em5pVEpvWlExR3k3L2Q3VmFG?=
 =?utf-8?B?S2RxSkRWYUd1aTROVlM5U1lKK01jVjFyMFVRRmZka2ZSSlVUNnVXOGsrUWsz?=
 =?utf-8?B?aU5YZit4MVBWWDkxUEE0UU5CSUg2dVBOZlN6Mi9rS28veWp2TGNaWC8zdmFB?=
 =?utf-8?B?RGRNWlNpSitLTkR0eCtTVzcwYzNCWlFJWjM3c2pMMytFcjM4eHBBRGZuTjdk?=
 =?utf-8?B?K09FUVpaR0ZWWEZXMDFBS2NqeEdJQkdrc3BTcjV6QytKUkZOMUlVdGZlNi8y?=
 =?utf-8?B?OTJrZDhaMXBTd2V4TVl1WWdDcmRCUGJ3bldmLzhkUXM0Tkdhdm9PcnN1RDZk?=
 =?utf-8?B?U0FZQzV0em0zc2d2YStyR3lxVkJBTGJRK08vR0s5NTRzNFFUbFo4QmgvUURN?=
 =?utf-8?B?TXNEUit2WXJKY2tsRkFDTEJka0tpWnl1SFUxbFVMajlMQ1MxVDczQStNQm1U?=
 =?utf-8?B?aVdlNUkyUEYxZVA5SXNNeEFYWUFTVWV3UlA3MjVyd1BSb1ROdmVCV3JCRzlR?=
 =?utf-8?B?R2MwZGN5eHNUd3c3VHltY0FlV1FQbDdkZWFHRWFvbnFMUlk4Q1FCbzIyZk5v?=
 =?utf-8?B?M2kzaVBMMGpRaUZJUUM0RlQ1VU9IbzNGZkZjR0FtUXVIMGRqNjcwNHI1STgw?=
 =?utf-8?B?VFBneHVMR21jUGl4ZktjZlZZQUR2Q1Q4VU4wdjRTWW90RnlwOVVIam5BbFRY?=
 =?utf-8?B?UU5wRkxEbk9XeVowaWF2cHdCeHFTSFNjWnFpdlkwTTFadWRzR0hXV0dGQ1hE?=
 =?utf-8?B?REI3QTZPSHpHQ1lYakgyWkNNcUl2TUJkcVRFazVpMVdDV0puVFF0VDBxYVpZ?=
 =?utf-8?B?RjJRMDlmNTd1MmIwVjRkUXdxMzRZZHZkeS9MaVNMN1ZKSnNqckYyV2NvWUpq?=
 =?utf-8?B?clJqcWZqUkRKZG1tMnE2blo5Z25zeWlocVliWGRNQnlxNkRiL0VoSU9GUVBh?=
 =?utf-8?B?V2x5aUc2cS9HZSt4Q2xRcHNnQmIwS1lWTVRWK0hXMXZJb2JwMjJDZnd6RlY5?=
 =?utf-8?B?VkNVd0FNU0lsVjVWYVlZRTBqUzh6dVVUdnRQcFN3V1NWb1IrYUNESU5qbjJE?=
 =?utf-8?B?UEFuYWJIajV5K0hLZjBIZE9McUdXcFFTV3h2N3JFcXhrTnFWc3loOVd0b2py?=
 =?utf-8?B?YXZRaHBaWm4vMkNONXpSTTM4UG9XTFJBQzRPMDNJZjE3RGI3dkJnZVI3K0JE?=
 =?utf-8?B?M0xPWlJ3aXYvOElQYThjWmNvL0R6T0N0M2wrU2RPRHFTQkZob1d6U0dLcXU0?=
 =?utf-8?B?aVRtSzBjZjlib3RVWHJ5MXJ0WEwva1NyeXlZa0Q3b0pwbHoxeVhlSTdCQnZM?=
 =?utf-8?B?TlBrTXhTNWxrVE5LNzhZbGdxbXZCRmI4anZIcTI1U2N4VExtYS9xWUpIcjNY?=
 =?utf-8?B?YmthQlpySDJiM2N3K0E4Ky9OcitTdnNXTU1LSlJkOThBNGdPN1BySHNHTDFv?=
 =?utf-8?B?dkFza0RPY3JiTmNHYUlTL1RUdWFtSEZCeHhyQUZlc3NtQW91SzBtT1NWRHJS?=
 =?utf-8?B?QjhJTlJnVGsweEJyRmVicVRxVk5YZ2FKTTY4YjJLeWV1V1hBNENmdUJRU3c1?=
 =?utf-8?B?bzd3QTBQVkwyK2dqOGlWT3Y0YzMwSmlxUXBwTXdSc3hpRGNDejc1R05TUHQr?=
 =?utf-8?B?SUVpdlhIdzVXa0FZN1pieUVmdWQ0YjVTNE1FekhTWEJSSHlaM0dFVnBzR1JS?=
 =?utf-8?B?VFJEV0VIaExuTWpjc1R2Rit3TWloZE5iVi9GQng0Z2w0T3VqQ3VqSGVIcUZ0?=
 =?utf-8?B?QW9rVDRtbWF0VzFQT1hyVC9NblJsQUxxV0lWS3FUbWFrZXpGMHptaGNRS2Zz?=
 =?utf-8?B?UUpMSUhxL2RuTnRWR1lrTkQ3TDE2YTA3NlhYQkxITU1SNjI1eXpkSmM4SG5o?=
 =?utf-8?B?QTNQT21HQ2x0QUVENHJhQzcrVU1EbU0rNVAwSElQc3IyYkxLMnJxWFlSRUpJ?=
 =?utf-8?B?MzF5cjlOWStCckNkNkV3dDNYSWdLOG5zQllaZThMdk1YYU8yUmdDWmlzYTlq?=
 =?utf-8?B?TjJETXY3N3IzbEdsQ0pNd1hibjZTSFl0Nm1ZN2lCRXh6VEVjdThHTjVVVkNY?=
 =?utf-8?Q?MP/JWS0JQbuhibw7yZ4+omzg2?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb81f729-cc30-40e4-abd2-08db05cbebc5
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2023 09:49:19.4532 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9B4ZzdZh1Yhdkcu8kwuHGDqVRi09kfGub3f8Wu2WHTZssMRXf6H/Qdpn4Br7179D9gQNtMfneHcO1lNCgQiOfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7932
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 01/13] drm/i915/dsb: Define more DSB
 registers
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAxOCwgMjAyMyAxMDowMCBQTQ0K
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwt
Z2Z4XSBbUEFUQ0ggMDEvMTNdIGRybS9pOTE1L2RzYjogRGVmaW5lIG1vcmUgRFNCIHJlZ2lzdGVy
cw0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4NCj4gDQo+IEFkZCBkZWZpbml0aW9ucyBmb3IgbW9yZSBEU0IgcmVnaXN0ZXJzLiBMZXNz
IGFubm95aW5nIHNwZWMgdHJhd2xpbmcgd2hlbg0KPiB3b3JraW5nIG9uIHRoZSBEU0IgY29kZS4N
Cj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+DQoNClRoZSByZWdpc3RlciBkZWZpbml0aW9uIGFzIHBlciBic3BlYyBhbmQg
bG9va3MgZ29vZCB0byBtZS4NClNvbWUgZG8gbm90IGhhdmUgYW55IHVzYWdlIGN1cnJlbnRseS4g
TGVhdmluZyBpdCB5b3VyIGRpc2NyZXRpb24gdG8gbWVyZ2UgdGhlIHBhdGNoDQoNClJldmlld2Vk
LWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4gDQoNCj4gLS0tDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIHwgNTAgKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKy0NCj4gLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDQ4IGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggaW5kZXggYmFk
MzZhNjdkODczLi5lYTI3MjJmZGFhNDENCj4gMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aA0KPiBAQCAtODEwNSw4ICs4MTA1LDU0IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgew0KPiAgI2Rl
ZmluZSBEU0JfSEVBRChwaXBlLCBpZCkJCV9NTUlPKERTQlNMX0lOU1RBTkNFKHBpcGUsIGlkKSAr
DQo+IDB4MCkNCj4gICNkZWZpbmUgRFNCX1RBSUwocGlwZSwgaWQpCQlfTU1JTyhEU0JTTF9JTlNU
QU5DRShwaXBlLCBpZCkgKw0KPiAweDQpDQo+ICAjZGVmaW5lIERTQl9DVFJMKHBpcGUsIGlkKQkJ
X01NSU8oRFNCU0xfSU5TVEFOQ0UocGlwZSwgaWQpICsNCj4gMHg4KQ0KPiAtI2RlZmluZSAgIERT
Ql9FTkFCTEUJCQkoMSA8PCAzMSkNCj4gLSNkZWZpbmUgICBEU0JfU1RBVFVTX0JVU1kJCSgxIDw8
IDApDQo+ICsjZGVmaW5lICAgRFNCX0VOQUJMRQkJCVJFR19CSVQoMzEpDQo+ICsjZGVmaW5lICAg
RFNCX0JVRl9SRUlURVJBVEUJCVJFR19CSVQoMjkpDQo+ICsjZGVmaW5lICAgRFNCX1dBSVRfRk9S
X1ZCTEFOSwkJUkVHX0JJVCgyOCkNCj4gKyNkZWZpbmUgICBEU0JfV0FJVF9GT1JfTElORV9JTgkJ
UkVHX0JJVCgyNykNCj4gKyNkZWZpbmUgICBEU0JfSEFMVAkJCVJFR19CSVQoMTYpDQo+ICsjZGVm
aW5lICAgRFNCX05PTl9QT1NURUQJCVJFR19CSVQoOCkNCj4gKyNkZWZpbmUgICBEU0JfU1RBVFVT
X0JVU1kJCVJFR19CSVQoMCkNCj4gKyNkZWZpbmUgRFNCX01NSU9DVFJMKHBpcGUsIGlkKQ0KPiAJ
X01NSU8oRFNCU0xfSU5TVEFOQ0UocGlwZSwgaWQpICsgMHhjKQ0KPiArI2RlZmluZSAgIERTQl9N
TUlPX0RFQURfQ0xPQ0tTX0VOQUJMRQlSRUdfQklUKDMxKQ0KPiArI2RlZmluZSAgIERTQl9NTUlP
X0RFQURfQ0xPQ0tTX0NPVU5UX01BU0sJUkVHX0dFTk1BU0soMTUsIDgpDQo+ICsjZGVmaW5lICAg
RFNCX01NSU9fREVBRF9DTE9DS1NfQ09VTlQoeCkNCj4gCVJFR19GSUVMRF9QUkVQKERTQl9NTUlP
X0RFQURfQ0xPQ0tfQ09VTlRfTUFTSywgKHgpKQ0KPiArI2RlZmluZSAgIERTQl9NTUlPX0NZQ0xF
U19NQVNLCQlSRUdfR0VOTUFTSyg3LCAwKQ0KPiArI2RlZmluZSAgIERTQl9NTUlPX0NZQ0xFUyh4
KQ0KPiAJUkVHX0ZJRUxEX1BSRVAoRFNCX01NSU9fQ1lDTEVTX01BU0ssICh4KSkNCj4gKyNkZWZp
bmUgRFNCX1BPTExGVU5DKHBpcGUsIGlkKQ0KPiAJX01NSU8oRFNCU0xfSU5TVEFOQ0UocGlwZSwg
aWQpICsgMHgxMCkNCj4gKyNkZWZpbmUgICBEU0JfUE9MTF9FTkFCTEUJCVJFR19CSVQoMzEpDQo+
ICsjZGVmaW5lICAgRFNCX1BPTExfV0FJVF9NQVNLCQlSRUdfR0VOTUFTSygzMCwgMjMpDQo+ICsj
ZGVmaW5lICAgRFNCX1BPTExfV0FJVCh4KQ0KPiAJUkVHX0ZJRUxEX1BSRVAoRFNCX1BPTExfV0FJ
VF9NQVNLLCAoeCkpIC8qIHVzZWMgKi8NCj4gKyNkZWZpbmUgICBEU0JfUE9MTF9DT1VOVF9NQVNL
CQlSRUdfR0VOTUFTSygyMiwgMTUpDQo+ICsjZGVmaW5lICAgRFNCX1BPTExfQ09VTlQoeCkNCj4g
CVJFR19GSUVMRF9QUkVQKERTQl9QT0xMX0NPVU5UX01BU0ssICh4KSkNCj4gKyNkZWZpbmUgRFNC
X0RFQlVHKHBpcGUsIGlkKQkJX01NSU8oRFNCU0xfSU5TVEFOQ0UocGlwZSwgaWQpICsNCj4gMHgx
NCkNCj4gKyNkZWZpbmUgRFNCX1BPTExNQVNLKHBpcGUsIGlkKQ0KPiAJX01NSU8oRFNCU0xfSU5T
VEFOQ0UocGlwZSwgaWQpICsgMHgxYykNCj4gKyNkZWZpbmUgRFNCX1NUQVRVUyhwaXBlLCBpZCkJ
CV9NTUlPKERTQlNMX0lOU1RBTkNFKHBpcGUsIGlkKSArDQo+IDB4MjQpDQo+ICsjZGVmaW5lIERT
Ql9JTlRFUlJVUFQocGlwZSwgaWQpDQo+IAlfTU1JTyhEU0JTTF9JTlNUQU5DRShwaXBlLCBpZCkg
KyAweDI4KQ0KPiArI2RlZmluZSAgIERTQl9BVFNfRkFVTFRfSU5UX0VOCQlSRUdfQklUKDIwKQ0K
PiArI2RlZmluZSAgIERTQl9HVFRfRkFVTFRfSU5UX0VOCQlSRUdfQklUKDE5KQ0KPiArI2RlZmlu
ZSAgIERTQl9SU1BUSU1FT1VUX0lOVF9FTgkJUkVHX0JJVCgxOCkNCj4gKyNkZWZpbmUgICBEU0Jf
UE9MTF9FUlJfSU5UX0VOCQlSRUdfQklUKDE3KQ0KPiArI2RlZmluZSAgIERTQl9QUk9HX0lOVF9F
TgkJUkVHX0JJVCgxNikNCj4gKyNkZWZpbmUgICBEU0JfQVRTX0ZBVUxUX0lOVF9TVEFUVVMJUkVH
X0JJVCg0KQ0KPiArI2RlZmluZSAgIERTQl9HVFRfRkFVTFRfSU5UX1NUQVRVUwlSRUdfQklUKDMp
DQo+ICsjZGVmaW5lICAgRFNCX1JTUFRJTUVPVVRfSU5UX1NUQVRVUwlSRUdfQklUKDIpDQo+ICsj
ZGVmaW5lICAgRFNCX1BPTExfRVJSX0lOVF9TVEFUVVMJUkVHX0JJVCgxKQ0KPiArI2RlZmluZSAg
IERTQl9QUk9HX0lOVF9TVEFUVVMJCVJFR19CSVQoMCkNCj4gKyNkZWZpbmUgRFNCX0NVUlJFTlRf
SEVBRChwaXBlLCBpZCkNCj4gCV9NTUlPKERTQlNMX0lOU1RBTkNFKHBpcGUsIGlkKSArIDB4MmMp
DQo+ICsjZGVmaW5lIERTQl9STV9USU1FT1VUKHBpcGUsIGlkKQlfTU1JTyhEU0JTTF9JTlNUQU5D
RShwaXBlLCBpZCkgKw0KPiAweDMwKQ0KPiArI2RlZmluZSAgIERTQl9STV9DTEFJTV9USU1FT1VU
CQlSRUdfQklUKDMxKQ0KPiArI2RlZmluZSAgIERTQl9STV9SRUFEWV9USU1FT1VUCQlSRUdfQklU
KDMwKQ0KPiArI2RlZmluZSAgIERTQl9STV9DTEFJTV9USU1FT1VUX0NPVU5UX01BU0sJUkVHX0dF
Tk1BU0soMjMsDQo+IDE2KQ0KPiArI2RlZmluZSAgIERTQl9STV9DTEFJTV9USU1FT1VUX0NPVU5U
KHgpDQo+IAlSRUdfRklFTERfUFJFUChEU0JfUk1fQ0xBSU1fVElNRU9VVF9DT1VOVF9NQVNLLCAo
eCkpIC8qDQo+IGNsb2NrcyAqLw0KPiArI2RlZmluZSAgIERTQl9STV9SRUFEWV9USU1FT1VUX1ZB
TFVFX01BU0sJUkVHX0dFTk1BU0soMTUsIDApDQo+ICsjZGVmaW5lICAgRFNCX1JNX1JFQURZX1RJ
TUVPVVRfVkFMVUUoeCkNCj4gCVJFR19GSUVMRF9QUkVQKERTQl9STV9SRUFEWV9USU1FT1VUX1ZB
TFVFLCAoeCkpIC8qIHVzZWMgKi8NCj4gKyNkZWZpbmUgRFNCX1JNVElNRU9VVFJFR19DQVBUVVJF
KHBpcGUsIGlkKQ0KPiAJX01NSU8oRFNCU0xfSU5TVEFOQ0UocGlwZSwgaWQpICsgMHgzNCkNCj4g
KyNkZWZpbmUgRFNCX1BNQ1RSTChwaXBlLCBpZCkNCj4gCV9NTUlPKERTQlNMX0lOU1RBTkNFKHBp
cGUsIGlkKSArIDB4MzgpDQo+ICsjZGVmaW5lIERTQl9QTUNUUkxfMihwaXBlLCBpZCkNCj4gCV9N
TUlPKERTQlNMX0lOU1RBTkNFKHBpcGUsIGlkKSArIDB4M2MpDQo+ICsjZGVmaW5lIERTQl9QRl9M
Tl9MT1dFUihwaXBlLCBpZCkJX01NSU8oRFNCU0xfSU5TVEFOQ0UocGlwZSwgaWQpICsNCj4gMHg0
MCkNCj4gKyNkZWZpbmUgRFNCX1BGX0xOX1VQUEVSKHBpcGUsIGlkKQlfTU1JTyhEU0JTTF9JTlNU
QU5DRShwaXBlLCBpZCkgKw0KPiAweDQ0KQ0KPiArI2RlZmluZSBEU0JfQlVGUlBUX0NOVChwaXBl
LCBpZCkJX01NSU8oRFNCU0xfSU5TVEFOQ0UocGlwZSwgaWQpICsNCj4gMHg0OCkNCj4gKyNkZWZp
bmUgRFNCX0NISUNLRU4ocGlwZSwgaWQpDQo+IAlfTU1JTyhEU0JTTF9JTlNUQU5DRShwaXBlLCBp
ZCkgKyAweGYwKQ0KPiANCj4gICNkZWZpbmUgQ0xLUkVRX1BPTElDWQkJCV9NTUlPKDB4MTAxMDM4
KQ0KPiAgI2RlZmluZSAgQ0xLUkVRX1BPTElDWV9NRU1fVVBfT1ZSRAlSRUdfQklUKDEpDQo+IC0t
DQo+IDIuMzguMg0KDQo=
