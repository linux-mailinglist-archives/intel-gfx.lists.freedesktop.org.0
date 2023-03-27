Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF256CA448
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 14:43:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42E3E10E59F;
	Mon, 27 Mar 2023 12:43:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0146910E59F
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 12:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679921027; x=1711457027;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=O08nV64UOD3Y9YEdO3w93rwiTxYuWnY0TzRwyuRx8l4=;
 b=kT3JO/xws3xtS9IArEM6odhOwIWHk6qaOIhPXKMCH3zXN1Eg1xaFyHVt
 NVn10RcHjr3wnsBMLtZl2RQ+b9gXzEaEghxpIAt2t7bEkgYZSEQKtlRSr
 X4KNOFT39DsE2HXujrpvODtxHcCJ4zM3e/vxhrA6mODrYXamgsKu2PMdM
 P0sLDCiiSrAc7TLMEs4bjBazS912/1TrbAYZJLUQXIGahPtDMBlaVHHHl
 oK9taPbBEHHqRqElhQq90WkBOJ60IuGxiu7jO4gIA4ehpSeF1EFRzMuBO
 lBlm5XiONyHbNO/IYCJZ71mJfQk4ezW5nTNBilCBCTr3PlKN9AmRMc22h Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="328688026"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="328688026"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 05:43:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="929445700"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="929445700"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 27 Mar 2023 05:43:43 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 05:43:41 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 27 Mar 2023 05:43:41 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 27 Mar 2023 05:43:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cr71bVaKAsRWJvG3mz7MrlcWNc3g+GrCKiaqcH2YOoYIgVW14dqhLNNVyC8ji4GW3Hi6eVVawlNlaCKidxfoG63r9arx6rABcW2cwOf5GlsDnJZO4A2Uu35lEC8467k/XglKeckUfwIn9kYQcYiPSoTple4vyRvQgoufuBF4jBsavPETFfC5cLA+vKpXVXDVzmVpoNWENDUugaFieCm3z/NcNafJSEF/9EaJXXBgfWztGwK0oAoJcmoOpkpgBPQWzRmoXKi0Dwk8WFDaF3MWjUF6KsfygyMPos+Q2Ym1VYXCKL+e+2gCLamIksXe/yIHFzvwKKE6PeH5Bfdq+mudpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O08nV64UOD3Y9YEdO3w93rwiTxYuWnY0TzRwyuRx8l4=;
 b=kGZsCuDKT7mZIK4NtK5G09BOeoX31DzXO0SWbIG3IqAxfN7uW0rkw9kRm7sQykCIPVk6EsRQVYVvfMWhI1Z3jUnLis4GGRAjJgaOX/wcT0xcBQ5zAYb8K8RrXEUQY/CkfCqT+YpCP+WJV6z0q+NEiiFKxnCEa62nNoIxZH6dmNwW2Nfgzkh+NdaePZiRJvrfiF6sN/I9jmQcQh4Mjj87oDyDvowtCWyILhLdvwkwSkifmCvjg9vRxy6UJ/JVcg6x/DpJTx9kpGJHbiDhnf946sWmQcNQecZcGi35rd8PVvM8DWjbz0XgH8rQHnFFCkJL6CEwLBPqmn2PlyvB2yRFeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by CH3PR11MB7819.namprd11.prod.outlook.com (2603:10b6:610:125::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.38; Mon, 27 Mar
 2023 12:43:38 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b%6]) with mapi id 15.20.6178.041; Mon, 27 Mar 2023
 12:43:38 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 23/29] drm/i915/tc: Get power ref for reading
 the HPD live status register
Thread-Index: AQHZXZLMJgG0Pvyg+keQyqNvDryV4q8OmEbg
Date: Mon, 27 Mar 2023 12:43:38 +0000
Message-ID: <MW4PR11MB70548C327D78F63548A904B4EF8B9@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
 <20230323142035.1432621-24-imre.deak@intel.com>
