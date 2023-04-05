Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D856D7504
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 09:10:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB9FE10E30F;
	Wed,  5 Apr 2023 07:10:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66C6A10E30F
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 07:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680678623; x=1712214623;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pl5+VHx/1lmFaZieN93WZw1sMR2DBIUocNrBYbtpgHM=;
 b=FVDq2iy9Ttlu/mL3UkAQ3H7EqwAJJkQ3leuPyQhKCEZcDS4eb/OII7/w
 mR/+d+6IgRdUD4SpBHirhwfjmgtstAbuPW+WulmQwMRow5MaGsILRqt4P
 Om84CZ7QYPZERdEEQaRXbmjEUHP6EdcAs9MLdJdZuFPkmuND5dkiw9xrc
 7+g8U0YvKtgwsYk+4ff8AT6XGasHr7TPPF8m//2cy7elpsT+SfBpMkrYQ
 iUAmGqWc78jKGyyo6+Xnb/JZrw1nW00v4XAFjOpRaG879UoTYbr+V9o84
 c8zF7FHvhZZ/1s4YjIfWPDJWw80auTQ5TJwzbriEA1DoCWCjVhtbYwF7L A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="407463871"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="407463871"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2023 00:10:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="797808378"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="797808378"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 05 Apr 2023 00:10:22 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 5 Apr 2023 00:10:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 5 Apr 2023 00:10:21 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 5 Apr 2023 00:10:21 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 5 Apr 2023 00:10:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ll2VwfR4jZPtyLBv4ZYgYloBfW+sqKbZwhyCfdmwLAT7Byz4+dNTVFJE6kU+qPF0uM6l+HNkHXRPsSxEYlbsYSykybaXrWL8wULfEPb5Zkz6wbPhsG00nnv75cBcya7eL/99H+Y5aYcBoj50DLqi521qWEWOvqjbuRhp1ouuCWrUHqFMcE/gSioiI5YJVDXFptmwbkcR9eNJKEKWwhJACWSsXzQaFH2SDJMhVJPv+3xgXeyf0LyKigvLlhexhIQPDK4ejhjbqVRhuhDfWtDdX6UFPCWmOySo9qitf/+RUhakNIz/WGRkph0K7KvSMwwL92KV8iv0fgF9Ahsk1ajTMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pl5+VHx/1lmFaZieN93WZw1sMR2DBIUocNrBYbtpgHM=;
 b=awJauOYsZ/aVxB8kT6Tv48aSl1gj5bPRGyUClROqksBHzUW+HIcptYN0A+dpPKkxYunSQFKBCkyMv0nJmxxFdTgKPR+JXi7VmcKUO6xrg5wDN2DSsIH7UvYL8JLmEY5kG+E5Wc6GjB/WRvwB75H0Y+FgoVOtyoof/aeRD/c1kcKcaxod8BiuaZlCg+cRk4UEQaKaKilchwqNxSEoSxmGh+OG+/iIWGPcj0LalgJhzULQkFNsr5haENP0rCN3UHzD8UcxoKF09NQmrJl8TZFcn3VgORS8TV5Q3KqHjhfInSzqz5vvcCb8mKuriyYWtXfs0nUH5CTVjr2Dv3uPU9SfTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (2603:10b6:300:10c::20)
 by DM4PR11MB5230.namprd11.prod.outlook.com (2603:10b6:5:39a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.35; Wed, 5 Apr
 2023 07:10:19 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::47e0:df10:25c7:ce5f]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::47e0:df10:25c7:ce5f%7]) with mapi id 15.20.6254.035; Wed, 5 Apr 2023
 07:10:18 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/6] drm/i915/vrr: Tell
 intel_crtc_update_active_timings() about VRR explicitly
Thread-Index: AQHZW2tgYUvy3tmts0SLmYD7KCtGEq8cZD2A
Date: Wed, 5 Apr 2023 07:10:18 +0000
Message-ID: <MWHPR11MB193515CA1DB8641750756CA7B2909@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <20230320203352.19515-1-ville.syrjala@linux.intel.com>
 <20230320203352.19515-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20230320203352.19515-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1935:EE_|DM4PR11MB5230:EE_
