Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F0E477FA1
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Dec 2021 22:55:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A983710E8D4;
	Thu, 16 Dec 2021 21:55:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE95A10E8D4
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Dec 2021 21:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639691743; x=1671227743;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=sJayFXrxAPTP19yDf4WSIBBrJcsfHqFgrS5d8fH0O3A=;
 b=akgfTHI32qtpciSLV+S6RY+6L1bhdz/MP+llnf4O5BEfogFlvQg+qV/m
 jIGx17g15QpMCQbnUlEDvkfqHQ0nxAsvYr87x+R78FhtbnBf1mWgqkyA/
 QY1LB9Kzz4g8zehxkwVyFJP2XpcyCfc8213abcrfC1AkN+Fv/vZx9MFZa
 /Uh0VnfkGrM7kALTF1eA8T5VQOyv2km1QvxacCoCehHPpHnsm6dDDSigt
 NqbqzIawoU4bjzZoRKwtHbSZZoWdRXAcjFEGkXRRXgxLgX3f9982bQpR5
 RFx7B2tG2pr8StM0l8weYalXGD2F1st9YSHC4H7wMdIScsduh+ecCmT8M w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10200"; a="226896865"
X-IronPort-AV: E=Sophos;i="5.88,212,1635231600"; d="scan'208";a="226896865"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2021 13:55:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,212,1635231600"; d="scan'208";a="464863221"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga003.jf.intel.com with ESMTP; 16 Dec 2021 13:55:24 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 16 Dec 2021 13:55:24 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 16 Dec 2021 13:55:24 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 16 Dec 2021 13:55:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WLSjZrevWdn1UhYm65833QbxDrRWvG1mg3n2M1lb5EESOCNh/hS5zjgWOPUqdg6mUTu5gBFyWpHv/oEG7XXOaAIU4V4+fG9+1ZKPIHycNyJK03x6mdXS7VrSg8BzaIR/wiD3caBENmNmKu8vs3Blxycv3Hnqpjqb7CNDBFpuaCvlB6tPo5fojuf58S3OqUD/+Gadoop1WKNKyR0qHSBHtjcq7cL5CtjoGN8H2OcR0hFLq5w55symik3XEDTch0BECzNHNcEeiZJCxKw6DvZORTCS2gC1py0+7rf0JmXGf8tpxAcvIlgNy0FabdNDqJ+httZSxfhodEwBLZplbLDvuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sJayFXrxAPTP19yDf4WSIBBrJcsfHqFgrS5d8fH0O3A=;
 b=NBFQar70+pkMSKTtvyWomhEt/rIr+WMcUImck38+hv2Todw39dlHfGiECcWnVULKBuRF3gKVBEeEatvnfjXzei5suHgH+m+2pCkVHCalMaWbRjDtvbXsKgIrkNYG0AMx1R81vJvyL8Fk3Ak/DTX4SIXQLKv4gjYpqkFJ8TquECXVyIGzXOiHt8Xo0+mhVIMDcTi4uwI8xHHOzDmrfRj/ZUs/zoerfS603JH9Fu4/DnUji5r80kofzHWv9u8Ug0FmFDfR6g2TpxbEs7jw0G0lr00v6qP2hEGSC/dNGDgUG6/QjrYIwIS7OqW/zkpYpdp0TfnIH9zsuyEVEiDPtbl10Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 by MWHPR11MB1262.namprd11.prod.outlook.com (2603:10b6:300:29::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.14; Thu, 16 Dec
 2021 21:55:21 +0000
Received: from CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::e8b9:8f6d:8519:72ca]) by CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::e8b9:8f6d:8519:72ca%8]) with mapi id 15.20.4801.015; Thu, 16 Dec 2021
 21:55:21 +0000
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "jwboyer@kernel.org" <jwboyer@kernel.org>
Thread-Topic: [Intel-gfx] i915 Updates: ADL-P DMC v2.14
Thread-Index: AQHX5xph/f6XAKy2GE6V4WspnPfE+qwo74wggAtcvICAAPsWgIAAeauA
Date: Thu, 16 Dec 2021 21:55:21 +0000
Message-ID: <3425b0f40b097a9c8f6942f3ea6f6135d86c755f.camel@intel.com>
References: <9d3a16d4327fd6bb0a52cfe8e4bb0857a81494f2.camel@intel.com>
 <2b6c0de45581430daff7f698e94d94ad@intel.com>
 <edc5973fa662d059d4ffa3d01c5e7823817d5784.camel@intel.com>
 <CA+5PVA4mVcs4sejbE=Y4Ofy0Ev-L34qcds2WfZLeOcUXy+Rcyg@mail.gmail.com>
