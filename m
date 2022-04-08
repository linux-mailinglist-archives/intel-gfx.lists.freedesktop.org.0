Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9FB4F9BE5
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 19:41:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0184510E45D;
	Fri,  8 Apr 2022 17:41:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 077D610E45D
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Apr 2022 17:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649439706; x=1680975706;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=YUD9shNPypJucNeeizVu+JmLM2ZW3+PJdETn6Lcs2Bc=;
 b=cjAAW5ZbXwb9p+vbeWBzf1v1y1dA5EHtzEDpwWVTo+2h1Q/fxhbNKbTL
 b0r+/FCoJcI0txMjQaGxvS9BCsywDicTxmSQsXpiFALgLwlGg3bJxctSz
 QrzGRb9k3B49ILp2kiV3Zz788Zn9q6lwFunoTcvtwMedMjVjM1v2j0mvU
 1L9mJsjyW0XvzqUcVse8AyMJOL/pViPxxl8Yoo3DgEkfDO+TDCd2jP596
 ElbzyZjYaSS9+BJAxzz8/jcUz8y3TcXaxu1JX9azodFSy+ar4JFEyhT+J
 iPQLsIp8ct++TC038xSbBIA9l4zQsQkqa9LGOp6yTuHMg62s5FwY+m8bM g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="241587901"
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="241587901"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 10:41:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="589303297"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 08 Apr 2022 10:41:45 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 8 Apr 2022 10:41:44 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 8 Apr 2022 10:41:44 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 8 Apr 2022 10:41:44 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 8 Apr 2022 10:41:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jvqblzQi0C5IREoGZmOvTCnKV9jJLj5caCi5kHYkJWrK+aEGTnmT1XGHM5KqDo64HmSyY+eKeyE0niJ1ZXZuBXHdoDQHu0se/o2N1xR+lXvs/bOB77NCHrCPGoikCqvUzB21Wk0XykmLBAPw/JykUBY98wLCkLsujfUgS08Dn5GbKSDkBFzBgyDp8YtE07Z4GsWJV2nTcqs4P+dUZhqYuYQepJI4W6NmXQegvd3WZkjttgrT2pXQH25sQLJDVkpklLU9cbTcy6JNYHWC4WFS/vWzD4Zq5pZ+VywNFzM82+VVpb28GX82DvHKcXFqSc/Ykz8ibqLnfAE2OPnEAcD8Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YUD9shNPypJucNeeizVu+JmLM2ZW3+PJdETn6Lcs2Bc=;
 b=fbpUQHXo/ffqfdTfHa3qp9J2ns7A44LCKFuxCwGB0fPXsPe2in7foMAesJnrFw/CFnljkLvYcsn2gXP/wuQFhJ4Qu/8FkXxh/o/jJChi2wK3jpgd4dO9R4Xbc0D5ugtteYXpySPrqIhmGPIGj6Gu6PRtgxVlaqn2XAXU8VD2H7mB106LvbuFBO4aRwbUb1bmnMS1HXfHU8OWKWLZlokiBQOz9aAHMNJabtnhbEKI/lJK1Cq5p8ekQaxKa9dEE7qL5c/Cd/4zAgNtcXFdONGyaxeeWzfRWumuCPq1smwvj6OWHIUxkfoSLSM/aNG1c05JEPo7Ds8BkPs6OrhwNdlfgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by BN6PR11MB0051.namprd11.prod.outlook.com (2603:10b6:405:65::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.31; Fri, 8 Apr
 2022 17:41:41 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ddc3:c37d:9541:9b7c]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ddc3:c37d:9541:9b7c%8]) with mapi id 15.20.5144.027; Fri, 8 Apr 2022
 17:41:40 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/2] drm/i915: Swap ret and status returned from
 skl_pcode_request
Thread-Index: AQHYS0dcCTfwQIBW9kuP+Z5a3BNy5azmST6A
Date: Fri, 8 Apr 2022 17:41:40 +0000
Message-ID: <09b12ae4ba960d1a92142aed738748ea3be18e8a.camel@intel.com>
References: <20220408125200.9069-1-stanislav.lisovskiy@intel.com>
 <20220408125200.9069-3-stanislav.lisovskiy@intel.com>
