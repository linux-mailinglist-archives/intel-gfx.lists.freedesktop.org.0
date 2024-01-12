Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD0182BEBF
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 11:52:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85C1210E10D;
	Fri, 12 Jan 2024 10:52:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2B9610E10D
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jan 2024 10:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705056776; x=1736592776;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/zGVAc2OBjpsvW1OGhp5BPi0WV1EFCNqW5DlMziMFIQ=;
 b=bFSu62QAMG7Y3nzsSl6+6KG20E7QX1HoDxosVYayKHYPeH1LI2ybuFLp
 M+ygiE33YaTKRYEin4q/NaDiWR5IlT3lwySpgCLUrnhY4NFqRhwAaam15
 oeWQjpQhT7pekDAqmxXAj4Crg9H0eKsLnW11SLmucHlPde6zW2eJ/93fd
 cTGWWsEVMyhInqpHs1USY6lxcxvgGtRQ1gl8y6PehxBOYLZJPrilOSLiB
 xWmFnK3U06HThwOgnkWrLXDKU4Bv949YpG95kLcDZBVPkSkdCxd1wkleK
 mzbsGTLt0L/9VSeg+LkkAyuYaW17l0GUp8H9FIGOlyc+7xYKjH6w5dcD9 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="6511935"
X-IronPort-AV: E=Sophos;i="6.04,189,1695711600"; 
   d="scan'208";a="6511935"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 02:52:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="775977909"
X-IronPort-AV: E=Sophos;i="6.04,189,1695711600"; d="scan'208";a="775977909"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jan 2024 02:52:55 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Jan 2024 02:52:54 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Jan 2024 02:52:54 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 12 Jan 2024 02:52:54 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 12 Jan 2024 02:52:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FxnKXzVveAlvUWMQsAS3ObR135ZuhfgZv4tYaZaIO54cuI+VNk9Cyaoq4kvcrX3pLCIqYfqFPi4G8Cort6P7RDM5mLkRwbx1GigK5MfT6FNp58Gb8fNn1t1OTdQosReYoh5l3wS1+kYnTOJthrLrGkQMYGlYW/Af689YJi6F3wm5I0vcToXpSDv7y7jODQmLzCZ0mv2ZNITr4IuMjaWYV5CDf6Dll3reC+IthsbefJNX3/FCTwqZqMjbPNZbSKvJxdMHlSVOfq/MjM/fz1cNlq3/Y5V5FLppVr5iSrbKDC6n6Fl1XER3fZgJj6C0m7TCbIXxMFKrKJwqK3w0id6T9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/zGVAc2OBjpsvW1OGhp5BPi0WV1EFCNqW5DlMziMFIQ=;
 b=G0o1/zO3zX10xGKqAvYcYNDzYimPuPbZdqJrNVqyOg9CCED+dGY+ehFdOe51kGc9P1c47BH6AErook/Ng2kBySncIXAdc5DyD341KWzPpoKTjzHP9yONntN7i92+r+YbYrZ53VyCxdKXVH2zrrI4awDXFH5Z3TxI2fBqWD61RXFwRfepSjti5DJSVZpHPK/P2zj+eTCLUSgtwN/ldOo4BmgtvLRuD7zKKejaYOHQcxcNYCdhgFqzEH+9Tqr+nDyo3kTYxmilOK5YuJfPQi/ceb7pCZH9KUCde5CiTMiEP1uQyBq24CU65xTLdQiHWAlPhPrr5ZPaflgs8/4DWU1zXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by MW5PR11MB5859.namprd11.prod.outlook.com (2603:10b6:303:19e::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.21; Fri, 12 Jan
 2024 10:52:51 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::cacc:5b1d:99f1:a74]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::cacc:5b1d:99f1:a74%4]) with mapi id 15.20.7181.019; Fri, 12 Jan 2024
 10:52:51 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v2 04/13] drm/i915/psr: Unify panel replay enable sink
Thread-Topic: [PATCH v2 04/13] drm/i915/psr: Unify panel replay enable sink
Thread-Index: AQHaQ8bcGS99HPV2S0yD4f93IHdwt7DWAnEw
Date: Fri, 12 Jan 2024 10:52:50 +0000
Message-ID: <PH7PR11MB59813BB0C4DA2EE23E11172FF96F2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240110131304.2470006-1-jouni.hogander@intel.com>
 <20240110131304.2470006-5-jouni.hogander@intel.com>
