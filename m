Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A79D58254DB
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 15:08:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CE6210E61E;
	Fri,  5 Jan 2024 14:08:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0E9410E61E
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jan 2024 14:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704463719; x=1735999719;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=aaj/4pG/grQTF+audFML/2Dp/Ylzp8MwntOvU6kJz7c=;
 b=ZB28+buzWtJgabZjPh18MIEkUJVukbgSIbBVUwyVwJTjBpvktno7XPNd
 AwBV1+CADGklwYlaL2GQ2QbTB4hH00Og64rO3InrZhyUzVAlQFNAORSM6
 8xcdH1J6wkIPszxlmLSGFSuAvycPSKyMfKOfbItYTdvJg+i3VzuTJn0Uz
 Np7o9wB5/Gkr7Jx0oLW47jbwFiuzbY+Bwppsbp3Tql1pHpdgITxSvglyV
 kul0cnf2/uZxmv1Rmi2eySGuYAMWQBGWfkqE95IKcYrVmL+RWSjhbmcuZ
 ap5OcBuyc/9pdwzB8+Zxr9UAZ9VTV0j7q+xqbpnv/YHHq7hd7twCFFBUE Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="394685367"
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; d="scan'208";a="394685367"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 06:08:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="784208014"
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; d="scan'208";a="784208014"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Jan 2024 06:08:39 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Jan 2024 06:08:38 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 5 Jan 2024 06:08:38 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 5 Jan 2024 06:08:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VCMnR0KyD2V3wsBV0rZTqE1H4g1FkxoxPwHyDihv7I2DIP01JzYvgecSMMab+3PAxkFDXDkiyb8WgdEJj2UJ9wrVb8J1ylqmsuajwpKrwXygfV63ug/VOvQ0JwHhC4bsEPkLtaXAjTloJJl3lidfiW66TIAWZu5Cs9GpvDQHdQGL1qrtolqMNtCMK7vh63rY9U5hHmR2ttCMeWhxxrg7vbYwKFSSvXoTh5CUXwKpVW/x3GnLGQ5NBxE75Zx97CB+v7T3fvpCA0kd43gORNxUeERxlhj05XmvFhHcVWnArN3u+Jdb1RjGZ0+V50t+MBx7UC/ZEkiZhHDwAstgesanuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aaj/4pG/grQTF+audFML/2Dp/Ylzp8MwntOvU6kJz7c=;
 b=ii/TvZ0sjvCbFqmet+2O139QrQO/6hlyetnUEZ3PS8vXI3YUV1jfG7fgTRjC4FVUCrTnXZdTg6d9Ir4iSkgu8Ee36+rlBE7/nwJmwjE/cVYnLu7PFJcD3EKNpMu/PNgyLnMl99k02t5F/E+L5MGzNcxco5gwopgQJvoz1loQr2AVsmCMuea59QCWbbemGzKJhOXRMs+fKbRpGteEUiYkDZNC6iPB+3OBWDMsJyG10lb88+jNLOfxuFMF0kVDsywXhvEfmRB1QF7TnQX+f4Ncror7hemWWWwCZQUfDdwC/as/xxN8AOTHQ0yxHbvb2NXxxhb2oKAT6bbk0zeQUYixeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM3PR11MB8715.namprd11.prod.outlook.com (2603:10b6:0:1e::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7159.17; Fri, 5 Jan 2024 14:08:31 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7159.015; Fri, 5 Jan 2024
 14:08:31 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 02/12] drm/i915: Keep the connector polled state disabled
 after storm
Thread-Topic: [PATCH 02/12] drm/i915: Keep the connector polled state disabled
 after storm
Thread-Index: AQHaPuhTGH/J83xYAE+3mSjxEwSWx7DLNwMAgAAEKgCAAAhSgA==
Date: Fri, 5 Jan 2024 14:08:31 +0000
Message-ID: <3d516f5edc4fad183b42e40c4a61d4e2b129e3c5.camel@intel.com>
References: <20240104083008.2715733-1-imre.deak@intel.com>
 <20240104083008.2715733-3-imre.deak@intel.com>
 <b335ea398c5c70c412515484b414032ab64fd91d.camel@intel.com>
 <ZZgGYg2N+ZdsuvSq@ideak-desk.fi.intel.com>