In-Reply-To: <20220408125200.9069-3-stanislav.lisovskiy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fb1b917e-0f1c-4162-2c19-08da198709d0
x-ms-traffictypediagnostic: BN6PR11MB0051:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN6PR11MB0051F6248451CF5B6D24F358F6E99@BN6PR11MB0051.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4A88dFfRocRyv+slSf/WiWXNDBbqLyh8f5xiLBwxk47vGROnwNgKMihs4yfmawx/5MYxX00foqH5iNxSV7YEU8o6bgMhrcQaeRXRAIwykaOtwste90VXLPDrvXru8VYs5ytiX7vvSJed16slaZ8kVJPofdjMd+ZF9vFd49D6vHPWsI8ntdIrzqOcQ64zukrCaBMzWa0JE3evx9AUirpSJxVXmpJvZt6dmK14H46OeRdOcSTkPv8WZAvNq1d18S1M9mrAHHuyedUFUzSd9jc3BSdc5btjvQn3P8XbuXkqZNwofPhe3E79FhxM7EsccsCmy++BpRcYal2yt/ACs8d3RFD5SvF+vRRq6cDQMO57O2Eqg4QKQEcoJNeRWn5WHhPP0IvtonH+JqeUf6j4oTIInz/6DUTeWWmHqVc5W5JWRuGxGqFZ5ZiYUPySptPY0oA7vCIbNS34TZFKlxWyUBUT62Vt69cv2s7pHL7hTfsMii5Rry4VNeUoGs9zYkkDN+h7y9udlEWV7rO60VpVs0dCdqoTmWnVBXMr+PaDONeZPF5jbsspid02Rtw6fh5KE1BfIo7sJqG3Hs1/RCaL2Csicf0s7/jU9ZQExYGxXLvFp4QSEDoNydjfX0a3XA/3Tng67wSE8raKm/YE6IDksAYWefH3bE1XT0/1Gh6IODZTjOvjIvEGQYgMAcF3MclL0AfZTJKJUc/Lbcb0RDVrZcg2cA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(2616005)(26005)(186003)(6506007)(6512007)(83380400001)(86362001)(2906002)(91956017)(64756008)(66446008)(66476007)(66556008)(66946007)(76116006)(8936002)(316002)(8676002)(4326008)(36756003)(6486002)(508600001)(71200400001)(54906003)(110136005)(5660300002)(122000001)(38100700002)(82960400001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UnpwVTRaVFFjZzFsWjIxRWVYZy9YRXRZa0FYMytvZW8zUHc4ZHBPL05Jck1S?=
 =?utf-8?B?Q0NOWEROMFNCNDRPODkrem1XcmlOV3JpdWZRL08wYjhMVWdwOGw5QTg1cFVS?=
 =?utf-8?B?eFE3TTQ2NDBocWgzSlo1a1JGN3dPYjVvSWNDUmNPczFmd3hZN1ZZRXBJMHlO?=
 =?utf-8?B?S1NPNDU2WHFlRTgxamJpa0F6ekFmU0x2SDhqZk9BVVdVb1BWUTYzK3lZdW40?=
 =?utf-8?B?VkZhdFZvVEp6YnhTa3hTMjBXZzVna1lvTzhTTWJueE8vMnRlK3pza2xlcjhE?=
 =?utf-8?B?MjlxUWMySDNadURKUGhteCtvTXdrS3hLNkc2WFY3MW1veTJZTTlDVVBiVUpV?=
 =?utf-8?B?NHZGbDVFc1I0NCtsaTZQaDN2QTRCNHZ0aitra1BLSm1vYXdZMUxvZldKUXUz?=
 =?utf-8?B?ZXBtcUNZTTZGVWovNWI1Vk40WllUazdZcFBRK0NmVE1zV2hJQ0R2ZWEwN1Bh?=
 =?utf-8?B?UCt2QTA1d1V3L2dJOTNJSCtZZHUvbjJVSXNmeFQ2MFVZOXNneEhoUkQzRnBz?=
 =?utf-8?B?akdCalpPR3U0L2cyTktWNVI2MUx2RzBUSU5ONjBXallpZGtGbjlkaEZTenhI?=
 =?utf-8?B?bEQ4cnJabHk4VWplWTM2TmpHTDZmQVZXalc5U1pyR0g3REVleUxwSUxBMDhC?=
 =?utf-8?B?WkpFb0RPUlZVNzV0Z01yNGtZelBSeTJ6UWxHb3I1V1U5azFnaGc2eXFqQWEr?=
 =?utf-8?B?dlZHMjVHWDBBdml0RGJiVGVyN08rTnlOQlNrTlcvajNCTVZHbGpDNkxrSG0y?=
 =?utf-8?B?VUtEczZRMk4velY5M3I3VVNjRDN4S3ZWdnMxZ0xjbVRSUFczTEh6WGRxWjU1?=
 =?utf-8?B?VXhTTTdsN2JKenRscklqTkNxbDBtL3JaV0s0QjhmZ3NEc3dqdEFnVUF1azNM?=
 =?utf-8?B?L0ZhdFBDb000d1M5aE1tL0FzTGFmaGpyOTRhbzhKRDBWR2VmYnVsc3Arektn?=
 =?utf-8?B?bUhVUHd3U2cxclBLVEovTGMyNk04NUVoakdHdThDc29HUytmWHRvSHpVQ2gx?=
 =?utf-8?B?dWJpSzM2bHI0b0x1bG1vWVhJSjRBY3JFdzRWV3ZFajhyYXphNnJMdWFqSG82?=
 =?utf-8?B?UDU3Zzh3T21OY0RkMUhFWmpubFdvdHc3Q3QxRitJTmtVRzNzU0hibWUzZDFZ?=
 =?utf-8?B?S2RwbGQrTy9lU2p0UUp0bjg4WWxhZmZLb2hGc1VDcGlrdFdGdTU0VTJNNms1?=
 =?utf-8?B?RFdnRWsxa2NSNXBxNm1GcUVuUmlkbXM5SUp5ZlhoN0s2N1B5N00xMThGakp0?=
 =?utf-8?B?cnhyL1NKM01jd3FmNDVIOW0yZE5tcHhMTnhRQUhaT2FEYkU0NUg0U0IyZUo3?=
 =?utf-8?B?c2JhdzZ3RE56Z3paL1ZNNmZlUysxbjk2WFhNdy9vcFk0RElQVkJmVHFETDA0?=
 =?utf-8?B?SzR2OEgvWkVJb0hRTnRYcmRKRHZhMTNjank3REVOVFJFbVhrc2lLVk45OUhp?=
 =?utf-8?B?dWtaQW00UFlyR0F5NTRqSzd3RlBZYWN2bHdBS2RyanEyVlhsUDJqRVhkSW1R?=
 =?utf-8?B?bDNWTytZVnc2bkpjZ0czVDJqVitPd1NYMFdlTzZPdXJ2NHhSci9lVGJUaGxu?=
 =?utf-8?B?YjFBSDFxTzNTWTUxUS91dDdsYXh3M1J0ZVRlWVNWRXpSUEtGZVNSSXQ3R251?=
 =?utf-8?B?cC83MDZmMy9Rbks5cHd4VGxDZDdway9pbkQ0N2ZseFhGN0hnMzVrL2d6S2FQ?=
 =?utf-8?B?TnRVc2xhdDBwaWRHVFc0WnhIR2pOR1M4bHoyTEtFa2JUbVRKTk9ZR0c2azZW?=
 =?utf-8?B?UFp5dU55Y2lwNm1XWFh1OXcwb25wYlBFeU1PRTNra3RKRkN1S1Y0NFZIUjZy?=
 =?utf-8?B?YkFWd2svL1R2Um9sNGd0alg1bWxZVTVqbmx0OUh5cW4xTG5scTJoMzc2dlhM?=
 =?utf-8?B?WTRhMzdldnByZWFGVEZmNS9sNitaN1dSZ2djYy9SUk83dlZGSG5Ka0VXTTds?=
 =?utf-8?B?MGZXZkhOL0x4dGcxSitSTjg1U0MvYjR4RVkvdXlPY3VEbWI5OHF1VnR0K0J0?=
 =?utf-8?B?a2R4bVN4RXZwSEVrUzJYQzk1eis2TFJheGhJTGpWU096N1BhRWEzK0lzY09O?=
 =?utf-8?B?cnNpR3pwZTlZQ0I0bnpxNnJaMVNoZm5IdnZiUHkrd0dld1dQdTQ0bXNpNHgy?=
 =?utf-8?B?RWFQTXJ6NkREVUx3am5wc1NyOTl2R2U4eTZOMVRaRjJPQm4yWERSU0p6dEJ0?=
 =?utf-8?B?R3o2U1F5MG82eU9hM0tzbUo2bVZ5YjY5VHZocDRDS0s4QXlQbGhzWFBsL2Vz?=
 =?utf-8?B?b05vVHgybSs3Zks3Tm0vbVltV0kreDVSVzZNUFFLd2UzcENsUjA3Vnh4OFB2?=
 =?utf-8?B?MzB0YXdzK1l5QzU4YmFwNks0V2ZnSXZqeEd6NG1yK0VtTGRFMHdCa0pVUzdp?=
 =?utf-8?Q?az/37gnQtoHd+9GS+Wt7+mf3YEA4XK0HtVpdr?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <017EE956494846479E48CF4E42EA3C62@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb1b917e-0f1c-4162-2c19-08da198709d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2022 17:41:40.1246 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NENGtNlwfYSRDnOMNB4jWK5moBNYeXTNoFW4jZETyinC96zYYPeIBVe1K8oqQ52Qxa1jW7kkGU7lgNLrofHE4iLl9X5LqeI/BkKzMRR7U2Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB0051
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Swap ret and status returned
 from skl_pcode_request
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

T24gRnJpLCAyMDIyLTA0LTA4IGF0IDE1OjUyICswMzAwLCBTdGFuaXNsYXYgTGlzb3Zza2l5IHdy
b3RlOg0KPiBJZiByZXQgaXNuJ3QgemVybywgaXQgaXMgYWxtb3N0IGZvciBzdXJlIEVUSU1FRE9V
VCwgYmVjYXVzZQ0KPiB3ZSB1c2UgaXQgaW4gd2FpdF9mb3IgbWFjcm8gd2hpY2ggZG9lcyBjb250
aW51b3VzIHJldHJpZXMNCj4gdW50aWwgdGltZW91dCBpcyByZWFjaGVkLiBJZiB3ZSBzdGlsbCBy
YW4gb3V0IG9mIHRpbWUgYW5kDQo+IHJldHJpZXMsIHdlIG1vc3QgbGlrZWx5IHdvdWxkIGJlIGlu
dGVyZXN0ZWQgaW4gZ2V0dGluZyBzdGF0dXMsDQo+IHRvIHVuZGVyc3RhbmQgd2hhdCB3YXMgdGhl
IGFjdHVhbCBlcnJvciBwcm9wYWdhdGVkIGZyb20gUENvZGUsDQo+IHJhdGhlciB0aGFuIHRvIGZp
bmQgb3V0IHRoYXQgd2UgaGFkIGEgdGltZSBvdXQsIHdoaWNoIGlzIGFueXdheQ0KPiBxdWl0ZSBv
YnZpb3VzLCBpZiB0aGUgZnVuY3Rpb24gZmFpbHMuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBTdGFu
aXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4NCj4gLS0tDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY29kZS5jIHwgMiArLQ0KPiAgMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNvZGUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3Bjb2RlLmMNCj4gaW5kZXggZmI2YzQzZThhMDJmLi5hNjhlYWY1MTA3ODQgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bjb2RlLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNvZGUuYw0KPiBAQCAtMjAyLDcgKzIwMiw3IEBAIGlu
dCBza2xfcGNvZGVfcmVxdWVzdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdTMyIG1i
b3gsIHUzMiByZXF1ZXN0LA0KPiAgDQo+ICBvdXQ6DQo+ICAJbXV0ZXhfdW5sb2NrKCZpOTE1LT5z
Yl9sb2NrKTsNCj4gLQlyZXR1cm4gcmV0ID8gcmV0IDogc3RhdHVzOw0KPiArCXJldHVybiByZXQg
PyBzdGF0dXMgOiByZXQ7DQoNCklzbnQgdGhpcyBlcXVpdmFsZW50IHRvICJyZXR1cm4gc3RhdHVz
IiANCldoZW4gd2Ugd2VyZSBkaXNjdXNzaW5nIHRoaXMsIEkgZmVsdCB0aGlzIGlzIGdvb2QuIA0K
QnV0IG9uIGZ1cnRoZXIgY2hlY2sgd2l0aCB0aGUgZnVuY3Rpb25zIGdlbjdfY2hlY2tfbWFpbGJv
eF9zdGF0dXMoKSwgaXMgdGhlcmUgYSBwb3NzaWJpbGl0eSB0aGF0DQpzdGF0dXMgPSAwIGJ1dCAi
cmVxdWVzdCAmIHJlcGx5X21hc2spICE9IHJlcGx5IiBmb3IgdGhlICJkZWZhdWx0IiBjYXNlIGhh
bmRsaW5nPw0KDQpJbiB0aGF0IGNhc3QgX3dhaXRfZm9yKCkgd2lsbCBiZSB0aW1lZG91dCB3aXRo
IHJldCA9IEVUaW1lZE91dCBidXQgInN0YXR1cyIgPSAwDQoNCklzIHRoYXQgcmVhbCBzY2VuYXJp
bz8gDQoNCg0KPiAgI3VuZGVmIENPTkQNCj4gIH0NCj4gIA0K