In-Reply-To: <CA+5PVA4mVcs4sejbE=Y4Ofy0Ev-L34qcds2WfZLeOcUXy+Rcyg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.42.2 (3.42.2-1.fc35) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f114c7bc-6113-4e4b-ef19-08d9c0dec1fb
x-ms-traffictypediagnostic: MWHPR11MB1262:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <MWHPR11MB12623792F165A959F8D1AC3BC7779@MWHPR11MB1262.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:854;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PfsErIRTxhZMXXoyu5hcH/CYL53Zi2rMdUzw3PnJ7JvB2Cexst2y+2AL/T6EW3cK/imvl+vnkNyYd0kXv02G0URWDxNc0FpE4aOERe3XLIOaN2fgmmbwl8o6SZiJTkRH3JDmYKt1VqIMzN5/v0ZHTsWhzwgQwYoYehQgygXk9mNaAimMKqcTRoNimyEi9d3vTlGkealbNzDNcAVNwSoJeCLUs9PPFmL46LlsWD2hUfnNGCDF8QOrutZHjaafgGCYGh7LkDh0+URLK+ef2gSDWiPiSD9jlHMbTBBLz/v6jkPNijd0wSZJ2XRuqrQXsnk3a9JlTA8VFMP/U3OgGJCH/9jLlcZxhgZsFiCJH8FFrFURmiX+lRdQdzuQCj/VOzwgwWHA3xmpps0JPUWGRhruJXEHJhIbnk2dkmr09IODsNrwlKl4Q49r69wKzO9BtYIGLydDpzhJMiknNlGK0ztmZMToB0KO2y52NZzm22ymDvMGHA9XVnN8nHe6JZnK9Oc2wPYaqtI5+C6w9pXfzpAiqQ1AS9LaMYzWxWjDARbZhyCXtsjAUgteR64MUNlRBlIKIwQS8ashND/lHBKqug8JJfjGFereg3zoGropDaYJAS4zWijXHcXGbsoU8bvn3lsJG3PM3Z1Gse7YfK294xrevjWqfBHmTvf/UE1MI7Gs+DtPwwcVoYWPMMr6Md5xk1+zMBD+943NyIAbjSaDVPVpSA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5169.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(54906003)(66556008)(64756008)(66446008)(86362001)(6512007)(15650500001)(186003)(2616005)(6916009)(83380400001)(38070700005)(82960400001)(76116006)(71200400001)(4001150100001)(8936002)(66476007)(66946007)(316002)(5660300002)(4326008)(6486002)(53546011)(38100700002)(8676002)(6506007)(36756003)(2906002)(508600001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z0tvV3crZjdidTVyd0RWTnU5S3RERXZQNjFybFp1TklBS250RlA0cHk1Rzlw?=
 =?utf-8?B?U0pLYURZNkNjVFc1ZndGWjlGNERCKzBFZ3RtRlI3YWJySVQ0QzhhcXoySXF5?=
 =?utf-8?B?Nnd0b1pWaVg2TmIrd1ZNOHV1RUFKZFJmejh0MUgzR0k3QmhuSjFpQm5UOS9l?=
 =?utf-8?B?L0NVVENmRUtqbEVTUTBEV2xkRWRhOE9hNlZaM0ZhTE5ld1BNY2JVWW5RYkpI?=
 =?utf-8?B?RU9URFgzeE96OWptMFJ5Z1FMd3V3ME9KSkFmQ1VSK1dUZGZhSGJNMlpEUmkv?=
 =?utf-8?B?dSsxNzdaNTBZMElManJoMGIxbFFVcmJzSVVFSHFwb3RMZHNVaTRiRngxZ3Bs?=
 =?utf-8?B?RjkranRSc2pnOERUNGNUZVlXYzhWa1NsZ0NFR3Iya1pLQ3NJVkd6ZmxWQk9V?=
 =?utf-8?B?L3h5QWp2V0ZzbTF2ZHpqQkwvUlZvN1JiUkpNdG1rSklNbDBRSjhjaDlMRjdQ?=
 =?utf-8?B?VDhWOWV0ZWFxMkFtRW5LUUgxRVVKZkJ6Q2dGdTRDR1RZU0ZKQ2dBZnhZVWkx?=
 =?utf-8?B?YVYvQVYxK0FxaVJ0Y1J5ak05NlVpWGRWUW5JNmwxNFBidndsazdCR205U2RS?=
 =?utf-8?B?aHVGc20zbmg3alVvcU1LaTRVSGtvUEhIMVN5MUNKMnlFeExMcFEvL3JldWE5?=
 =?utf-8?B?VjU4N3FRcGlEa0V0ckdQTDMwNlpvMDNXMmY3K3ZoNk5QSHVWRTN2RUN4MCt6?=
 =?utf-8?B?eXBubVgyT1FXNjZnNmhPWWtqQnZaK1F1MTR2eTVCSmVoUnVSdEp6NkVianQ3?=
 =?utf-8?B?V1d3N01iaVVNVDhwV0E0dUlhK3h1c3A4WkNjVHg4aWFwV3IvWnQ4RFRFaTh0?=
 =?utf-8?B?YzN2VTJ0VEtiYVQ2dk5CV1g3SHFkWllKMDNYN0RLdmVzYWF4eTdsV3F6emZ1?=
 =?utf-8?B?dGpmUXNkOCthQzJxckF0dnE0SjcrVnE1bUtteTNkSTNIcXNwSmJGL0pyQlpw?=
 =?utf-8?B?cWpxdVUvNGZad3FsUnl2Q1BmOWhGODhTY2dmL0liOGtqbTh1eisvNHNKU05m?=
 =?utf-8?B?QmZyem5SQmIyMlJzc2pxNGhLT0NGbkl5U1k2cWg1dlpncFFMWG4vNk9UZmsv?=
 =?utf-8?B?RHFhajJvckIrd3Z1MTBRNThpcllrNVBiWGJYM3A0dmt5eDBpZjBiMCs1eHZU?=
 =?utf-8?B?KzdKaW0veVdJN0w0M0luWVMyQ2tQNWJwaE9qZjlkdkcrN3dORG9jMnV6aEVG?=
 =?utf-8?B?M3hYb2UrZFdLZGlOZ1Q3a2xveDNPYkk2SFp4YloxQXl0Nnc0TTArRXdEdG1U?=
 =?utf-8?B?a0FWcmZGWWpZWUtWN3piZ0gzWkMvc283akhvaVpKUnlwY2hBdXF5OEt4ZVZ0?=
 =?utf-8?B?VXlXSnlNdStSajIwSWwxZWJTSDAxYU0wbXQrd2dPZWYvQmxXSFNKaTU0TmZa?=
 =?utf-8?B?UUlPOXY4VlJ4dEhMNnFVVTcvTXlsSm5nU2pPcTZ6NFZSaUpwVndsUFhPREQ2?=
 =?utf-8?B?VHpwbDUyWUJiL1J1YkJ5c3luTHVLR1ZFTjBFWFk3aTBkWWhBb2RPSERGMnoy?=
 =?utf-8?B?bXJ4T0ZmaFBPSjVLaTJYRHlHWjBzQnRzZ0FNZmoxZWF2U3hOSHNqcjZzcFJt?=
 =?utf-8?B?UlI3T0swZG5wdE45cDJBZGQvdVl1TUwzYzU2ZktDTWUvOTBXM2tsS2N5OUFK?=
 =?utf-8?B?R1NJRjdySWRvYVJLT2NVeGVQR3RFYStGTlNJaHV5S1JsVGNDbDZRc25Dcksw?=
 =?utf-8?B?aVlTdEduZVpzS2pWV2pmQW9GNXFQTUVwbU1Wa0JmZjZrSm93UTM2V3FONlY4?=
 =?utf-8?B?c2FoUkQvbFlscnJDa3RLTTFIUVQ2cXRINzFkdDZtRVNqL0pBMVFGaEdBNk1w?=
 =?utf-8?B?SGlHeVROWllOK0tkSHk0Vys1d2RzYTY1eWVoMGk4WnFqQWxvTXViZm9WOHVo?=
 =?utf-8?B?M3E0ektka1hQUW9TLy9KZHhsSlI5N1dBR3QrcXF2a3JlYWo3MVZoYTFrcmo3?=
 =?utf-8?B?dVZPa3d0cmZTRnBBSHhLczdXRWdRTDNtb2dWVkxsYzloM0RpdmhCUU9jVW9J?=
 =?utf-8?B?ZTd5a011Z0ErMGZUSk95Q3RhYlJjN3VkZG1DbnBTbG5OVWdqY1pVOGdHR3lG?=
 =?utf-8?B?L0N0Y3ZacHBuVlFDTGdmS2pjbTJBdjRDZ3lFdjRpZlVKZEVVYmk5UDRJVnhi?=
 =?utf-8?B?T3BiSGVSZFB3bXprdjFtN1VRazV0bmpnZTR5VG8zaE9QcmtnUDhiVGg2KzdF?=
 =?utf-8?B?WEs0Mm9nWitadStiWWpsRFRkSXczWHNLemlsaThTbzlaWlJDdXJoU2RyTm55?=
 =?utf-8?B?U3NMbmFXVkh4TmpnMlUzVEpUM0lRcUhOcmtKRVNWUzFPdG9mR0puK0o3ZHky?=
 =?utf-8?B?aVNKUm5LYUNjMVNqdUhOMkNPOHlEa29CWmEvdmZBbG5lMnh5S1lEYU93RXd0?=
 =?utf-8?Q?Zh3oCoYz2BcD6xA2+tXC6JLGGnPLb9a+I/eaxs5GEzGZl?=
x-ms-exchange-antispam-messagedata-1: b99gH9Xla+9iwwlWDfMzc8izWAUozGDmyqGzkSFAA4XyOSiu2OnMUoKr
Content-Type: text/plain; charset="utf-8"
Content-ID: <2E89B3E9028E454FB5F5274D0EB652E8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5169.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f114c7bc-6113-4e4b-ef19-08d9c0dec1fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2021 21:55:21.7769 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0e3tla6fJs8akVi0hQBk430gZhYvE3Bty1hF5kG6Z0EdrOdiQg7UQBtzUvLbOKWI9joRIqOwcD55qbNhWxKBpHW+osEEJWdhVOq7kkiVWj3TOS7Fazgx9Ow0ZIH+3ZDinSF9M3l30etQ+c8F3Sq71g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1262
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] i915 Updates: ADL-P DMC v2.14
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
Cc: "kyle@mcmartin.ca" <kyle@mcmartin.ca>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hutchings, Ben" <ben@decadent.org.uk>,
 "linux-firmware@kernel.org" <linux-firmware@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIxLTEyLTE2IGF0IDA5OjM5IC0wNTAwLCBKb3NoIEJveWVyIHdyb3RlOg0KPiBT