In-Reply-To: <ZZgGYg2N+ZdsuvSq@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM3PR11MB8715:EE_
x-ms-office365-filtering-correlation-id: bc1988b7-33cc-4ac8-0d40-08dc0df7cc00
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tdAO5ksWIUSCHuvwsxgYSNnhqXd/jM4Qcz2WHSnkTVMmsYFf7RSKXjyVpjl0kQ5V42S+AqdesckYrvam1YvOhnPAlpUeTjQ5CpW+o/FUC5mX0VhKPLdfY6ECBmv+vfSR8hLViqiO0Mi8+HWRBF5MF55PX0rAC/yB75q1dTATwUpbirzX6cqhZ6g/IGCuRmfQoGhgP1k47fcD9jODPmaWW6HIn8A/BvHqrOJe1UlgPzBRU4rjupaXkSQXUiRe7Z1pK/wrezUzG3JU9nQFdTglqKiI1ccTPRcLFCELJmePei6awRblzZ54gPXNtByVk2scfSu560S1uctA/LyWMUyjsPC+F5G1Qi1lx7N/1CzcjQC7F69M/8XNrYzYKVW0tQ6pAFd2vbvBSsXf0MHdfIMGRBayZOE8OUpbsQRzrar89kkrKJAPvrjmu1pQgazl460UMSABWQ0GfkHBS5Gbrq4WeshUJcUMo+lpF0Zft/+LKJ6UKo8g2S1+zwkBFUu8d5oj5Ah6qqbyWwwa+/AKczgb25eBjf5noHmsWeHAy0n9uk53grVWLU7y+WGjJIe7YIdeEAilwSkM1pS9eJahf9YYqDKuq2VJJwFKPFlfKG1UoC71BykPhfcm+smDMiUHsMYH
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(376002)(39850400004)(396003)(346002)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(122000001)(38100700002)(26005)(2616005)(66574015)(6486002)(5660300002)(2906002)(8676002)(8936002)(4326008)(6862004)(66946007)(6636002)(316002)(66476007)(66556008)(64756008)(66446008)(36756003)(76116006)(37006003)(91956017)(38070700009)(71200400001)(478600001)(6512007)(41300700001)(83380400001)(86362001)(82960400001)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a3VaMTAzUjZQTWt2a0ZxcnpsdnU4dDNqMDFoYUNLdEgwMGFLb0lDbERtQUVM?=
 =?utf-8?B?V2NWSzhVZWVXRnFTVHVQZWpUVXM0L3JFcStWUmFBZ0lQVEhieG9wbTZCTmdM?=
 =?utf-8?B?OFppZTlKa1praVZkcmoxZWlYOFhNT1JiY0lCUTE1ZUJ6K3NJL0lORktmSzhr?=
 =?utf-8?B?RW9YYkw4N3RGV1Y1Y3E0eXozRncyS05qSkhhK2VNbkFzMDBheDlFWFBoa1Vq?=
 =?utf-8?B?aHJ5S3VnK2hHQlNsWXJQOEUzTEl2djVZWWh5YjJzVWl2Rkd3MnJoNlo4eFU4?=
 =?utf-8?B?ME13TFVNNGNDWEprWi95cUE5QjlwQzVadTFyODNVeldMMU1OTXYvWjlHQlhy?=
 =?utf-8?B?OXhiQ1JqTHBvR29TYkRPbk9WT2ZVRFpSVVFPY1JkREZaREpVd0N3OHRidStF?=
 =?utf-8?B?NGQyMW15aFpWMzl4SnMwV0hSYUZxdlgzSk5qZGtGeXdVTkowRG1yYytVRUoz?=
 =?utf-8?B?NE9CZTg2ZVN1Z3ZselJPWm5TYTdmWk1pKzhVNGxiZGdlZ3BJMVlFNXhBaVdy?=
 =?utf-8?B?Rytwamtwd0ppa3pWcjJYeTZqT2xoeFBpQW91c2NXaSttVWVHQzhMWVM3dnBK?=
 =?utf-8?B?TXhzbnZYTFl1MmZVR0RUNUJJSm5QMVpSaElDdHFuZlRGazRJcDZYam4rM29t?=
 =?utf-8?B?U3NHM1FNaFhveS9XMjc2Y1dEcXpkUGZWQjN4NVRMVURNKzJxRlYvQVNDTVBC?=
 =?utf-8?B?R1NHblVUdjBDR0lhck42VjVhU3IvTmhMTlhmMCtWbENuZ1Q5Tk96T3U3SGd3?=
 =?utf-8?B?N2dSays0YWVOSkVWUjJxNXErVVkxNWRzcVFxL293aTNlODVFaXZZaTVURmRN?=
 =?utf-8?B?K3FKR3p4dmduMzdGTHJ1SUwyekFGd3FMc2R1UzhWZXJ6cUFhWHdWVUt5elBr?=
 =?utf-8?B?bHVFZmVLa01hdWtSK1hyRnRTZ1ZhemFmR09pdEJkRFgvV3NYK05BcEVLeVBu?=
 =?utf-8?B?d2hOaUZGQWxYVlNFbFlVTk9aOG9uRXlHbzg3RmFPTEhaRUxkcUMwWnptd0Zp?=
 =?utf-8?B?eTRDaTYvdzl1OG4ydGZreWxpQXhjSFBKeEpOVFpuVWQ3VGk3NUh4U0xJbnlL?=
 =?utf-8?B?OEpmQUNQdThLdjZFRzhKWHJxTEl2ZEpFWlZ0TDdidGY3alZuSHo3dzFPdVZH?=
 =?utf-8?B?czlxVk1WL2ZOVDQxNDdXNDg0Q0ZLZEVkaHhNL0RFZEpSdlpsUGJYSElVQWFu?=
 =?utf-8?B?OXVqQ1BkdnAxdkJmTU5lK0R4WGtuQUkwZDVnTVYvbFBMV1llRHJUaDY2NXV1?=
 =?utf-8?B?Z3dKUEloYkxXY1hHTEpab3EzbHcyZ1lkdnVuVUV6ME1lclFNZmwvcG9RTmVB?=
 =?utf-8?B?K2kyRXk1eVZhL3lBT0JsRFp1OXBkQlM1ellGOXdJR243bFZiblEvNEZLOXds?=
 =?utf-8?B?SUNqbGtubUtudmt2VHlNZEszQy9KUFhGNHlmWC8yR204cUprZFJST0YrREJV?=
 =?utf-8?B?elVNdlc5MWlaeDZhdTE4bi9LZEc5NUMxVmxIWTA5UmdPNkdpallyZkxhaVNC?=
 =?utf-8?B?K3Yxc2d5cmU4NDZGWTR2UzBLREJxWkhyYk5ENDY5dWoxMkVRWTJwak11Z3d2?=
 =?utf-8?B?M2lUZkNtc3ZUb3pUTFBBZU5iaThPREdOWWpFVWJmNWVWQS90VDRjM3JuT0Zj?=
 =?utf-8?B?ZU5Ham0vTHkvdldtRFFUbEU0Q0VwMXNDUXdzQU9YWk93U0FnVGl4ejBINk56?=
 =?utf-8?B?RWQ1alpCeVM3NDZVVExSVEg4bkFsVWZlb3Z3c2dtVFIwN1U2bUlQeUNxcms3?=
 =?utf-8?B?MU1HUGlySXJzTzVRVnltTXc0VUc3OGtqenRrYWJZWnRjUTIzR0VtTzhUWTgv?=
 =?utf-8?B?Z3RLTnRZcjZtb0dRMEVQWWw1M0ZYaUJEZVdrSVhlTFUrdy9kNVcraW5tNWpa?=
 =?utf-8?B?MFZjRWJKMi9zSVhnMWFLd2FBdUd5U0daS0pldDU3cER4MG1PZUlPTnVrZEpR?=
 =?utf-8?B?YVRjSDBqYjRROGhtK3VCTVpKOStEMkViTUc2N1d6RjRMV2RGdGhoR0pWR1J2?=
 =?utf-8?B?ZGovM2RVYS9EYXkvb2ZkMHlNQTNyRGYzSmxvcmFqenJ1ZFJ6czBhMG1SU3BE?=
 =?utf-8?B?aWphU3pFeW9aYWZvU1RwR1FpWDZ4K280WHl0TnoyelZYYXRFUGx6M1doUnhL?=
 =?utf-8?B?MXkzR0tDbFFFVUFFTVRPb29YZjR1eGcyaHlXV2N4T3RHbW90eWh0V3NSMnRV?=
 =?utf-8?B?SUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C58F53D4E315A441875A3815F3499286@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc1988b7-33cc-4ac8-0d40-08dc0df7cc00
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2024 14:08:31.0340 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hriNJh9B+1ooTzIi+wKm+w5X2Hi4ibucIEqMC2qIvXfUkDkdTdSkfQNkPLdWrbnBHuIKNZOi2PFZcPK6QsYa8fbcXpf2VWNJaskfa073BoM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8715
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDI0LTAxLTA1IGF0IDE1OjM4ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6Cj4gT24g
RnJpLCBKYW4gMDUsIDIwMjQgYXQgMDM6MjM6NDlQTSArMDIwMCwgSG9nYW5kZXIsIEpvdW5pIHdy
b3RlOgo+ID4gT24gVGh1LCAyMDI0LTAxLTA0IGF0IDEwOjI5ICswMjAwLCBJbXJlIERlYWsgd3Jv
dGU6Cj4gPiA+IElmIGFuIEhQRCBJUlEgc3Rvcm0gaXMgZGV0ZWN0ZWQgb24gYSBjb25uZWN0b3Ig
ZHVyaW5nIGRyaXZlcgo+ID4gPiBsb2FkaW5nIG9yCj4gPiA+IHN5c3RlbSBzdXNwZW5kL3Jlc3Vt
ZSAtIGRpc2FibGluZyB0aGUgSVJRIGFuZCBzd2l0Y2hpbmcgdG8KPiA+ID4gcG9sbGluZyAtIHRo
ZQo+ID4gPiBwb2xsaW5nIG1heSBnZXQgZGlzYWJsZWQgdG9vIGVhcmx5IC0gYmVmb3JlIHRoZSBp
bnRlbmRlZCAyIG1pbnV0ZQo+ID4gPiBIUERfU1RPUk1fUkVFTkFCTEVfREVMQVkgLSB3aXRoIHRo
ZSBIUEQgSVJRIHN0YXlpbmcgZGlzYWJsZWQgZm9yCj4gPiA+IHRoaXMKPiA+ID4gZHVyYXRpb24u
IE9uZSBzdWNoIHNlcXVlbmNlIGlzOgo+ID4gPiAKPiA+ID4gVGhyZWFkIzHCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBU
aHJlYWQjMgo+ID4gPiBpbnRlbF9kaXNwbGF5X2RyaXZlcl9wcm9iZSgpLT4KPiA+ID4gwqAgaW50
ZWxfaHBkX2luaXQoKS0+Cj4gPiA+IMKgwqDCoCAoSFBEIElSUSBnZXRzIGVuYWJsZWQpCj4gPiA+
IMKgIC7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAKPiA+ID4gaW50ZWxfaHBkX2lycV9oYW5kbGVyKCkt
Pgo+ID4gPiDCoCAuwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoAo+ID4gPiBpbnRlbF9ocGRfaXJx
X3N0b3JtX2RldGVjdCgpCj4gPiA+IMKgIC7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoAo+
ID4gPiBpbnRlbF9ocGRfaXJxX3NldHVwKCktPgo+ID4gPiDCoCAuwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIChIUEQgSVJRIGdldHMKPiA+ID4gZGlzYWJsZWQpCj4gPiA+IMKgIC7C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoAo+ID4gPiBxdWV1ZV9kZWxheWVkX3dvcmsoaG90cGx1Zy5o
b3RwbHVnX3dvcmspCj4gPiA+IMKgIC7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAuLi4KPiA+ID4g
wqAgLsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgCj4gPiA+IGk5MTVfaG90cGx1Z193b3JrX2Z1bmMo
KS0+Cj4gPiA+IMKgIC7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAKPiA+ID4gaW50ZWxfaHBk
X2lycV9zdG9ybV9zd2l0Y2hfdG9fcG9sbGluZygpLT4KPiA+ID4gwqAgLsKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgKHBvbGxpbmcgZW5hYmxlZCkKPiA+ID4gwqAgLgo+ID4gPiDCoCBp
bnRlbF9ocGRfcG9sbF9kaXNhYmxlKCktPgo+ID4gPiDCoMKgwqAgcXVldWVfd29yayhob3RwbHVn
LnBvbGxfaW5pdF93b3JrKQo+ID4gPiDCoCAuLi4KPiA+ID4gwqAgaTkxNV9ocGRfcG9sbF9pbml0
X3dvcmsoKS0+Cj4gPiA+IMKgwqDCoCAocG9sbGluZyBnZXRzIGRpc2FibGVkLAo+ID4gPiDCoMKg
wqDCoCBIUEQgSVJRIGlzIHN0aWxsIGRpc2FibGVkKQo+ID4gPiDCoCAuLi4KPiA+ID4gCj4gPiA+
IMKgIChDb25uZWN0b3IgaXMgbmVpdGhlciBwb2xsZWQgb3IKPiA+ID4gwqDCoCBkZXRlY3RlZCB2
aWEgSFBEIElSUXMgZm9yIDIgbWludXRlcykKPiA+ID4gCj4gPiA+IMKgIGludGVsX2hwZF9pcnFf
c3Rvcm1fcmVlbmFibGVfd29yaygpLT4KPiA+ID4gwqDCoMKgIChIUEQgSVJRIGdldHMgZW5hYmxl
ZCkKPiA+ID4gCj4gPiA+IFRvIGF2b2lkIHRoZSBhYm92ZSAyIG1pbnV0ZSBzdGF0ZSB3aXRob3V0
IGVpdGhlciBwb2xsaW5nIG9yCj4gPiA+IGVuYWJsZWQgSFBECj4gPiA+IElSUSwgbGVhdmUgdGhl
IGNvbm5lY3RvcidzIHBvbGxpbmcgbW9kZSB1bmNoYW5nZWQgaW4KPiA+ID4gaTkxNV9ocGRfcG9s
bF9pbml0X3dvcmsoKSBpZiBpdHMgSFBEIElSUSBnb3QgZGlzYWJsZWQgYWZ0ZXIgYW4KPiA+ID4g
SVJRIHN0b3JtCj4gPiA+IGluZGljYXRlZCBieSB0aGUgY29ubmVjdG9yJ3MgSFBEX0RJU0FCTEVE
IHBpbiBzdGF0ZS4KPiA+IAo+ID4gSXMgaXQgYWN0dWFsbHkgb3JkZXIgd2hpY2ggbmVlZHMgdG8g
YmUgZW5zdXJlZCBoZXJlPyBJLmUuIGVuc3VyZQo+ID4gdGhhdAo+ID4gcG9sbGluZyBpcyBkaXNh
YmxlZCBiZWZvcmUgaHBkIGludGVycnVwdCBnZXRzIGVuYWJsZWQ/Cj4gCj4gRGlzYWJsaW5nIHRo
ZSBwb2xsaW5nIGFsc28gbWVhbnMgdGhhdCB0aGVyZSBpcyBhbiBleHBsaWNpdCBkZXRlY3Rpb24K
PiBvZgo+IHRoZSBjb25uZWN0b3JzLiBUaGlzIGV4cGxpY2l0IGRldGVjdGlvbiBhdCBib290LXVw
IGFuZCByZXN1bWUgbXVzdAo+IGhhcHBlbiBfYWZ0ZXJfIHRoZSBIUEQgaW50ZXJydXB0cyBhcmUg
ZW5hYmxlZCwgb3RoZXJ3aXNlIHlvdSBjb3VsZAo+IG1pc3MKPiBhbiBIUEQgY29ubmVjdC9kaXNj
b25uZWN0IGludGVycnVwdCBhbmQgbGVhdmUgdGhlIGNvbm5lY3RvciBpbiBhCj4gc3RhbGUKPiBj
b25uZWN0ZWQgc3RhdGUuCgpGb3IgdGhhdCBwdXJwb3NlIGk5MTVfaHBkX3BvbGxfZGV0ZWN0X2Nv
bm5lY3RvcnMgY291bGQgYmUgdXNlZC4gQW55d2F5cwpJJ20gbm90IHN1cmUgaWYgdGhhdCB3b3Vs
ZCBiZSBhbnkgYmV0dGVyLiBUbyBtZSBpdCBsb29rcyBsaWtlCnNpbXBsZXN0L2NsZWFuZXN0IHdh
eSB0byB0YWNrbGUgdGhlIGlzc3VlIGRlc2NyaWJlZCBpbiB0aGUgY29tbWl0Cm1lc3NhZ2UgaXMg
aW4gdGhlIHBhdGNoOgoKUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5k
ZXJAaW50ZWwuY29tPgoKPiA+IFdoeSBkaXNhYmxpbmcgcG9sbGluZyBpcyBxdWV1ZWQgd29yayBh
bmQgbm90IGp1c3QgZG9uZSBkdXJpbmcKPiA+IGluaXQvcmVzdW1lPwo+IAo+IFRvIHJlZHVjZSB0
aGUgbGF0ZW5jeSBvZiBib290LXVwIGFuZCByZXN1bWUuCj4gCj4gPiBCUiwKPiA+IAo+ID4gSm91
bmkgSMO2Z2FuZGVyCj4gPiAKPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8
aW1yZS5kZWFrQGludGVsLmNvbT4KPiA+ID4gLS0tCj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMgfCA3ICsrKysrKysKPiA+ID4gwqAxIGZpbGUgY2hh
bmdlZCwgNyBpbnNlcnRpb25zKCspCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMKPiA+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYwo+ID4gPiBpbmRleCAwYzA3MDBjNmVjNjZk
Li43NDUxM2MzZDM2OTBiIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2hvdHBsdWcuYwo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2hvdHBsdWcuYwo+ID4gPiBAQCAtNzEwLDYgKzcxMCw4IEBAIHN0YXRpYyB2
b2lkIGk5MTVfaHBkX3BvbGxfaW5pdF93b3JrKHN0cnVjdAo+ID4gPiB3b3JrX3N0cnVjdCAqd29y
aykKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNhbmNlbF93b3JrKCZkZXZf
cHJpdi0KPiA+ID4gPiBkaXNwbGF5LmhvdHBsdWcucG9sbF9pbml0X3dvcmspOwo+ID4gPiDCoMKg
wqDCoMKgwqDCoCB9Cj4gPiA+IAo+ID4gPiArwqDCoMKgwqDCoMKgIHNwaW5fbG9ja19pcnEoJmRl
dl9wcml2LT5pcnFfbG9jayk7Cj4gPiA+ICsKPiA+ID4gwqDCoMKgwqDCoMKgwqAgZHJtX2Nvbm5l
Y3Rvcl9saXN0X2l0ZXJfYmVnaW4oJmRldl9wcml2LT5kcm0sCj4gPiA+ICZjb25uX2l0ZXIpOwo+
ID4gPiDCoMKgwqDCoMKgwqDCoCBmb3JfZWFjaF9pbnRlbF9jb25uZWN0b3JfaXRlcihjb25uZWN0
b3IsICZjb25uX2l0ZXIpIHsKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVu
dW0gaHBkX3BpbiBwaW47Cj4gPiA+IEBAIC03MTgsNiArNzIwLDkgQEAgc3RhdGljIHZvaWQgaTkx
NV9ocGRfcG9sbF9pbml0X3dvcmsoc3RydWN0Cj4gPiA+IHdvcmtfc3RydWN0ICp3b3JrKQo+ID4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHBpbiA9PSBIUERfTk9ORSkKPiA+
ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb250aW51
ZTsKPiA+ID4gCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChkZXZfcHJp
di0+ZGlzcGxheS5ob3RwbHVnLnN0YXRzW3Bpbl0uc3RhdGUgPT0KPiA+ID4gSFBEX0RJU0FCTEVE
KQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29u
dGludWU7Cj4gPiA+ICsKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbm5l
Y3Rvci0+YmFzZS5wb2xsZWQgPSBjb25uZWN0b3ItPnBvbGxlZDsKPiA+ID4gCj4gPiA+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoZW5hYmxlZCAmJiBjb25uZWN0b3ItPmJhc2Uu
cG9sbGVkID09Cj4gPiA+IERSTV9DT05ORUNUT1JfUE9MTF9IUEQpCj4gPiA+IEBAIC03MjYsNiAr
NzMxLDggQEAgc3RhdGljIHZvaWQgaTkxNV9ocGRfcG9sbF9pbml0X3dvcmsoc3RydWN0Cj4gPiA+
IHdvcmtfc3RydWN0ICp3b3JrKQo+ID4gPiDCoMKgwqDCoMKgwqDCoCB9Cj4gPiA+IMKgwqDCoMKg
wqDCoMKgIGRybV9jb25uZWN0b3JfbGlzdF9pdGVyX2VuZCgmY29ubl9pdGVyKTsKPiA+ID4gCj4g
PiA+ICvCoMKgwqDCoMKgwqAgc3Bpbl91bmxvY2tfaXJxKCZkZXZfcHJpdi0+aXJxX2xvY2spOwo+
ID4gPiArCj4gPiA+IMKgwqDCoMKgwqDCoMKgIGlmIChlbmFibGVkKQo+ID4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgZHJtX2ttc19oZWxwZXJfcG9sbF9yZXNjaGVkdWxlKCZkZXZf
cHJpdi0+ZHJtKTsKPiA+ID4gCj4gPiAKCg==
