Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C40578082
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jul 2022 13:19:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AF3DB0867;
	Mon, 18 Jul 2022 11:19:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C437C99C04
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jul 2022 11:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658143138; x=1689679138;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gAUzH19NmC4+PAzBLd0ma5bGEebqCc5RsXd727aseCE=;
 b=SRzxfnX/6Y6yZSkCQe/SivRqAkLDNwbAUlTNfsuEh2OVRgy2CozUZeQ5
 8bBUGwVEndHeTGg9hd1OgSprHWsBSYW6RrROBSioiOhJqlbpCQD1a001s
 2XM7e0RKvOLPIluL0O2oB0/g/hbKgnmn1uCJsTiBP/AueAUubaip2vDF8
 n1ST8amvS7xxYCDxZFWL9DGOc00reeUi3sfTk+FtnS0oAnrSjc2A0QSfN
 aSJtlDrXEb7wnFG06ecigVLCv7T8NiawbQJ+3EKuWzwLgzpTpsuv8yMaw
 MeMZqnw2Hx+U3kUZ9xDHjTpIJMoQjvqQctqR+gh5+zI8BgnuS29k8gfst Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10411"; a="311876673"
X-IronPort-AV: E=Sophos;i="5.92,280,1650956400"; d="scan'208";a="311876673"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 04:18:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,280,1650956400"; d="scan'208";a="739428550"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 18 Jul 2022 04:18:55 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 18 Jul 2022 04:18:55 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 18 Jul 2022 04:18:55 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 18 Jul 2022 04:18:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n+2NfNAgU/teSH5zZx+ZMIl4Q49NPrc2opq3XljOpGBWBRdZhyMyaKq6v4IPzKTcBQAxkeBFKayPs57rCqrzUY8836v/uFd0SpYoewBtV01IEJQ/p4mUCJ0iycWxcI3KGdxf2VVBQP5C5OUO52P+dNPzwWG1nxPVnxXoeLDeeIMlTt1li6SmWU/hoVUxCH0DOorr6g163agHGwpOmBohT4AguD8NLlwBGy5P09I49RTgxx2O2rFciZuT5spOGr20sqtARKfnTzd+fwUo11wj0mJ0yuaAd8yoZYA6c8XdPfx6KKQ2zc8PoNF6yCvt8saOQtIlcygT+cq3hddWMeEEXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gAUzH19NmC4+PAzBLd0ma5bGEebqCc5RsXd727aseCE=;
 b=kZK00siW9531SUKCjdQVSBmUqmwGCTq4FzuGaAyhSX26u6/aU9Sdfibc41KJupuonPZ+JZfFTQaHiNeGO1riUbb1aPqeIabokki0xrbGHTtaWQCt9oPZAf6wzijAiaaYdwcxbTCSYA/yGzk/cbfm490G2jJigL1vfRzUKUbR7OcSX+Oeg5/E7/ApoRiu2UEwM1/rGLkz38ZCpSeo+nlbWAIxr3SW+uDs/2siH6TefCNctR8y810CmmA2rfYUSE80pu3QkC0x/AGRyqjNwrzU+0rX6WrZlFs26P6OwGpWUCcF7Cex8kl8Dcin7qNQ8DLLow3P863lcL36kC3pLCt3gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 CY4PR11MB1271.namprd11.prod.outlook.com (2603:10b6:903:2f::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5438.14; Mon, 18 Jul 2022 11:18:53 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5438.023; Mon, 18 Jul 2022
 11:18:52 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915/dp: wait on timeout before retry
Thread-Index: AQHYihUZPHLEMAc+r0ePHJMTS3iqA61t2dsAgABx0ICAFdAiwA==
Date: Mon, 18 Jul 2022 11:18:52 +0000
Message-ID: <DM6PR11MB3177D9828A0FEBB8668DD2DCBA8C9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220627105939.657782-1-arun.r.murthy@intel.com>
 <20220704072352.1331682-1-arun.r.murthy@intel.com>
 <YsL1Afbj7Mxx/0aF@intel.com>
In-Reply-To: <YsL1Afbj7Mxx/0aF@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 365ebcac-dfcf-4594-a869-08da68af4bb9
x-ms-traffictypediagnostic: CY4PR11MB1271:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: S2Sbxfzgi2kcsNcvBx/ojdvbJ6kkRI841Wx//123fF01xFz1/Ujptw+Dr/KuW2Od18yXYBfGUQXwX2Zyp1FLMy8XAZ+waqlIs1U82j+uuCS70REoY9bqecU565Xd/wtJpEfWkRBkTn3F9XiKftrAv8iwrPFxZ4eGbFT4CJIjObjSrw/WR3dLV+sHp0TNSbJa1CSKFyTaLi6a7iH5EHRTy92SeEc+xt51LQk+LEQzxOmuHmFSvSqkwkXV3XjWKik2byZb1IaIr/Q+6+2doOKuXlhM+j57OcHE9SDU14jZD0Bao+Bl4iOGd851oDZQu8llFxeGllYm38b6Fw8uZOPWC8626uuQXjCc0TvcItuzA+6qYxrlgrbTG+4uApgszSCrSymDaIGwKAiyHxdyHd5ozCeEesHpNUzJ22opREzjQzPmDJF+QtOe+IuxtybS9yJAS2p6pN+ch+g0o5QJtExDyFZkpV+cNe6QphAPICDwbuQgwOZmibOqf6BQyTyjAIT66tJXbRoO8N1Yp/6DP9F3SXjXGy/FGW5zySa7LoPsHk1CaIFnIwG08+h+P1WQV7kVlWN7vuoII1dDJ8xPG6HkKl6IIsXaC7pr5RFhfIQEX56rCjT6CnBzSi+YvFHLVSTeGnzWK91aEhKnc1OF7UZvz0Cb+BB9lERyisPvQWb+mE1qp59ZOfGcsEvWSCU1ShCzhtGVkeGLZXEpmyzfMpHUonyN6Bz0EupYGgGik5PfwR1rq4KFUX35PadTYsaYIMo6z+AO1Rbkjjzj0ysvqGHspVNgH2Ex3bSzSL8qiqfVzAo+zGYL/1CPbnngZp5xAOdG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(366004)(136003)(346002)(376002)(396003)(33656002)(5660300002)(52536014)(55016003)(8936002)(2906002)(6916009)(54906003)(86362001)(66574015)(316002)(66476007)(4326008)(76116006)(66556008)(8676002)(66446008)(53546011)(122000001)(7696005)(478600001)(26005)(9686003)(6506007)(71200400001)(55236004)(83380400001)(38100700002)(186003)(82960400001)(64756008)(38070700005)(41300700001)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V0dBd3ZFOWV5WXNYOS9yTjFJbjVOa3FLS0dBdWpQZi9OVVY2OXRVeFNld0dK?=
 =?utf-8?B?SVRxai93azhudmtvcW5JK1AwdGFWTjlMYnA4VlczdEVxbzZKV2Zmc1UvZ0tn?=
 =?utf-8?B?dGJBd2Q3YlVma2VrSjVzeXhjL3RsaVNFV2k1cy8xa0ZRRVV4VmlROWJGQ3JF?=
 =?utf-8?B?V01wSzFmdXJnTS9HUDR5UndtWFh5QnN5OTlXSEIrbUhtd2lYNzBZWXZrQ08r?=
 =?utf-8?B?OFZvZE1SZVp4VzAvVHkwaWVyNk9sdGR3bjNEWCtScmFZaG1jeVEyajRRL1Ni?=
 =?utf-8?B?REp0eDBFWEZOSHlEeHVQSFRtRWVZbEcyZTBIODFOU0podEdQWURJUDlRaklF?=
 =?utf-8?B?bEhIZERNWi9SLzNOZE5XaFU5MzFtdFF4R0ZmUi9WdjYzaU85Uk5JY29LcWdk?=
 =?utf-8?B?eFFtc2QwTzRIb1p6eXI5aVA5ZUI3TzZPb1FHYTRhNndMM0l5NTFDaDZ6NUhM?=
 =?utf-8?B?azlwbS9qbU9KWjBCamZaczByTXVEYVlkdW1BVzFVdEEvVUdVNHFkV05wdXpz?=
 =?utf-8?B?MGpUZkM4MEtpTTU5ZWplOG5JaURrZjhrK3ZNbVFsdGE4WDZQREpWTjZOd0Y0?=
 =?utf-8?B?UXpxdFNrM3VkR2xDc0M1WkNqalF0YThON3N0Y2JHSThsekcrSUUwM2dzQ21n?=
 =?utf-8?B?aWk0MXgyblNRb2Z2YnQzSG1ZQnFXd1lNN2dpcjZlNWhhWCs5cEZ2YlQ1Z0dv?=
 =?utf-8?B?VS9RL0Nqemo0QmNFaVZUTDhZU1d5WFNHa1ZPWGdaU0VjK2l1NTVoaVoxUCtw?=
 =?utf-8?B?STA1MWczbFhKcGd2ZkNZM21oNUNJQmh0YVo0clo4T09iVGpGcjVQMGNMRXpW?=
 =?utf-8?B?VXViZkNOWkdQK3JDVE5iTC8wNmx5VDVCRGgrMEE1MXNOYXVuTVBKZzdWeHBI?=
 =?utf-8?B?RXBLN2pycGhwVlJrOHdpU0pHSlkvNXNzcGZPL0NhdEtnZUtOMGtNV25waFZh?=
 =?utf-8?B?cUk0Wk1WQ0RGOFF6LzMyTWc1OGVac2JHSTRKbjhSU0xyNThKbnB5c0RVRDk0?=
 =?utf-8?B?ZjlQMXhiSE0vOWk2RXRzQW1nZ2ppWHlhSzZyL09hYms2Z1E2a3dDQXZuU2dO?=
 =?utf-8?B?OGNjU2J4QlJucjZBNkxHMHFBMzYvMkN4U0FlNzZuK2pXZ2FGbFlZSHNVcTM3?=
 =?utf-8?B?M2R5MjEvNzZHeEhoSlRTNEw3M29mYlQrMmVhK2ljYlF1cEZZMU5GYnF5aWhH?=
 =?utf-8?B?aW9XVjJjUDF4VUtBR01WV001SFZEL3h6ZmZ1SFhOV05idERNeURtUWQ5Y0g5?=
 =?utf-8?B?a0VQbzRXdHNpVGgxU1ZoeEVpOXhRdDU3bTQ3WWtUVFgrN1JjWDRKRzMrKzZJ?=
 =?utf-8?B?K0paSGhFVDBvbHFtSUw5MS9sYmM3alA4OXl3SnpOTmRxZU84ZFRNV2hRY3ZE?=
 =?utf-8?B?MGQ4Z1lxelhzZDQyT3dEeEY3bGl1QkhvTUVmU0xRb2RBZkdXM3YvRjNDMmtQ?=
 =?utf-8?B?c3JrMXd0dzNYaGZFWlRSOHp1ZDg3MjVwcjdmZDVRZ0Qvb1RPR25oWGw3VkJH?=
 =?utf-8?B?UDV5YnVRTTdCZGwyeTAzQjBJOGozemdIYmY4ZnUvZW9yd3ZscDVnckh5Rk45?=
 =?utf-8?B?dVJ0NnpXQ1JPT2hNendiWk9hWHZ6Y0JyZnVwUklXSWNWaXpzcHlxVjhIMEN5?=
 =?utf-8?B?UlJGeWd4Z1BrbE1UL2ZCMWV5R0hNTlhBN3JMWTd4NEVZRVpkVG5MOEVqYVRG?=
 =?utf-8?B?cHVTclZMaTdYSC8rYUZSS0JiVW9HcFAvWXFISzltdzlZZ0p0RG1vZHltSWRp?=
 =?utf-8?B?aFI3bGFlcTU3SEtHR0FNU3hLMWxvUk5zeUUvODlnQlp0L3dud3V3K1hHbEtK?=
 =?utf-8?B?Q3JYbzFzRFUwdERMaXZqWURBUjdocVFQalQ5UDBySEdPejA2K0l1RHNOdUhn?=
 =?utf-8?B?MmlFbkdwWm44d2tZNldUcFhWc3VlMDU0L3lBOUZLODV4VTVUYk5lODl3MW13?=
 =?utf-8?B?V0NWVTNsaUQwdjBvUCtYQXQrcjJQWDR6RjJnVGlpSnp2Nko1bDU1QVVRMWpW?=
 =?utf-8?B?ZUk4ZDBxK3hRYU5TZjlUeVF0MDUwUjFhcVR1VWxQV1hYMmdrZWZZM01WNWJE?=
 =?utf-8?B?VnBkdXBDcmN5UUJkZDNqV3ROYVpKdnlWcnpXb1QzQ3VKSy9lc2duOXdpemxq?=
 =?utf-8?Q?TbAg6dDSEM7M3is9YuHCHQxtK?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 365ebcac-dfcf-4594-a869-08da68af4bb9
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2022 11:18:52.4745 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nw0Le/3SeMogHrbrOmikzSIgscDe4aE9b6H5bNdjmNVzDHU9XP2ikx5sMCNZjoVDjTR7qRQFCN5pXR4mz01R2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1271
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: wait on timeout before retry
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
Cc: "tprevite@gmail.com" <tprevite@gmail.com>, "Nikula,
 Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Zanoni,
 Paulo R" <paulo.r.zanoni@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBNb25kYXksIEp1bHkgNCwgMjAy
MiA3OjQxIFBNDQo+IFRvOiBNdXJ0aHksIEFydW4gUiA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+
DQo+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBaYW5vbmksIFBhdWxvIFIN
Cj4gPHBhdWxvLnIuemFub25pQGludGVsLmNvbT47IHRwcmV2aXRlQGdtYWlsLmNvbTsgU2hhbmth
ciwgVW1hDQo+IDx1bWEuc2hhbmthckBpbnRlbC5jb20+OyBOaWt1bGEsIEphbmkgPGphbmkubmlr
dWxhQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSF0gZHJtL2k5MTUvZHA6IHdhaXQg
b24gdGltZW91dCBiZWZvcmUgcmV0cnkNCj4gDQo+IE9uIE1vbiwgSnVsIDA0LCAyMDIyIGF0IDEy
OjUzOjUyUE0gKzA1MzAsIEFydW4gUiBNdXJ0aHkgd3JvdGU6DQo+ID4gT24gbGlua3RyYWluaW5n
IGVycm9yL3RpbWVvdXQgYmVmb3JlIHJldHJ5IG5lZWQgdG8gd2FpdCBmb3IgNDAwdXNlYyBhcw0K
PiA+IHBlciB0aGUgRFAgQ1RTIHNwZWMxLjINCj4gDQo+IHMvQ1RTLy8NCj4gDQo+ID4gVW5kZXIg
c2VjdGlvbiAyLjcuMiBBVVggVHJhbnNhY3Rpb24gUmVzcG9uc2UvUmVwbHkgVGltZS1vdXRzIEFV
WA0KPiA+IFJlcGxpZXIgKHRoZSB1UGFja2V0IFJYKSBtdXN0IHN0YXJ0IHNlbmRpbmcgdGhlIHJl
cGx5IGJhY2sgdG8gdGhlIEFVWA0KPiA+IHJlcXVlc3RlciAodGhlIHVQYWNrZXQgVFgpIHdpdGhp
biB0aGUgcmVzcG9uc2UgcGVyaW9kIG9mIDMwMM68cy4gVGhlDQo+ID4gdGltZXIgZm9yIFJlc3Bv
bnNlIFRpbWUtb3V0IHN0YXJ0cyB0aWNraW5nIGFmdGVyIHRoZSB1UGFja2V0IFJYIGhhcw0KPiA+
IGZpbmlzaGVkIHJlY2VpdmluZyB0aGUgQVVYIFNUT1AgY29uZGl0aW9uIHdoaWNoIGVuZHMgdGhl
IEFVWCBSZXF1ZXN0DQo+IHRyYW5zYWN0aW9uLg0KPiA+IFRoZSB0aW1lciBpcyByZXNldCBlaXRo
ZXIgd2hlbiB0aGUgUmVzcG9uc2UgVGltZS1vdXQgcGVyaW9kIGhhcw0KPiA+IGVsYXBzZWQgb3Ig
d2hlbiB0aGUgdVBhY2tldCBSWCBoYXMgc3RhcnRlZCB0byBzZW5kIHRoZSBBVVggU3luYw0KPiA+
IHBhdHRlcm4gKHdoaWNoIGZvbGxvd3MNCj4gPiAxMCB0byAxNiBhY3RpdmUgcHJlLWNoYXJnZSBw
dWxzZXMpIGZvciB0aGUgUmVwbHkgdHJhbnNhY3Rpb24uIElmIHRoZQ0KPiA+IHVQYWNrZXQgVFgg
ZG9lcyBub3QgcmVjZWl2ZSBhIHJlcGx5IGZyb20gdGhlIHVQYWNrZXQgUlggaXQgbXVzdCB3YWl0
DQo+ID4gZm9yIGEgUmVwbHkgVGltZS1vdXQgcGVyaW9kIG9mIDQwMHVzIGJlZm9yZSBpbml0aWF0
aW5nIHRoZSBuZXh0IEFVWA0KPiA+IFJlcXVlc3QgdHJhbnNhY3Rpb24uIFRoZSB0aW1lciBmb3Ig
dGhlIFJlcGx5IFRpbWUtb3V0IHN0YXJ0cyB0aWNraW5nDQo+ID4gYWZ0ZXIgdGhlIHVQYWNrZXQg
VFggaGFzIGZpbmlzaGVkIHNlbmRpbmcgdGhlIEFVWCBTVE9QIGNvbmRpdGlvbi4NCj4gPg0KPiA+
IFRoZSBwYXRjaCB3aXRoIGNvbW1pdCA3NGViZjI5NGExZGQgKCJkcm0vaTkxNTogQWRkIGEgZGVs
YXkgaW4NCj4gPiBEaXNwbGF5cG9ydCBBVVggdHJhbnNhY3Rpb25zIGZvciBjb21wbGlhbmNlIHRl
c3RpbmciKSByZW1vdmVzIHRoaXMNCj4gPiBkZWxheSBtZW50aW9uaW5nIHRoZSBoYXJkd2FyZSBh
bHJlYWR5IG1lZXRzIHRoaXMgcmVxdWlyZW1lbnQsIGJ1dCBhcw0KPiA+IHBlciB0aGUgc3BlYyB0
aGUgZGVsYXkgbWVudGlvbmVkIGluIHRoZSBzcGVjIHNwZWNpZmllcyBob3cgbG9uZyB0bw0KPiA+
IHdhaXQgZm9yIHRoZSByZWNlaXZlciByZXNwb25zZSBiZWZvcmUgdGltZW91dC4gU28gdGhlIGRl
bGF5IGhlcmUgdG8NCj4gPiB3YWl0IGZvciB0aW1lb3V0IGFuZCBub3QgYSBkZWxheSBhZnRlciB0
aW1lb3V0LiBUaGUgRFAgc3BlYyBzcGVjaWZpZXMNCj4gPiBhIGRlbGF5IGFmdGVyIHRpbWVvdXQg
YW5kIGhlbmNlIGFkZGluZyB0aGlzIGRlbGF5Lg0KPiANCj4gTm90IHN1cmUgd2hhdCB5b3UncmUg
c2F5aW5nIGhlcmUuIFRoZSBzcGVjIHN0YXRlcyB0aGUgcmVwbHkgdGltZW91dCBzaG91bGQNCj4g
c3RhcnQgY291bnRpbmcgb25jZSB0aGUgVFggaGFzIHNlbnQgdGhlIEFVWCBTVE9QLCBhbmQgZ2V0
cyByZXNldCB3aGVuIHRoZQ0KPiByZXBseSBBVVggU1lOQyBpcyBkZXRlY3RlZC4NCj4gDQo+IElm
IHRoYXQgZG9lc24ndCBtYXRjaCB3aGF0IHRoZSBoYXJkd2FyZSBpcyBkb2luZyB0aGVuIHdlIHJl
YWxseSBuZWVkIHRvIGdldA0KPiBic3BlYyB1cGRhdGVkIHRvIHNheSB3aGF0IGlzIGFjdHVhbGx5
IGhhcHBlbmluZy4NCj4gDQo+IE9oLCBhbmQgdGhlIHJlcGx5IHRpbWVvdXQgaGFzIGJlZW4gaW5j
cmVhc2VkIHRvIDMuMm1zIGluIGxhdGVyIHJldmlzaW9ucyBvZg0KPiB0aGUgc3BlYyB0byBkZWFs
IHdpdGggTFRUUFJzLiBXZSBzaG91bGQgYWRqdXN0IHRoZSBjb2RlIHRvIG1hdGNoLg0KPiANCldp
bGwgdGFrZSB0aGlzIHNlcGFyYXRlbHkhDQoNClRoYW5rcyBhbmQgUmVnYXJkcywNCkFydW4gUiBN
dXJ0aHkNCi0tLS0tLS0tLS0tLS0tLS0tLS0tDQo=