aW5jZXJlIGFwb2xvZ2llcyBmb3IgdGhlIGRlbGF5LsKgIFB1bGxlZCBhbmQgcHVzaGVkIG91dC4N
Cj4gDQo+IGpvc2gNCg0KVGhhbmsgeW91LCBKb3NoIQ0KDQo+IA0KPiBPbiBXZWQsIERlYyAxNSwg
MjAyMSBhdCA2OjQxIFBNIFRvbGFrYW5haGFsbGkgUHJhZGVlcCwgTWFkaHVtaXRoYQ0KPiA8bWFk
aHVtaXRoYS50b2xha2FuYWhhbGxpLnByYWRlZXBAaW50ZWwuY29tPiB3cm90ZToNCj4gPiANCj4g
PiBCdW1wISA6KQ0KPiA+IA0KPiA+IFRoYW5rcywNCj4gPiAtIE1hZGh1bWl0aGENCj4gPiANCj4g
PiBPbiBXZWQsIDIwMjEtMTItMDggYXQgMTg6MTEgKzAwMDAsIFNyaXZhdHNhLCBBbnVzaGEgd3Jv
dGU6DQo+ID4gPiBQaW5nIDopDQo+ID4gPiBDYW4gdGhlc2UgdXBkYXRlcyBiZSBtZXJnZWQgdG8g
bGludXgtZmlybXdhcmU/DQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gVGhhbmtzLA0KPiA+ID4gQW51
c2hhDQo+ID4gPiANCj4gPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+ID4g
RnJvbTogVG9sYWthbmFoYWxsaSBQcmFkZWVwLCBNYWRodW1pdGhhDQo+ID4gPiA+IDxtYWRodW1p
dGhhLnRvbGFrYW5haGFsbGkucHJhZGVlcEBpbnRlbC5jb20+DQo+ID4gPiA+IFNlbnQ6IFRodXJz
ZGF5LCBEZWNlbWJlciAyLCAyMDIxIDY6NDggQU0NCj4gPiA+ID4gVG86IEh1dGNoaW5ncywgQmVu
IDxiZW5AZGVjYWRlbnQub3JnLnVrPjsNCj4gPiA+ID4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZzsNCj4gPiA+ID4ga3lsZUBtY21hcnRpbi5jYTsgandib3llckBrZXJuZWwub3JnDQo+
ID4gPiA+IENjOiBTcml2YXRzYSwgQW51c2hhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPjsg
bGludXgtDQo+ID4gPiA+IGZpcm13YXJlQGtlcm5lbC5vcmcNCj4gPiA+ID4gU3ViamVjdDogW0lu
dGVsLWdmeF0gaTkxNSBVcGRhdGVzOiBBREwtUCBETUMgdjIuMTQNCj4gPiA+ID4gDQo+ID4gPiA+
IEhpIEJlbiwgSm9zaCwgS3lsZSwNCj4gPiA+ID4gDQo+ID4gPiA+IEtpbmRseSBhZGQgdGhlIGJl
bG93IGk5MTUgY2hhbmdlcyB0byBsaW51eC1maXJtd2FyZToNCj4gPiA+ID4gDQo+ID4gPiA+IFRo
ZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBjb21taXQNCj4gPiA+ID4gYjBlODk4ZmJhZjM3N2M5
OWEzNmFhYzZmZGViNzI1MDAwMzY0OGNhNDoNCj4gPiA+ID4gDQo+ID4gPiA+IMKgIGxpbnV4LWZp
cm13YXJlOiBVcGRhdGUgZmlybXdhcmUgZmlsZSBmb3IgSW50ZWwgQmx1ZXRvb3RoIDk0NjINCj4g
PiA+ID4gKDIwMjEtDQo+ID4gPiA+IDExLTIzIDEyOjMxOjQ1IC0wNTAwKQ0KPiA+ID4gPiANCj4g
PiA+ID4gYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6DQo+ID4gPiA+IA0K
PiA+ID4gPiDCoCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9kcm0vZHJtLWZpcm13YXJl
DQo+ID4gPiA+IGFkbHBfZG1jX3YyLjE0X3VwZGF0ZQ0KPiA+ID4gPiANCj4gPiA+ID4gZm9yIHlv
dSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvDQo+ID4gPiA+IDJhMmFhNDEwYzJlYWViZTU4MDdkMWZk
MzIxZTQyYjhmNTMyODhkOTE6DQo+ID4gPiA+IA0KPiA+ID4gPiDCoCBpOTE1OiBBZGQgRE1DIGZp
cm13YXJlIHYyLjE0IGZvciBBREwtUCAoMjAyMS0xMi0wMSAxNjo1MDozMCAtDQo+ID4gPiA+IDA4
MDApDQo+ID4gPiA+IA0KPiA+ID4gPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gPiA+ID4gLQ0KPiA+ID4gPiBNYWRodW1p
dGhhIFRvbGFrYW5haGFsbGkgUHJhZGVlcCAoMSk6DQo+ID4gPiA+IMKgwqDCoMKgwqAgaTkxNTog
QWRkIERNQyBmaXJtd2FyZSB2Mi4xNCBmb3IgQURMLVANCj4gPiA+ID4gDQo+ID4gPiA+IMKgV0hF
TkNFwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMyArKysNCj4g
PiA+ID4gwqBpOTE1L2FkbHBfZG1jX3ZlcjJfMTQuYmluIHwgQmluIDAgLT4gNzczMDAgYnl0ZXMN
Cj4gPiA+ID4gwqAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQ0KPiA+ID4gPiDCoGNy
ZWF0ZSBtb2RlIDEwMDY0NCBpOTE1L2FkbHBfZG1jX3ZlcjJfMTQuYmluDQo+ID4gPiA+IA0KPiA+
ID4gPiBUaGFua3MhDQo+ID4gPiA+IC0gTWFkaHVtaXRoYQ0KPiA+ID4gPiANCj4gPiA+IA0KPiA+
IA0KDQo=
