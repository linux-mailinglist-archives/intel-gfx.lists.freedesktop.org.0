Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 921C77AB67F
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 18:54:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A677710E6AA;
	Fri, 22 Sep 2023 16:54:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F418210E6A6
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Sep 2023 16:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695401658; x=1726937658;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=0Qa1SmbgMChi5AqMyIKFoPV7x6bTwTLTEPaJOWSNeHw=;
 b=bxLpE34fhr5eD9eKB7fjo9bm3MKR0HKv13kZL4GfHJpDdLgeHn5lNj31
 z4bh3tfYl2o8qJpPhyQakYW26AZHWaPP0oxJowDW1E1pSKWn04NarhyBl
 rhlprHpXtadj+R0+ZqVeDkTYZBRmbMYN8Qkh4/v8NqE2Y9TsSJ49vscJl
 3vjwTLM4OQATBtuUuSL29ThNH4HiXjLIIUuSG+YJvl/CJ6TEP8B5RjoAW
 GFFX3Az2Y99b1Z1ExE9RAW3KFVnIVKumCosC/pJnvlYISVCqiuntcTtXA
 FSaJMypwx7pF/3punUcH1pLcvu+NPM/HjhcRvbRI+MLygxgX2x5SF0A9B w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="411817742"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="411817742"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 09:54:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="871312725"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="871312725"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Sep 2023 09:54:11 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 22 Sep 2023 09:54:10 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 22 Sep 2023 09:54:10 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 22 Sep 2023 09:54:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OeypbMXkj/VEKkVa85qrocAaPCjBVYwGwiq3zoRa/aj0OqLTrTAZrWLkVhHlKGSGPVY4jJ3PFjQ0nlOB5R1AuU7yjb8kjrRP0upCOBE4Zco8sW/sUMxBgsaqlmIWylepHYgqL7jwc6LsaRPguIC6DjId6DeVNaq8J6h8Paw9aLjk+8t/8IT5H8pc+NV5+hb7HGAbiFIG1/2rG8WBDneU9BGHAk5giJcARrUhD57ZlMQ2SwFUZCnlpVB8VXme1S70SZtViKaN1Ga+tVrVXKjRK5gy5HKWxi9XBknMJgNp61gaDBprdCpOz2ogEL/pfTqSdVQ95jDha8I3xdr5qXM67Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0Qa1SmbgMChi5AqMyIKFoPV7x6bTwTLTEPaJOWSNeHw=;
 b=O1lG0Ss1PAcsrgiDubPfa2fJm02wY4HfGSR4mX5587amdrdYO3HE8s3tISIIepiKqirT5fys6eH2MyG97UbieCm3JLb+eLUM+HQ4uk7W5UspbEOutYeptMIeF+60bpoQsy+SXAa8cFNohWYmPTQ9QjVcalKIdY/FJmzeO0Gl2U8r6IjIhqSQ7QUvfnYqj5f1pIS44T+GrNseKKh42OSXPuPOlju0EwNPGaO/25L4kPx2D5R3ryDTs8agmwiHBGefSAyokZAahpz0yY0eLAYctKanqUFzDl7UE/lLQ/0RbiMsmWW4/3XCYdrGQo/VJpO+ZZtuojlwG4Hp1Rh4DMe8hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 IA1PR11MB8150.namprd11.prod.outlook.com (2603:10b6:208:44c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.27; Fri, 22 Sep
 2023 16:54:06 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::7bf2:1b4c:1512:79c1]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::7bf2:1b4c:1512:79c1%6]) with mapi id 15.20.6813.017; Fri, 22 Sep 2023
 16:54:06 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [PATCH v3 1/3] drm/i915/guc: Flush context destruction worker at
 suspend