x-ms-office365-filtering-correlation-id: 0864e8df-ca77-4f71-1f95-08db35a4d048
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JMIxEdxug5QD9O66XCf0zAMRrvBUZ37PvRSohmQTNhTyfcuEofWPejxaY33xlHl/Lv7k5iSF76zPvec52Y48zkEp1tuzunECxMX47yO9MAG6kwnQp/awAkiZQEZBpfpe5/sthmYIqtPWl/G+DgX1j/gC4/L+5ibrCGA8YQOua8WwUEttAeezcVjAUsfm4QA3TlEC3y2jEoHX1r9Za76dzexEutTBU2Jy7aLbG9zt9/8oQsT+LzsarJmifZsjcI4y/CZq6kgEfuFsDqd/3RIduhZZW3ET7Bx5n+J9GHGp4n0hgncMS6Iqbtb3KWurZuSrkyWaOm1KSwROJ8BnDh1rzit2yXvYOp+aPFj7/VqaNpo4qZdCsW2UryRQSY9pBEn5kOHg5I+9bd6xIJZey2ZsSD0tp/Otx92vEvHf5Z+XVK1kGgRE43IXGKjOzpMOaxVIH1ajbH0FHWDjSlYsxTDKZHbDioyP8rFKMOmGL0g6YUJO7iilAPAFO2ZLC6X8tcYeH6Yb4C4XdMZkrk7YBhgXZO+Ym4XC3s23JPeQep/MgL/q7G1UvzITJcdivDlR9egQ6czo9vppCuAaRO+1LWC91EkHGsH2HcABLwP6AnskSEFRf2i6pqPZ88Zu2onXmnXr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(366004)(39860400002)(376002)(396003)(451199021)(9686003)(53546011)(66476007)(186003)(6506007)(33656002)(478600001)(316002)(7696005)(71200400001)(5660300002)(8936002)(2906002)(82960400001)(38070700005)(52536014)(66946007)(86362001)(66556008)(4326008)(8676002)(6916009)(66446008)(38100700002)(64756008)(122000001)(41300700001)(55016003)(76116006)(83380400001)(66574015);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NVpiRlNZdmowTnpiamNJdFFKQjMwbW50RlZXa3lnaWxOQUZjZkxlUFlFSTRy?=
 =?utf-8?B?Q3VySExJS0dTcDhBSHROTDVxc0tCUVBDVGdwVGM3MlE5bjV4RVRraDJyTDVx?=
 =?utf-8?B?VFRlR1hqeFRsRGx6UEdxQm4wUXdCMDZlTXNiMzVkWitLaGNVK2E1aFZGMVR6?=
 =?utf-8?B?cmQwcUUzSmRsZHNuZ3dyQmFtSVhoRXRna29zQUc1VDRBVWpHU1k5YmxkbkF5?=
 =?utf-8?B?U3g5NjBVc2xMaEZod0RLUEo4U011d3RIeTU4ajFuKzE5WStYRzFESTh5Wk0y?=
 =?utf-8?B?TnZtaGFDWmlGeWtnTEhHUU02NFpqcEhxU3pwSnlZakl5bTgrOGliVGt5ZDJO?=
 =?utf-8?B?Mm1uK2xGbXpwT3E2SG5jdWtscUQ2dS9DMjc1NVBqWm1sWFQ1c1pWL2ZmRHJZ?=
 =?utf-8?B?LzB2aTZ4WjZEenhYdnRocU5laUNLdktmTEJoYTJSUkJpQnNubnpHeWhNcHVC?=
 =?utf-8?B?ZnJ1RkcrS2hCR2JYNWx5QjhMVFJuTCtxRUJyTGZoTXhLTnFyTzB2RkhnclY5?=
 =?utf-8?B?OHJpQVlZWjZvNmlsWkFTNm04T1BQMFNNMkN2Zm5Ob1l4Z0JJU0FtRk9VWGhM?=
 =?utf-8?B?ak1PenlLUnJSNjRteFl3RUluREFYdVJYYnh2dDJDbzZZeDBWc1A0SlllblZM?=
 =?utf-8?B?NERGWWViQXRDeDhkUW92aUpvNmp3a053MmxlK3dvOXdSSUZ6L3hHUGdxMG11?=
 =?utf-8?B?bG5yUkp1eUhtZ2trYkIvcmxkZGU5Ym8zb0hJVS9aTnhZS3l5SkxFZDc1aW9Z?=
 =?utf-8?B?UGhMb29aL2ZMdm4rR2xSS0g1c0kvUk9LSkNTazlycTBSa1B3emFvcnJwYlNk?=
 =?utf-8?B?aWQ2a3BvdU15QlZLN0JDR045WldBWE5zd0hGbnlUU2ZiWW9jWGJCZStvS3U2?=
 =?utf-8?B?K3JZK0NZZTJTQW1jQ1pGY0QvZ2lSekNvbDNsSTFWaGNaS1NEdUYySkk2OUti?=
 =?utf-8?B?d3Boa29ENUo5U3V6ZHh5aUVMdGtxUDRBaUthRWN3MGVTaVFxUWdrcDAwMy9x?=
 =?utf-8?B?enk4bDg2aDdlNWh4OENRMnJYYmQ2UnhXK3h0eS9sdHdtR3VNWVVXVXh3Q3Fi?=
 =?utf-8?B?UWcyKy9YbjdCWjU2eFhnVkpRSktEbTBWZUlYK2RBZGtmOXF0NEk3UmVJT1Bt?=
 =?utf-8?B?SVZpZHoyYjdabndPNjBzQXhOWVVuUTdQQlNRVWl2K2I3V1lHU2NLZEErM0U1?=
 =?utf-8?B?VmR5d0pLeHg2R3lUbUxkRlBmQ3BJQUZwM1dBRWdURkc1VVkzakdaVkJ6SXVJ?=
 =?utf-8?B?MUR1TWM3MEdVYTU1bVZOZjg4VnJ2WkExWjRCSUFmamF6N1JKd1F3Ty9XVnpD?=
 =?utf-8?B?RXhsUDlZTXZKaTJIQ3RJL0ZiMzY0ZnloL3lldDB2U0VHQzA3czc3d2xiVFV1?=
 =?utf-8?B?K3FLZzk0Z0tZZVFTd0RJWDZzdy9HcGo0ODFnYXJrRWhzQ0UxdnJqKytnSkov?=
 =?utf-8?B?NitOaVR1OXdCNURYRWlpajlYZXlHWkFGOTU2NmJwMFhhY25GbksyaWdaZG42?=
 =?utf-8?B?WVNNaVhBL1hnU0ZzZzRESGhrOU9Dd2xvK2w0S09pM0ZQbG15WUdZckIwT2Fo?=
 =?utf-8?B?SDZOWkVlNCtMOCsrTUtiM1g0MTNxQmlxcnNGVURlM1VCc0J0eG5iVWlLbFRs?=
 =?utf-8?B?U1AvVzFScHhuMjNYa2UraVFxRGVCM3VDSFU2akJmTHE2alZ1UWRoSjQrTDFn?=
 =?utf-8?B?bk5FSytvZFBlckN4ZHdnNFJxbGJodC9lcm9FWWtvT1M1N3lRdXJtQzdMZ3pQ?=
 =?utf-8?B?V3lOMkQwTnlQbXBxYzkvUlczWVVtNXN1OVBiUHU1ajd4TW9NMTh4K2xCWE5n?=
 =?utf-8?B?bXlhSWc0T0ZPRTRtd0EzZTBBdk96Z3kyZWJoS2lhWm5CZFl4WHNtcmZhZTJi?=
 =?utf-8?B?ZlVCekZCSkh3UEo2UWhxOTgzLzMyb1NGOTNZL0Z3ZERSWHZ4LzNWTW9tbjlt?=
 =?utf-8?B?QXFnVisvazY3WFpnZzd6ajVWZ1R0cGR5Nm5OTC9XNVliMFNrZytXVW92emE2?=
 =?utf-8?B?dHZYeVJFSDcwbzh1cy9rZ0pQaGZkUjM0Y3RjYjVWT3FBeE5TMlFOQUNUNk9G?=
 =?utf-8?B?cUlPVGtyNm9EamVNT2IzL2REWmo1b3hZWkJvaFArZHlWSDJnNXhDc0c1aWVH?=
 =?utf-8?B?QjVYT1h5ZzlNbXYvMXZ4S0NBS3FnOVAzOVM3VVp0d0wwRTcxQytWd2pUN3VC?=
 =?utf-8?B?aVZPa0RHc20rRTlFOC9PeUd4NTZWd1hpUzd5OGxncWhJenAyMGptb2g4Z2VN?=
 =?utf-8?Q?jKTa9PiwgxnsmASBhTbcSEBW13n8xZSI+Z1n+mMaCQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0864e8df-ca77-4f71-1f95-08db35a4d048
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2023 07:10:18.7852 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NOlTn0QBtrxVA/D/0W/3122lX6WHP0q7o1A3lEtSyjMv7djOg2iXcZ3HvIFBnyRPoxQPTcOCSwQqh2swk32nVUltBs5aM/nysEC04FX3hj3XR3y+l7wAOnVXH1+3FZL7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5230
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915/vrr: Tell
 intel_crtc_update_active_timings() about VRR explicitly
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
PiBTeXJqYWxhDQo+IFNlbnQ6IDIxIE1hcmNoIDIwMjMgMDI6MDQNCj4gVG86IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIIDQvNl0g
ZHJtL2k5MTUvdnJyOiBUZWxsDQo+IGludGVsX2NydGNfdXBkYXRlX2FjdGl2ZV90aW1pbmdzKCkg
YWJvdXQgVlJSIGV4cGxpY2l0bHkNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBJbiBvcmRlciB0byBtb3ZlIFZSUiBlbmFi
bGUvZGlzYWJsZSB0byBhIHBsYWNlIHdoZXJlIGl0J3MgYWxzbyBhcHBsaWNhYmxlIHRvDQo+IGZh
c3RzZXRzIHdlIG5lZWQgdG8gYmUgcHJlcGFyZWQgdG8gY29uZmlndXJlIHRoZSBwaXBlIGludG8g
bm9uLVZSUiBtb2RlDQo+IGluaXRpYWxseSwgYW5kIHRoZW4gbGF0ZXIgc3dpdGNoIHRvIFZSUiBt
b2RlLiBUbyB0aGF0IGVuZCBhbGxvdyB0aGUgYWN0aXZlDQo+IHRpbWluZ3MgdG8gYmUgY29uZmln
dXJlZCBpbiBub24tVlJSIG1vZGUgdGVtcG9yYXJpbHkgZXZlbiB3aGVuIHRoZQ0KPiBjcnRjX3N0
YXRlIHNheXMgd2UncmUgZ29pbmcgdG8gYmUgdXNpbmcgVlJSLg0KPiANCj4gU2lnbmVkLW9mZi1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0t
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYyAgICAgICAgICB8
ICAzICsrLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
ICAgICAgfCAgMyArKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbW9k
ZXNldF9zZXR1cC5jIHwgIDMgKystDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3ZibGFuay5jICAgICAgICB8IDEyICsrKysrKysrKy0tLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuaCAgICAgICAgfCAgMyArKy0NCj4gIDUgZmlsZXMg
Y2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYw0KPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+IGluZGV4IDQxZDM4MWJiYjU3
YS4uYzU5YzRiNDE2ZGNiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NydGMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NydGMuYw0KPiBAQCAtNjkyLDcgKzY5Miw4IEBAIHZvaWQgaW50ZWxfcGlwZV91cGRhdGVf
ZW5kKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpuZXdfY3J0Y19zdGF0ZSkNCj4gIAkgKiBG
SVhNRSBTaG91bGQgYmUgc3luY2hyb25pemVkIHdpdGggdGhlIHN0YXJ0IG9mIHZibGFuayBzb21l
aG93Li4uDQo+ICAJICovDQo+ICAJaWYgKG5ld19jcnRjX3N0YXRlLT5zZWFtbGVzc19tX24gJiYN
Cj4gaW50ZWxfY3J0Y19uZWVkc19mYXN0c2V0KG5ld19jcnRjX3N0YXRlKSkNCj4gLQkJaW50ZWxf
Y3J0Y191cGRhdGVfYWN0aXZlX3RpbWluZ3MobmV3X2NydGNfc3RhdGUpOw0KPiArCQlpbnRlbF9j
cnRjX3VwZGF0ZV9hY3RpdmVfdGltaW5ncyhuZXdfY3J0Y19zdGF0ZSwNCj4gKwkJCQkJCSBuZXdf
Y3J0Y19zdGF0ZS0+dnJyLmVuYWJsZSk7DQo+IA0KPiAgCWxvY2FsX2lycV9lbmFibGUoKTsNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+
IGluZGV4IDVlZTkzODI0ODYxYi4uZmM4ZWFmZDVmYTYxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtNjk1Niw3ICs2OTU2LDgg
QEAgc3RhdGljIHZvaWQgaW50ZWxfZW5hYmxlX2NydGMoc3RydWN0DQo+IGludGVsX2F0b21pY19z
dGF0ZSAqc3RhdGUsDQo+ICAJaWYgKCFpbnRlbF9jcnRjX25lZWRzX21vZGVzZXQobmV3X2NydGNf
c3RhdGUpKQ0KPiAgCQlyZXR1cm47DQo+IA0KPiAtCWludGVsX2NydGNfdXBkYXRlX2FjdGl2ZV90
aW1pbmdzKG5ld19jcnRjX3N0YXRlKTsNCj4gKwlpbnRlbF9jcnRjX3VwZGF0ZV9hY3RpdmVfdGlt
aW5ncyhuZXdfY3J0Y19zdGF0ZSwNCj4gKwkJCQkJIG5ld19jcnRjX3N0YXRlLT52cnIuZW5hYmxl
KTsNCj4gDQo+ICAJZGV2X3ByaXYtPmRpc3BsYXkuZnVuY3MuZGlzcGxheS0+Y3J0Y19lbmFibGUo
c3RhdGUsIGNydGMpOw0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfbW9kZXNldF9zZXR1cC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9tb2Rlc2V0X3NldHVwLmMNCj4gaW5kZXggNDU1OGQwMjY0MWZlLi42NGQxMmEx
Mzg4N2QgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
bW9kZXNldF9zZXR1cC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfbW9kZXNldF9zZXR1cC5jDQo+IEBAIC01NjAsNyArNTYwLDggQEAgc3RhdGljIHZvaWQgaW50
ZWxfbW9kZXNldF9yZWFkb3V0X2h3X3N0YXRlKHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpp
OTE1KQ0KPiAgCQkJICovDQo+ICAJCQljcnRjX3N0YXRlLT5pbmhlcml0ZWQgPSB0cnVlOw0KPiAN
Cj4gLQkJCWludGVsX2NydGNfdXBkYXRlX2FjdGl2ZV90aW1pbmdzKGNydGNfc3RhdGUpOw0KPiAr
CQkJaW50ZWxfY3J0Y191cGRhdGVfYWN0aXZlX3RpbWluZ3MoY3J0Y19zdGF0ZSwNCj4gKwkJCQkJ
CQkgY3J0Y19zdGF0ZS0NCj4gPnZyci5lbmFibGUpOw0KPiANCj4gIAkJCWludGVsX2NydGNfY29w
eV9od190b191YXBpX3N0YXRlKGNydGNfc3RhdGUpOw0KPiAgCQl9DQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5jDQo+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuYw0KPiBpbmRleCBmOGJmOTgxMDUyN2Qu
LjJlNGY3ZGUxOTlkNiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF92YmxhbmsuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3ZibGFuay5jDQo+IEBAIC00ODgsMjEgKzQ4OCwyNyBAQCBzdGF0aWMgaW50IGludGVsX2Ny
dGNfc2NhbmxpbmVfb2Zmc2V0KGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlKQ0KPiAgCX0NCj4gIH0NCj4gDQo+IC12b2lkIGludGVsX2NydGNfdXBkYXRlX2FjdGl2
ZV90aW1pbmdzKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKQ0K
PiArdm9pZCBpbnRlbF9jcnRjX3VwZGF0ZV9hY3RpdmVfdGltaW5ncyhjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSwNCj4gKwkJCQkgICAgICBib29sIHZycl9lbmFi
bGUpDQo+ICB7DQo+ICAJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNy
dGNfc3RhdGUtPnVhcGkuY3J0Yyk7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsNCj4gKwl1OCBtb2RlX2ZsYWdzID0gY3J0Y19zdGF0
ZS0+bW9kZV9mbGFnczsNCj4gIAlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSBhZGp1c3RlZF9tb2Rl
Ow0KPiAgCWludCB2bWF4X3ZibGFua19zdGFydCA9IDA7DQo+ICAJdW5zaWduZWQgbG9uZyBpcnFm
bGFnczsNCj4gDQo+ICAJZHJtX21vZGVfaW5pdCgmYWRqdXN0ZWRfbW9kZSwgJmNydGNfc3RhdGUt
Pmh3LmFkanVzdGVkX21vZGUpOw0KPiANCj4gLQlpZiAoY3J0Y19zdGF0ZS0+dnJyLmVuYWJsZSkg
ew0KPiArCWlmICh2cnJfZW5hYmxlKSB7DQo+ICsJCWRybV9XQVJOX09OKCZpOTE1LT5kcm0sICht
b2RlX2ZsYWdzICYNCj4gSTkxNV9NT0RFX0ZMQUdfVlJSKSA9PSAwKTsNCj4gKw0KPiAgCQlhZGp1
c3RlZF9tb2RlLmNydGNfdnRvdGFsID0gY3J0Y19zdGF0ZS0+dnJyLnZtYXg7DQo+ICAJCWFkanVz
dGVkX21vZGUuY3J0Y192YmxhbmtfZW5kID0gY3J0Y19zdGF0ZS0+dnJyLnZtYXg7DQo+ICAJCWFk
anVzdGVkX21vZGUuY3J0Y192Ymxhbmtfc3RhcnQgPQ0KPiBpbnRlbF92cnJfdm1pbl92Ymxhbmtf
c3RhcnQoY3J0Y19zdGF0ZSk7DQo+ICAJCXZtYXhfdmJsYW5rX3N0YXJ0ID0NCj4gaW50ZWxfdnJy
X3ZtYXhfdmJsYW5rX3N0YXJ0KGNydGNfc3RhdGUpOw0KPiArCX0gZWxzZSB7DQo+ICsJCW1vZGVf
ZmxhZ3MgJj0gfkk5MTVfTU9ERV9GTEFHX1ZSUjsNCj4gIAl9DQo+IA0KPiAgCS8qDQo+IEBAIC01
MjQsNyArNTMwLDcgQEAgdm9pZCBpbnRlbF9jcnRjX3VwZGF0ZV9hY3RpdmVfdGltaW5ncyhjb25z
dCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gDQo+ICAJY3J0Yy0+
dm1heF92Ymxhbmtfc3RhcnQgPSB2bWF4X3ZibGFua19zdGFydDsNCj4gDQo+IC0JY3J0Yy0+bW9k
ZV9mbGFncyA9IGNydGNfc3RhdGUtPm1vZGVfZmxhZ3M7DQo+ICsJY3J0Yy0+bW9kZV9mbGFncyA9
IG1vZGVfZmxhZ3M7DQo+IA0KPiAgCWNydGMtPnNjYW5saW5lX29mZnNldCA9IGludGVsX2NydGNf
c2NhbmxpbmVfb2Zmc2V0KGNydGNfc3RhdGUpOw0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5oDQo+IGluZGV4IDA4ODRkYjdlNzZhZS4uMDhlNzA2
YjI5MTQ5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3ZibGFuay5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJs
YW5rLmgNCj4gQEAgLTIwLDYgKzIwLDcgQEAgYm9vbCBpbnRlbF9jcnRjX2dldF92YmxhbmtfdGlt
ZXN0YW1wKHN0cnVjdCBkcm1fY3J0Yw0KPiAqY3J0YywgaW50ICptYXhfZXJyb3IsICBpbnQgaW50
ZWxfZ2V0X2NydGNfc2NhbmxpbmUoc3RydWN0IGludGVsX2NydGMgKmNydGMpOyAgdm9pZA0KPiBp
bnRlbF93YWl0X2Zvcl9waXBlX3NjYW5saW5lX3N0b3BwZWQoc3RydWN0IGludGVsX2NydGMgKmNy
dGMpOyAgdm9pZA0KPiBpbnRlbF93YWl0X2Zvcl9waXBlX3NjYW5saW5lX21vdmluZyhzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0Yyk7IC12b2lkDQo+IGludGVsX2NydGNfdXBkYXRlX2FjdGl2ZV90aW1p
bmdzKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsNCj4gK3ZvaWQg
aW50ZWxfY3J0Y191cGRhdGVfYWN0aXZlX3RpbWluZ3MoY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUNCj4gKmNydGNfc3RhdGUsDQo+ICsJCQkJICAgICAgYm9vbCB2cnJfZW5hYmxlKTsNCj4g
DQo+ICAjZW5kaWYgLyogX19JTlRFTF9WQkxBTktfSF9fICovDQo+IC0tDQo+IDIuMzkuMg0KDQpj
aGFuZ2VzIExHVE0uIA0KVGhhbmtzDQogDQpSZXZpZXdlZC1ieTogTWl0dWwgR29sYW5pIDxtaXR1
bGt1bWFyLmFqaXRrdW1hci5nb2xhbmlAaW50ZWwuY29tPg0KDQo=