In-Reply-To: <20240110131304.2470006-5-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|MW5PR11MB5859:EE_
x-ms-office365-filtering-correlation-id: 6f3e15d3-8df8-4b82-2875-08dc135c9f3f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: p6Nq9ZfXEyacjBekAaaW3BQHCiXv4kznArJlsoCvYoBrNYNt75vF1grekwyDglh7nfYzEOI0wgJfhdoQqB2+9Sl+48Pp/XJ4bk3ky9kAtjZpuJu3/rb3uwtC38X/ZDJt/jEr37zcmqVBKKA6wylOCISRylkjIU794BppSbbgZKNf7s1sn7AkepYwTMQH9l1Ih6Ev+jCf511+fbVXMEHsSp7PwJQvB4MMOjfkDBX3IAzX4uSyK4oEbAE4OXq829qAx39fQYk3qfk927OT8Jv4xv94ZacgUhmBddDQuH4fU1HmrWGYuyQMD1VLhJj+wyTq/mu8xZhmsWwL9ikEQhVTjLnen+RfBu0cCxpmvW1Mv/kwRxa2ap9+jXS42pxwuCN/p+6eVBVUubYrz5lVN2bqi0wnvp58uYtU/YHazudjBIkt5VI1ecH65AiOZ2jLonAlx2FAgQFGLyuwKME9jFl0U7c6WRCqzFQ12Wu1UNpILbJDyen37vR3WHQgThc0rlKAhorLUsBtT2JUKBJfgQVmrBSVtvoVonlhxdn5pogrbRqxrIeo8nh1Bfl9103To8aESRsk+ZZWhRQauC9YYnmmGb16nNQX6TKYYqna5QvLxUkIPkbSm6xwvCBNpibBJ5I/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(39860400002)(136003)(396003)(366004)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(83380400001)(66574015)(55236004)(9686003)(53546011)(26005)(122000001)(6506007)(38100700002)(52536014)(8676002)(5660300002)(64756008)(66476007)(316002)(110136005)(2906002)(66446008)(7696005)(71200400001)(478600001)(66946007)(8936002)(66556008)(76116006)(41300700001)(33656002)(38070700009)(82960400001)(86362001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RnJGOVl4QTJZeFBrMVc5T2lsQy83djdIS2lkNGVVMkx0SlVlVlRLbG00cmFq?=
 =?utf-8?B?Tzk2V3BNWnlDS0Q4VjJVby9VZTVHMW5ZY1cvUHFseEhQcUJydWJ6RzRJQmJK?=
 =?utf-8?B?eU5mWWV2c3JydTNDOGN4UFlHaWd3OGxsRjAvb2xqclZGcFArY3hYMnhRdk1Z?=
 =?utf-8?B?L3R6QVM5REwyY0l2dHNnOUJwZEVhNUdyR0d2SzA5d2ZvV29Pc2QvY0NpL3lj?=
 =?utf-8?B?bVM2Q1EyTWRQbnp3WXpPU3pRcjZ0WU9MdEhZUTJqVnBidE50ZGtaWjFwRGQx?=
 =?utf-8?B?SndYNWw1OUdCV0RlYjFZSDhVcHkvMGsvZmxLYnhzTGU1MXlpYTNlMnc5M3Bp?=
 =?utf-8?B?MzAxNkFjY3htZEcwRUw2ZzlHQ1NWMmJUVDNUSW1xTndPd09zTSt0ckdYcXZq?=
 =?utf-8?B?ODdTOVZLTVhQVVplVW1sZjZOZXcySVJNeGpnb2xWSTM2N0tLYTIrL2NCb1Yz?=
 =?utf-8?B?bC9nd1VDOVdINUV3ZFpFa0dRY3VTWWtMZS9xWUtVeTdNNlRORG9sOWJRN0RU?=
 =?utf-8?B?QlZJcFRkR043dGpCS0JtNU9wejlOVWU4S1ZpOEZtY3Z2REMraEswbG00aHll?=
 =?utf-8?B?ZzY4OWdWREtBYTA1TUhxWlEwaDJDc0tMOWVXQ21veFpHMmpURnhnOGY4MGM2?=
 =?utf-8?B?c25IRGxYdFU5aUVQT296V0FnRUFHTHh5MFZyQjNCcm5yTVhWMmtYSzF6UHJp?=
 =?utf-8?B?ZGJ4dG5GQzZtVDRUNHJMT25yWGl1UWZoc3ZwWUZvR0M2T2VxSmlMdnlmNDNX?=
 =?utf-8?B?N2o4M0ZDemZheTNyN1NsVUhGSHdCVGNRN0Uwd2FQcFlNOVZOblFCb1dmcnho?=
 =?utf-8?B?bEkrMXFtRTAvdXB4dzJERGJwTHZyTWk2ME1SWVBHTVVnbVE2bVNNMEhZWmtr?=
 =?utf-8?B?bFg0VWxYcGMyY3FKUHljUmJTbXVqZkc1OG1CTm12clZuSEFtVnNoL0lMVHR3?=
 =?utf-8?B?WkhQM0pEaW1SS0ZDZTJzdmlqZlM4UXFkeFp2akVKalRMRWF4UWRTS3U3Rmxr?=
 =?utf-8?B?Wk83OHhTS2ZhQmZWK0R0aHJUWndyeWtNQzVpajlIZFZKM0IvN0V4UXk0dHRm?=
 =?utf-8?B?aEZ1Q1RsZXA3eFY3cVZrM3ZIcUJ6Y1dEeTdIb0pzWUNiMERHVXI5akxRSnBu?=
 =?utf-8?B?V245dWZzdFhOellaOFVmUk5ObW42YlNJY09NcDhYWHk2bFZmRWhtUHlzZlJz?=
 =?utf-8?B?ZlNIemtRUnZRdDJBUnNJaElwT1lUWTFHNGluUnpOUWxLS3Qya28vWlg2bWIw?=
 =?utf-8?B?QWpTNlpCU091dWNrS3psVEp2OXFuMXNOcGtmSlU5blFBb2tzY05FRkN0UmRw?=
 =?utf-8?B?OTM2VlYrSFBLak5lSHJMTCsxcTdvRmF0dGpQU2VFTjRJRmxrcjJCNWJ0bE92?=
 =?utf-8?B?Qjd2eWpnU3V4SDdNdXlPNUg3TjBOYzlMd3RDQ0c4TGtZZHRYUEFUNlc0SXND?=
 =?utf-8?B?THd5TlJXWWtKTjZHOFdxTkxHUDlVL2pkVCtBSGM4L0ozK1JVUFNoVmVhN0R3?=
 =?utf-8?B?ZlFnUmEvZFllcnZIaEFzMXpnWkE0b3FJbyt2Y2RKNVhyMklDdjQrWi9iSSsy?=
 =?utf-8?B?SDZ3dGR3RldsVlRoMStSRkJIOERoZU5lbnhLUWEvVHh1bmVRMUVDL2FrVkdG?=
 =?utf-8?B?RHcyVVlBZHlZb3ZlMDFHc1R3ajdPamd2Uno0d21WWG5oc0NBTzNpeVB5NFBO?=
 =?utf-8?B?aDQyRWMyQlQrR1RSQVlQOXFYMlZ3ZWlLSlAxYTZrRy9WYXpLcVo0YjYyRENH?=
 =?utf-8?B?KzlzMnBDMDZ1OTlTcmZlZm14U29CbCt3ZmpjVElySDgzMEh5b3JPckJvQVhY?=
 =?utf-8?B?NG9vYkR0djAxZ1pyeHdsQnltZ3BIUkx0TVhWcTUxd3VEZDJwQnROZytlZ1BW?=
 =?utf-8?B?TTZ1QjZKNllNK2FhTXR3K1NUQ3FBWnRFOVBESjhLNW9LRnZPcStlTUJmbmRo?=
 =?utf-8?B?R3VaUk5DdlExSThBbzJQdU1SWVVJdHN4bVlBTWdqeWNYVTdrYTBzQzl5THcz?=
 =?utf-8?B?MnRkWmdBdmY5NkhBUGc3SDkvRVFYYmFka1crckx2Y1NqYlpST2tJS29zOTNP?=
 =?utf-8?B?b0F0Rk5LdkdGTVJFeno1K2tSWUlqQ3VIeDNUKytuNXFibUNGb3djNUVBeE9q?=
 =?utf-8?Q?10bGzTZIhMqi53rSP12CJeCZ+?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f3e15d3-8df8-4b82-2875-08dc135c9f3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2024 10:52:50.8948 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lD7dcgzhnyR8hf+QR1RSlBC6dKhV5mEEhWMUvBXO7VcaqudC1tPy5SniJTTj3CS+wTfxeLWIDYvcX1uVBZTZlg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5859
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0K
PiBIw7ZnYW5kZXINCj4gU2VudDogV2VkbmVzZGF5LCBKYW51YXJ5IDEwLCAyMDI0IDY6NDMgUE0N
Cj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENI
IHYyIDA0LzEzXSBkcm0vaTkxNS9wc3I6IFVuaWZ5IHBhbmVsIHJlcGxheSBlbmFibGUgc2luaw0K
PiANCj4gUGFuZWwgcmVwbGF5IGVuYWJsZSBmb3IgYSBzaW5rIGlzIGN1cnJlbnRseSBkb25lIGlu
CQ0KPiBpbnRlbF9kZGkuYzppbnRlbF9kZGlfcHJlX2VuYWJsZV9kcC4gTW92ZSBpdCB0byBpbnRl
bF9wc3JfZW5hYmxlX3NpbmsgdG8NCj4gdW5pZnkgcHNyL3BhbmVsIHJlcGxheSBwYXRocy4gQWxz
byBlbmFibGUgc29tZSBhZGRpdGlvbmFsIGhwZCBpbnRlcnJ1cHRzIGZvcg0KPiBwYW5lbCByZXBs
YXkuDQoNClRoZXJlIGlzIGEgZGlmZmVyZW5jZSBiZXR3ZWVuIHBzciBhbmQgcGFuZWwgcmVwbGF5
IHJlZ2FyZGluZyBzaW5rIGVuYWJsZW1lbnQuDQpGb3IgcGFuZWwgcmVwbGF5IHNpbmsgbmVlZCB0
byBiZSBlbmFibGVkIGJlZm9yZSBsaW5rIHRyYWluaW5nIHdoaWNoIGlzIG5vdCBzYW1lIGZvciBw
c3IuDQoNClJlZ2FyZHMsDQpBbmltZXNoDQoNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjD
tmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCAgNyArLS0tLS0tDQo+IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAxOSArKysrKysrKysrKysrKysrKy0tDQo+
ICAyIGZpbGVzIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0K
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gaW5kZXggOTIy
MTk0Yjk1N2JlLi5kYjJhMDI3ZmM1NWUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuYw0KPiBAQCAtMjgwMCwxNSArMjgwMCwxMCBAQCBzdGF0aWMgdm9pZCBp
bnRlbF9kZGlfcHJlX2VuYWJsZV9kcChzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSwNCj4gIAkJCQkgICAgY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUNCj4gKmNvbm5f
c3RhdGUpICB7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkx
NShlbmNvZGVyLT5iYXNlLmRldik7DQo+IC0Jc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVu
Y190b19pbnRlbF9kcChlbmNvZGVyKTsNCj4gDQo+IC0JaWYgKEhBU19EUDIwKGRldl9wcml2KSkg
ew0KPiArCWlmIChIQVNfRFAyMChkZXZfcHJpdikpDQo+ICAJCWludGVsX2RwXzEyOGIxMzJiX3Nk
cF9jcmMxNihlbmNfdG9faW50ZWxfZHAoZW5jb2RlciksDQo+ICAJCQkJCSAgICBjcnRjX3N0YXRl
KTsNCj4gLQkJaWYgKGNydGNfc3RhdGUtPmhhc19wYW5lbF9yZXBsYXkpDQo+IC0JCQlkcm1fZHBf
ZHBjZF93cml0ZWIoJmludGVsX2RwLT5hdXgsDQo+IFBBTkVMX1JFUExBWV9DT05GSUcsDQo+IC0J
CQkJCSAgIERQX1BBTkVMX1JFUExBWV9FTkFCTEUpOw0KPiAtCX0NCj4gDQo+ICAJaWYgKERJU1BM
QVlfVkVSKGRldl9wcml2KSA+PSAxNCkNCj4gIAkJbXRsX2RkaV9wcmVfZW5hYmxlX2RwKHN0YXRl
LCBlbmNvZGVyLCBjcnRjX3N0YXRlLA0KPiBjb25uX3N0YXRlKTsgZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IGE5NDIxZGQwOTJjNS4uODE1N2ExZWFj
OGMyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
QEAgLTYxOCw2ICs2MTgsMTYgQEAgc3RhdGljIGJvb2wgcHNyMl9zdV9yZWdpb25fZXRfdmFsaWQo
c3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCkNCj4gIAlyZXR1cm4gZmFsc2U7DQo+ICB9DQo+
IA0KPiArc3RhdGljIHVuc2lnbmVkIGludCBpbnRlbF9wc3JfZ2V0X2VuYWJsZV9zaW5rX29mZnNl
dChzdHJ1Y3QgaW50ZWxfZHANCj4gKyppbnRlbF9kcCkgew0KPiArCXJldHVybiBpbnRlbF9kcC0+
cHNyLnBhbmVsX3JlcGxheV9lbmFibGVkID8NCj4gKwkJUEFORUxfUkVQTEFZX0NPTkZJRyA6IERQ
X1BTUl9FTl9DRkc7DQo+ICt9DQo+ICsNCj4gKy8qDQo+ICsgKiBOb3RlOiBNb3N0IG9mIHRoZSBi
aXRzIGFyZSBzYW1lIGluIFBBTkVMX1JFUExBWV9DT05GSUcgYW5kDQo+ICtEUF9QU1JfRU5fQ0ZH
LiBXZQ0KPiArICogYXJlIHJlbHlpbmcgb24gUFNSIGRlZmluaXRpb25zIG9uIHRoZXNlICJjb21t
b24iIGJpdHMuDQo+ICsgKi8NCj4gIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfc2luayhz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKSAgew0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOyBAQCAtDQo+IDY0MywxNSArNjUzLDIw
IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfc2luayhzdHJ1Y3QgaW50ZWxfZHANCj4g
KmludGVsX2RwKQ0KPiAgCQkJZHBjZF92YWwgfD0gRFBfUFNSX0NSQ19WRVJJRklDQVRJT047DQo+
ICAJfQ0KPiANCj4gKwlpZiAoaW50ZWxfZHAtPnBzci5wYW5lbF9yZXBsYXlfZW5hYmxlZCkNCj4g
KwkJZHBjZF92YWwgfD0NCj4gRFBfUEFORUxfUkVQTEFZX1VOUkVDT1ZFUkFCTEVfRVJST1JfRU4g
fA0KPiArCQkJRFBfUEFORUxfUkVQTEFZX1JGQl9TVE9SQUdFX0VSUk9SX0VOOw0KPiArDQo+ICAJ
aWYgKGludGVsX2RwLT5wc3IucmVxX3BzcjJfc2RwX3ByaW9yX3NjYW5saW5lKQ0KPiAgCQlkcGNk
X3ZhbCB8PSBEUF9QU1JfU1VfUkVHSU9OX1NDQU5MSU5FX0NBUFRVUkU7DQo+IA0KPiAgCWlmIChp
bnRlbF9kcC0+cHNyLmVudHJ5X3NldHVwX2ZyYW1lcyA+IDApDQo+ICAJCWRwY2RfdmFsIHw9IERQ
X1BTUl9GUkFNRV9DQVBUVVJFOw0KPiANCj4gLQlkcm1fZHBfZHBjZF93cml0ZWIoJmludGVsX2Rw
LT5hdXgsIERQX1BTUl9FTl9DRkcsIGRwY2RfdmFsKTsNCj4gKwlkcm1fZHBfZHBjZF93cml0ZWIo
JmludGVsX2RwLT5hdXgsDQo+ICtpbnRlbF9wc3JfZ2V0X2VuYWJsZV9zaW5rX29mZnNldChpbnRl
bF9kcCksIGRwY2RfdmFsKTsNCj4gDQo+IC0JZHJtX2RwX2RwY2Rfd3JpdGViKCZpbnRlbF9kcC0+
YXV4LCBEUF9TRVRfUE9XRVIsDQo+IERQX1NFVF9QT1dFUl9EMCk7DQo+ICsJaWYgKGludGVsX2Rw
X2lzX2VkcChpbnRlbF9kcCkpDQo+ICsJCWRybV9kcF9kcGNkX3dyaXRlYigmaW50ZWxfZHAtPmF1
eCwgRFBfU0VUX1BPV0VSLA0KPiBEUF9TRVRfUE9XRVJfRDApOw0KPiAgfQ0KPiANCj4gIHN0YXRp
YyB1MzIgaW50ZWxfcHNyMV9nZXRfdHBfdGltZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0K
PiAtLQ0KPiAyLjM0LjENCg0K