In-Reply-To: <20230323142035.1432621-24-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|CH3PR11MB7819:EE_
x-ms-office365-filtering-correlation-id: b74e15cd-d34f-4d72-c9a5-08db2ec0e346
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P2kvWZbFLDCHYxhFxb8Urx5qHruaWkADTk4XX1ruy6jhgueVCRMWsch5xvtcETAoo35fSLB3LoeTgGMB5/cVUgNdEXuxWRnyrLHtKYurKemeTD5LhYs2Yt6RjZUmI9J2mj/lds/tkZG/GUfDaQXW8ouhCPHzQo3lpXChgPN4pnxbD9ArsEDKswd57oJYdZQnwoYb3uPDUwo9DZQ+w0jbu7oyI0RLSUQvJyujojCMQOkDHVh78J87CEl8ElQHDH+3u4hHl3MCFr7k5NHb/Vj4hTgRCEh4dqUNv0Wxft7hgYY+z4eMW51p4bgR39PEwYeKPjLB+jozATZ+R1q9t48HuH8C2qwe5xJaOse+sILwLP3UAjj0xuUNQF7rIRyUd+5QdJ5GgRKp4pINhnci96Yh9Ko+LNs3b3Aak3L3y6nZSWP4GcLBZhQ85xhyWQb4lA5Vx0p3CLp33P+Sh/6miGaUejmL6lfZf+1KyHk2pn29OVskwa0j65SLPt4hmO3t3Ckx3JecKzLM9tNbLJkBNqqNvEq15OFWvFY4L63/Ah2E0egM6ZcRrBJ4QKA03JpOI/nEiUQQ6w2zaeRZsZrLMBWIiALBlZXmGxV/NzdYbYhdi9dhMsRT5T9X1Y9cwlsZ397f
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(346002)(39860400002)(366004)(376002)(451199021)(82960400001)(33656002)(38070700005)(83380400001)(8676002)(38100700002)(66946007)(7696005)(86362001)(2906002)(26005)(478600001)(122000001)(64756008)(71200400001)(316002)(186003)(66446008)(8936002)(55016003)(66476007)(52536014)(41300700001)(5660300002)(6506007)(53546011)(9686003)(66556008)(110136005)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dVp6SytpS3JuMFRyWlMxRUN2bWYyT3BUN2M5cGhYbjJhSlZtaFhwdXNlbWhF?=
 =?utf-8?B?bkYvMjVHRFZYaFVneGJKN2w1ckJlL2RIeHBOMG0wOHFNbzZKYk9ta2JOV2dx?=
 =?utf-8?B?MjJxSW1HbTJZTFRaeEFGOTZEcUZVYTJBWWRiR0JMY04ydHUyNkhnUUh2bzNV?=
 =?utf-8?B?ZkpmVy9uYlpZelZ0NW9Ya1R5U1VNMEhLbnlJZ0RmMEJzUlVjNzViNVp6Mzdk?=
 =?utf-8?B?ZUFPd3RiM2JMeE5TeS9jTzhFLzRPRVNWSFYxRnpNNUtnTE9GanI5NWRqMElh?=
 =?utf-8?B?L2Z1ZWJYaG1QVExENFlhYWJWRkUzZ0lBT0ZlK2R3OWp4WlYyc1JZZTF6YmZB?=
 =?utf-8?B?bzRMN2NOT3YyRXhlK2NMM1lhM0JpVzhINllkek9BaW1iU0tSeWlJZE52MG1O?=
 =?utf-8?B?NFVJdTBycU1xdUd6ZnVnTEFXRmtjMDhVMGJDU1M5aFNqMy8xS25STVF4b1hF?=
 =?utf-8?B?eW5hcU1QV3MzdVVIVVBsM1hRTkFzVkU3VzFvS1ZLQk5TVmlQZ21wU1RoYStZ?=
 =?utf-8?B?WjgzZFJnNmRKVVo3bWNJU2d1UmxzMUlaNFpIbUhiUUFpUFIvbDFldGZFdExL?=
 =?utf-8?B?dHVZblhvRHdqOGduanBteGIycXBxSXJkekROUms3TEVWajhjWVFuNUJVZFc4?=
 =?utf-8?B?QkI2KzY2WnFkZS93K1VSR25SNHNEYTg5TzVsWW1NakVoTGlCRlZVaytkanZo?=
 =?utf-8?B?aWZwWVg5cXhIK3VZOTNoQnNpbGNCWVBycVdabm9ncys2VjZkWENFT29lRVJw?=
 =?utf-8?B?WkJLTWNsb3pKTkd2OWNtWVdMOEZZaTkybnJPaWpiaiswUk5BcDJhMUdDOGdL?=
 =?utf-8?B?MW41MWFYclB2M1VqcXUvYTZMVno4bFBXeStqUEttd2FwVm9ZcW8zOTJINFds?=
 =?utf-8?B?OEpRb3dxZGY4SVhLbHhIWDRSZDFwNWFzcm1hYjZIREsvTjYvRjh0NmVWenBi?=
 =?utf-8?B?M3cxNmtvZzgyWG01UUJVdm9oN0pXTmNYR2llQlA3anFIY2hsU1l0dExwNUFJ?=
 =?utf-8?B?UUJKS1JrQUhXSmovQWZVTHY4VWNDVkNCRm9UWm45eVk5WTJ6dHV3c2U0Smh1?=
 =?utf-8?B?U2F2RFBoczNVbXBoYVVaSmlzVUVaWVVZRnhoQmdGZXgvbDNFdW8wNVJRYWVk?=
 =?utf-8?B?d0ZZbWdPS2NTNmxtbU1MNzlzaDVxd3VlTTB5YlBMS2ROWDFjTXNtR3NwZ1Iy?=
 =?utf-8?B?RXFuRHl5R3ppdVVzcEdzKzY5L2dScUJLaG43RlVMcTNMTnE4dU1TQ0NBM2o5?=
 =?utf-8?B?bHBiR28xb09MdlJOc2xkMWxPRXZ4Mk1SZVN3NkdWOXNaQkY1SjFjWW90MmlT?=
 =?utf-8?B?ZHU2OGJBaE9FY3V4WTdTQzV5NXlDaXpVMU1aNUpUSmp5RWltODZzK0hYRHZF?=
 =?utf-8?B?WmFMNDRtSXRhZ2EvbTlqVXBQNW1kaEUwYnRLRDNVNzI1dUxNMGcxaEZjNUVF?=
 =?utf-8?B?aG11V0hJdjh1SE1weUJ1QU9JT2tDY3Vzd2RDOGp4a0ZRTGxKSDY1ZFNObU5L?=
 =?utf-8?B?RHpqVThmQk05UlZBdm9Xb001NHVIdEJlSTRZdmphWkhiRmxhdDRLbzF3Qkxx?=
 =?utf-8?B?aFVRQXhSRkN0dzJBcmVKTkZTamMyRXdEaTFvMWR6M2hWMEZKRS9aeFhZYlhI?=
 =?utf-8?B?aWljNiswQjRnTTB6WVdIcStGdHpyQ1BPalN1UitFd043SWxGOEVGWXQ2dGIv?=
 =?utf-8?B?bUtJWlM2b0VZTHJzR1FIRDNhRmNLQ2hpc3BJSGV2M281TEF4WStUM3JhQm8r?=
 =?utf-8?B?SFVGSjRGTTFHNVFJYVgzNnJRdGc5OHRlN2duVGc4c000c283ejVEa3JaTkZG?=
 =?utf-8?B?QjloeUdCR3dhQVpsVGt1MTVhK2FHVFZTN1kwb2UrT2g3VGhuaXV3WVZjVUlQ?=
 =?utf-8?B?TkNvQjczc25WdVZQS1JKclUvTmw3RjBrUWM3eXpzaWpRajVXSldjcDB0YUow?=
 =?utf-8?B?TmVKTHVFOUplOFRoRU5kSzB5L2xMdzc5aHBZNWJrRDBFZ0tueUZ5NmYxSTRl?=
 =?utf-8?B?MjFiRFRUWnNTaUlIOGRaVytsbzNOSWY1dzV3MTREU1hVbHZMRVhxdm5OVDhm?=
 =?utf-8?B?NG5vdmwzdWlScXhDNG5oOUhKbVp2L3lOKzVhd253dnFycHVUV04xNnY0MXNS?=
 =?utf-8?Q?Q7sV3WCaYCPAZZceNuakKjyQJ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b74e15cd-d34f-4d72-c9a5-08db2ec0e346
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2023 12:43:38.4098 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BQoavolYEiR7v1Cs8t24lRX49Gu2B+c5Da/uWaxXBEMuJZsvvTk/qdJoIdDieO1M+2F55MAgW8pQamHaDLzqxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7819
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 23/29] drm/i915/tc: Get power ref for
 reading the HPD live status register
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
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUNCj4gRGVh
aw0KPiBTZW50OiBUaHVyc2RheSwgTWFyY2ggMjMsIDIwMjMgNDoyMCBQTQ0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
MjMvMjldIGRybS9pOTE1L3RjOiBHZXQgcG93ZXIgcmVmIGZvciByZWFkaW5nIHRoZQ0KPiBIUEQg
bGl2ZSBzdGF0dXMgcmVnaXN0ZXINCj4gDQo+IEVuYWJsZSB0aGUgcG93ZXIgcmVxdWlyZWQgZm9y
IHRoZSBIUEQgbGl2ZSBzdGF0dXMgcmVnaXN0ZXIgYWNjZXNzIGluc3RlYWQgb2YNCj4gZGVwZW5k
aW5nIG9uIHRoZSBjYWxsZXIgYmxvY2tpbmcgdGhlIFRDLWNvbGQgcG93ZXIgc3RhdGUgKGR1cmlu
ZyBIVyByZWFkb3V0DQo+IGFuZCBjb25uZWN0b3IgcHJvYmluZykuDQo+IA0KPiBBIGZvbGxvdyB1
cCBwYXRjaCB3aWxsIHJlbW92ZSBjb25uZWN0aW5nL2Rpc2Nvbm5lY3RpbmcgdGhlIFBIWSBhcm91
bmQNCj4gY29ubmVjdG9yIHByb2JpbmcsIHNvIHF1ZXJ5aW5nIHRoZSBIUEQgc3RhdHVzIGNhbiBo
YXBwZW4gaW4gdGhpcyBjYXNlIHdpdGhvdXQNCj4gVEMtY29sZCBiZWluZyBibG9ja2VkLg0KPiAN
Cg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4g
U2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyB8IDI3ICsrKysrKysrKysr
KysrKysrLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCA4IGRl
bGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdGMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMu
Yw0KPiBpbmRleCAzMTIyZjdjZThjOWEwLi4wOGEyM2FiMDgxZDc0IDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+IEBAIC00MTEsMjQgKzQxMSwyOSBAQCBz
dGF0aWMgdTMyIGljbF90Y19waHlfaHBkX2xpdmVfc3RhdHVzKHN0cnVjdA0KPiBpbnRlbF90Y19w
b3J0ICp0YykNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRjX3RvX2k5MTUo
dGMpOw0KPiAgCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0gdGMtPmRpZ19w
b3J0Ow0KPiAgCXUzMiBpc3JfYml0ID0gaTkxNS0+ZGlzcGxheS5ob3RwbHVnLnBjaF9ocGRbZGln
X3BvcnQtPmJhc2UuaHBkX3Bpbl07DQo+ICsJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7DQo+ICsJ
dTMyIGZpYV9pc3I7DQo+ICsJdTMyIHBjaF9pc3I7DQo+ICAJdTMyIG1hc2sgPSAwOw0KPiAtCXUz
MiB2YWw7DQo+IA0KPiAtCXZhbCA9IGludGVsX2RlX3JlYWQoaTkxNSwgUE9SVF9UWF9ERkxFWERQ
U1AodGMtPnBoeV9maWEpKTsNCj4gKwl3aXRoX2ludGVsX2Rpc3BsYXlfcG93ZXIoaTkxNSwgdGNf
cGh5X2NvbGRfb2ZmX2RvbWFpbih0YyksIHdha2VyZWYpIHsNCj4gKwkJZmlhX2lzciA9IGludGVs
X2RlX3JlYWQoaTkxNSwgUE9SVF9UWF9ERkxFWERQU1AodGMtDQo+ID5waHlfZmlhKSk7DQo+ICsJ
CXBjaF9pc3IgPSBpbnRlbF9kZV9yZWFkKGk5MTUsIFNERUlTUik7DQo+ICsJfQ0KPiANCj4gLQlp
ZiAodmFsID09IDB4ZmZmZmZmZmYpIHsNCj4gKwlpZiAoZmlhX2lzciA9PSAweGZmZmZmZmZmKSB7
DQo+ICAJCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sDQo+ICAJCQkgICAgIlBvcnQgJXM6IFBIWSBp
biBUQ0NPTEQsIG5vdGhpbmcgY29ubmVjdGVkXG4iLA0KPiAgCQkJICAgIHRjLT5wb3J0X25hbWUp
Ow0KPiAgCQlyZXR1cm4gbWFzazsNCj4gIAl9DQo+IA0KPiAtCWlmICh2YWwgJiBUQ19MSVZFX1NU
QVRFX1RCVCh0Yy0+cGh5X2ZpYV9pZHgpKQ0KPiArCWlmIChmaWFfaXNyICYgVENfTElWRV9TVEFU
RV9UQlQodGMtPnBoeV9maWFfaWR4KSkNCj4gIAkJbWFzayB8PSBCSVQoVENfUE9SVF9UQlRfQUxU
KTsNCj4gLQlpZiAodmFsICYgVENfTElWRV9TVEFURV9UQyh0Yy0+cGh5X2ZpYV9pZHgpKQ0KPiAr
CWlmIChmaWFfaXNyICYgVENfTElWRV9TVEFURV9UQyh0Yy0+cGh5X2ZpYV9pZHgpKQ0KPiAgCQlt
YXNrIHw9IEJJVChUQ19QT1JUX0RQX0FMVCk7DQo+IA0KPiAtCWlmIChpbnRlbF9kZV9yZWFkKGk5
MTUsIFNERUlTUikgJiBpc3JfYml0KQ0KPiArCWlmIChwY2hfaXNyICYgaXNyX2JpdCkNCj4gIAkJ
bWFzayB8PSBCSVQoVENfUE9SVF9MRUdBQ1kpOw0KPiANCj4gIAlyZXR1cm4gbWFzazsNCj4gQEAg
LTY5MSwxNiArNjk2LDIyIEBAIHN0YXRpYyB1MzIgYWRscF90Y19waHlfaHBkX2xpdmVfc3RhdHVz
KHN0cnVjdA0KPiBpbnRlbF90Y19wb3J0ICp0YykNCj4gIAllbnVtIGhwZF9waW4gaHBkX3BpbiA9
IGRpZ19wb3J0LT5iYXNlLmhwZF9waW47DQo+ICAJdTMyIGNwdV9pc3JfYml0cyA9IGk5MTUtPmRp
c3BsYXkuaG90cGx1Zy5ocGRbaHBkX3Bpbl07DQo+ICAJdTMyIHBjaF9pc3JfYml0ID0gaTkxNS0+
ZGlzcGxheS5ob3RwbHVnLnBjaF9ocGRbaHBkX3Bpbl07DQo+ICsJaW50ZWxfd2FrZXJlZl90IHdh
a2VyZWY7DQo+ICAJdTMyIGNwdV9pc3I7DQo+ICsJdTMyIHBjaF9pc3I7DQo+ICAJdTMyIG1hc2sg
PSAwOw0KPiANCj4gLQljcHVfaXNyID0gaW50ZWxfZGVfcmVhZChpOTE1LCBHRU4xMV9ERV9IUERf
SVNSKTsNCj4gKwl3aXRoX2ludGVsX2Rpc3BsYXlfcG93ZXIoaTkxNSwgUE9XRVJfRE9NQUlOX0RJ
U1BMQVlfQ09SRSwNCj4gd2FrZXJlZikgew0KPiArCQljcHVfaXNyID0gaW50ZWxfZGVfcmVhZChp
OTE1LCBHRU4xMV9ERV9IUERfSVNSKTsNCj4gKwkJcGNoX2lzciA9IGludGVsX2RlX3JlYWQoaTkx
NSwgU0RFSVNSKTsNCj4gKwl9DQo+ICsNCj4gIAlpZiAoY3B1X2lzciAmIChjcHVfaXNyX2JpdHMg
JiBHRU4xMV9ERV9UQ19IT1RQTFVHX01BU0spKQ0KPiAgCQltYXNrIHw9IEJJVChUQ19QT1JUX0RQ
X0FMVCk7DQo+ICAJaWYgKGNwdV9pc3IgJiAoY3B1X2lzcl9iaXRzICYgR0VOMTFfREVfVEJUX0hP
VFBMVUdfTUFTSykpDQo+ICAJCW1hc2sgfD0gQklUKFRDX1BPUlRfVEJUX0FMVCk7DQo+IA0KPiAt
CWlmIChpbnRlbF9kZV9yZWFkKGk5MTUsIFNERUlTUikgJiBwY2hfaXNyX2JpdCkNCj4gKwlpZiAo
cGNoX2lzciAmIHBjaF9pc3JfYml0KQ0KPiAgCQltYXNrIHw9IEJJVChUQ19QT1JUX0xFR0FDWSk7
DQo+IA0KPiAgCXJldHVybiBtYXNrOw0KPiAtLQ0KPiAyLjM3LjENCg0K