Thread-Index: AQHZ45seyo+Bgegrg0Gis1Ak9+us67AaewaAgAyojQA=
Date: Fri, 22 Sep 2023 16:54:06 +0000
Message-ID: <7f65399e79928e0b7c997f071d1f3154e26cc712.camel@intel.com>
References: <20230910035846.493766-1-alan.previn.teres.alexis@intel.com>
 <20230910035846.493766-2-alan.previn.teres.alexis@intel.com>
 <ZQMoTW4iT/9AIJ8Q@intel.com>
In-Reply-To: <ZQMoTW4iT/9AIJ8Q@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|IA1PR11MB8150:EE_
x-ms-office365-filtering-correlation-id: 58754a61-fb9c-4972-b704-08dbbb8c8892
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: A26Ng+FVu6b78FFE8imPsIda28JegKF+nANuzThwDhO0eron4eTpOthWCIFiDfuEbw/ALLp41oWyxZ11BCjhyMMzXjyNLx2qlmZo+gH0lO0x5DAVFkLkcK3iUD7Ahym1hjbPCv31PrzouX70/6ck3Browkwet+mDqw1rA/S75sXY0zpwdnOPbHL5khQkZifkeDS9fUhd7HF4oGELaA0OyOFisjJUEO8bq/Dwlexw0YpJdRTDuYAv7Ei7V95OSJGsl27vSnPD1OQzg3mGSPdBWwp/zmoik6gRpeY80adPHMoGVsNLE3FMv876wxzz7tWpVh0CAuByalPL1IYmg7N8RlQGoQF0Rr9vAYAf+nbmpKJE2yM5qoQgNHzNMc0tTTp0E38Xrd1TfgBNq32m4kmplthDBP1uQNZ0KvrA/KKWneBlGjBr6k1pUQzsd6XcFEWC1o/WOd1Pw9ZTVOY5gBtqjAoaZoUbJxIgk+16xq523pKx3Sz2MczY0ARVP8zfndeBR270yPkPJE213N5iUiDLW6qBL+42wWxEvLdRKF3y9tGzOZWjUZnuJw/pCJ50Mh6KNOyyYGhTmC0fh7minJtaXDeRubWqUksHH3D4NRAyyakkolVGA1+RsYtYJ8c/xsrZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(366004)(346002)(376002)(136003)(451199024)(1800799009)(186009)(66946007)(64756008)(91956017)(6486002)(6506007)(76116006)(66556008)(66476007)(66446008)(41300700001)(316002)(37006003)(6512007)(6636002)(71200400001)(478600001)(4326008)(8936002)(8676002)(6862004)(38070700005)(26005)(2616005)(5660300002)(36756003)(83380400001)(38100700002)(82960400001)(122000001)(2906002)(15650500001)(86362001)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Wlh1bEdhYk5ON0hhY25qUU82T1BBSXkyaGpDY203YlN6M0hvNUFxVXhYdS90?=
 =?utf-8?B?eFJmWndGNzFQWlNVbmtuSHloOUVpQit6RmRxZWJLbFV0eEJmZDRNSFROTHRs?=
 =?utf-8?B?RUwrbnZsUEhPbW5mdktsd3lDQ3lzUTBHK0Q3NGhjQ1hYUk9aT1R6ZDBKNkFJ?=
 =?utf-8?B?clV6elV6WThIWk9mOVF0ejJrTXd3cjlzZndGT1pDRzRSM0VUaVNxWFJyOGpm?=
 =?utf-8?B?MDRzUU5JK1pteitGb1RKWWRQQnAybjNtZkU1eWROZDY3L3NrMVQ3ZVMzYXlH?=
 =?utf-8?B?ZWVGT3NxMDVVRkpWNXRhdDh1UnFuMVVwVzdEZGg4Ym1DNGtxY3c3Y01CSlRi?=
 =?utf-8?B?YnVNdTZSSmtXR25iV1pJSlNXWHhzWTRadElCUVJGQWZCSWgzZ0hRK0Nwa3Zk?=
 =?utf-8?B?bWpSTGd4ZWp4RDZrUFc2QnV2aVIzZ1NXdXJ0OWE2Y1p2NCtHTnJvZGxJTlpE?=
 =?utf-8?B?a0VRODZneFJra1kxb0wyS1E0MUhtUi9nbWErcHhFNWFFUjJWQk9TTUtjOWVK?=
 =?utf-8?B?VWZvaGJTZXB3QVNWclp4NHQzVUtOOUhlbFdkdG41TDRlZVM0VFMxYnh6MHVz?=
 =?utf-8?B?cTBoQlIybE5BZTdpLzNoV3Flc3pWR1gzUjJwZ3R1SGhXNExmNjBlUlVZcVVv?=
 =?utf-8?B?T0diTE9BNFg2KzYrTThIMlNZTlRZMnJqaCtDd20xZ1cxa0ZhbkR6dnRBbUw4?=
 =?utf-8?B?NU92YXVNckdnNlljT0lwcUF5eUo5UldqdkVuTDBJcXd3ektTaDdVL0FYUTM0?=
 =?utf-8?B?R2hra2xXNHYzMUpWY2R0b2hsVHJoWTRGdDZoTGczVHZtd0RoNjBZakpEYmRU?=
 =?utf-8?B?YjUrZnNWQldub3hHOHg3ZjROeTlRcGhjK3ltTkR2Y0RuSi92MUNZNnQ1czcv?=
 =?utf-8?B?VStFSGtneTJoTVNXQ0dGUWt5YWxXM2xIc2srREZrSG1GV3d5a2oxYUVYYXhF?=
 =?utf-8?B?eDVYUFVRWWRMK00xQjYxMVcvMENkMlNxS1o1ZWloUTd1SzgwSFBwUDZySlE1?=
 =?utf-8?B?dDVyQWhlcytGMGNzaDgyc0doTjkvek1GTXpzZnkxbkVWbFJ6YW5uWlZscVlW?=
 =?utf-8?B?M0Ftc3Uxa3RaVm1ZeE1PK3VWODhUZlM5TE04Qko3RmUwN05jZ1VPUTZUSlhp?=
 =?utf-8?B?VDFDWjVyd2lNNUp2SFNuV1lObmF5MU82SENJa1N1ZmQ5aThQVTBZUUhtQUxm?=
 =?utf-8?B?SmFUSTQvajRVWDVJTXJEcU9PSzBLVXhjMTNsSFovT203MUhoVEhTVHFmODlX?=
 =?utf-8?B?MDVXVFlrMFByWjRic0l0c1N6MTBOY0pGdHFkdXI0Q3hldUJEaXhtMHdMU1hj?=
 =?utf-8?B?MEh2UDJ3Q2RucGxDU1lraHZLUFlFd01qNUVLTW9URXBkdktXdW9OaFhFYzB6?=
 =?utf-8?B?SWVvOTM2RTBaVWp1QXhrbmtiQkRrdWhQWFI2QnhTMmI5aU8zZGFJcVdlR1hY?=
 =?utf-8?B?WDBncWthQVVSQTcxaDgrWmVTMGJXTWVRMVNkZDB5dW9zTXprakIyaXBwVGVI?=
 =?utf-8?B?SUVHZi9RK0hHcWxDdEVtUktKVzR2SDVpSmJ6bktqSXZBcTBiSGlLSHBYRmo1?=
 =?utf-8?B?MGNoZHhQaTVqblc2RFEycWNRK3ZFTmVzQ1JXZzcrckUrakRTemhFblNwNFN2?=
 =?utf-8?B?RWphQlZwUXRROW9aVTg4ME5wMkY0TXNXbVRYU011YnFpR0xxRUQ2WmVGY3hK?=
 =?utf-8?B?WjRrckQybU5hM2Z5Z3NwNWFyREV4QVJGVHlLcVlKYW5hQVA3eTNXMGdGd1Uv?=
 =?utf-8?B?RXBBRzFhcjhDVFBUVlBDUmV6QUppWEcvb0VzalY0MnJ0SVc2NWg1QmVZcGRG?=
 =?utf-8?B?UTV2ckFXTGtVVFdZZ21ZSnJVMzVXNXNlUGpQQVYrR3pzWldtbzUrR1R4UXRB?=
 =?utf-8?B?OG00TVVYb1J6Mmt4elVhY3RCcVUxNmhYa3N2Y2JBM3ZadHVScnAzTmZSSWxR?=
 =?utf-8?B?T1BOaTdHYUo1bS82M0FsRW1Ed0JqaTlJUEdCRkhwaG5IVitGNUdxM2xUeTFk?=
 =?utf-8?B?b2R4Z094Q2EzZ3lmdVp3V0liMWlhbXBPWnFWcDhRcXFNNHphQ2twZ0hvQlNT?=
 =?utf-8?B?b2hXYVd0QkxHallmS21JRndrcFo0K29kaTFERng2Z1ZwMGpvT201Q0phNmR0?=
 =?utf-8?B?SkdMS3VhRlROaHIrZjdLOFd0bUNjK05COXhQL3VjWFduRXpueFlyRHhBVSts?=
 =?utf-8?Q?k3RKUISz6+wrgITLjRqGdX0=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <56D99DB7D28855469B65587EB277A0EE@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58754a61-fb9c-4972-b704-08dbbb8c8892
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Sep 2023 16:54:06.4177 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Rzn0pu/quKm8Fu77rr/cnJzLymngLJAH7rLPqeXft+thkGmiw2eUe9/oEfQT9q9EkhQntwVGbSEQ7h6P6R/tP7WGD4ROWktYJFTMl685ZkO2SyQRnF28q0U/ydIhNqv8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8150
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/3] drm/i915/guc: Flush context
 destruction worker at suspend
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

T24gVGh1LCAyMDIzLTA5LTE0IGF0IDExOjM1IC0wNDAwLCBWaXZpLCBSb2RyaWdvIHdyb3RlOg0K
PiBPbiBTYXQsIFNlcCAwOSwgMjAyMyBhdCAwODo1ODo0NFBNIC0wNzAwLCBBbGFuIFByZXZpbiB3
cm90ZToNCj4gPiBXaGVuIHN1c3BlbmRpbmcsIGZsdXNoIHRoZSBjb250ZXh0LWd1Yy1pZA0KPiA+
IGRlcmVnaXN0cmF0aW9uIHdvcmtlciBhdCB0aGUgZmluYWwgc3RhZ2VzIG9mDQo+ID4gaW50ZWxf
Z3Rfc3VzcGVuZF9sYXRlIHdoZW4gd2UgZmluYWxseSBjYWxsIGd0X3Nhbml0aXplDQo+ID4gdGhh
dCBldmVudHVhbGx5IGxlYWRzIGRvd24gdG8gX191Y19zYW5pdGl6ZSBzbyB0aGF0DQo+ID4gdGhl
IGRlcmVnaXN0cmF0aW9uIHdvcmtlciBkb2Vzbid0IGZpcmUgb2ZmIGxhdGVyIGFzDQo+ID4gd2Ug
cmVzZXQgdGhlIEd1QyBtaWNyb2NvbnRyb2xsZXIuDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTog
QWxhbiBQcmV2aW4gPGFsYW4ucHJldmluLnRlcmVzLmFsZXhpc0BpbnRlbC5jb20+DQo+ID4gVGVz
dGVkLWJ5OiBNb3VzdW1pIEphbmEgPG1vdXN1bWkuamFuYUBpbnRlbC5jb20+DQo+IA0KPiBSZXZp
ZXdlZC1ieTogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPg0KYWxhbjpzbmlw
DQphbGFuOiB0aGFua3MgZm9yIHRoZSBSQiBSb2RyaWdvLg0K
