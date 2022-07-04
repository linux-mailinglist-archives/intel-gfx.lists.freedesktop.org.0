Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D98B565BF4
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jul 2022 18:24:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E15D810FAD0;
	Mon,  4 Jul 2022 16:16:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FDC710E1B1
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Jul 2022 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656950487; x=1688486487;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yAAoQSkhrQ68HN+cspBWanq/DHm+VE4aC1K76ZyFf4g=;
 b=S2NjU4ZRdCp6WJl0yH2s/wvHTpZlhtkba/L73Yg8HkQRosP286TH6BbV
 eKU3Vrs01ktkZFDE8fIILhWVNifPSQWWg1s+/X+jVTI9Cbbn+MtFLQzLq
 YtHX3WAj8aano9W4iRem0nzV2rRRsWVNedwDY+h/Kg9I4MZaY4bTINbBz
 sJUIwmJXtQ4Efn8TED6lKGS+/9XWQLrI2gok6+yCaMPaAwiRt0MvNvGvt
 E48hG9ylD7Agv7ha2/vWOj/OSv1OALCyyVWFELMRwwrT2xRdSHCs96M+d
 V2MMvzKQ1Ki2uVzOmaR+XY/jzUPCxJSzGkWZyzphqTCpXCjNTUtNLQ2Rw g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10398"; a="284270371"
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="284270371"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2022 09:01:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="734874681"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga001.fm.intel.com with ESMTP; 04 Jul 2022 09:01:26 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 4 Jul 2022 09:01:25 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 4 Jul 2022 09:01:25 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 4 Jul 2022 09:01:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XvUetA6/hK76/yD+rAs3gJXCgRJQ7Ypmb4mLEFHjbadzuXF8rUyNDtVGEYu936N5IOLTjeoZ7/ulYCM4vq6aWjCLJe+P+GmCTpXBZKHeiiKROw3rgGQeM/A9In1ywqP0Dml98m+CwspICt6Sbiw54zcHEKiTbZYUYSJn7mrA2ZTOH9r8Hfm5zljkrXAslPG7WuHpu4f/R56LHHtk//QOCkfXG4LEHyyxAyBH2MFnPkuDguwRin31gbMqOkzowQzhKNZKVNrwe/xsqq/aO9TJMOqd+bcFZMlHCbx6zE1Rhe9ScSfanKNum7UJ7OLQ+ywBwljODi/ARSz410iG2UDJlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yAAoQSkhrQ68HN+cspBWanq/DHm+VE4aC1K76ZyFf4g=;
 b=hR1zX88xQx6Df8ufh6XM8leEtiJRHP2NKn+UgZoSUdWiSbsgNVk9GOgRdhN9/k5OkUiuNLw5wOTUYWZWSxPLsa1htW5Ul3O/d3dFVasl8gVMDrEsnQPFM8gZG4eRoZHNwkhW+F3LbmLUYxNcXLgaugwLj8PJjUI6OhhQPq26qGMya80l4QaJ3HXVm+1O3CTyUjPXrcq4WZm8FYrGI3Vln4RzrIXTBuRlXMn3yFD4krwT/qgXz4vqDMkNc8I7T2Sc60H8qkqsdJgjU+REgyjXsCz3Tci8aBy/cy+Ch33hT9ezZkoyKH9gwn1xpLAxxYCBce9Rh015hbxIrTOyHxPl7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 DM5PR11MB1241.namprd11.prod.outlook.com (2603:10b6:3:15::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5395.15; Mon, 4 Jul 2022 16:01:23 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5395.020; Mon, 4 Jul 2022
 16:01:23 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915/dp: wait on timeout before retry
Thread-Index: AQHYihUZPHLEMAc+r0ePHJMTS3iqA61t2dsAgABx0ICAABm9IA==
Date: Mon, 4 Jul 2022 16:01:23 +0000
Message-ID: <DM6PR11MB3177B4B47DC1239FB5533D70BABE9@DM6PR11MB3177.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: 3a45c3a4-c96e-40c8-92d2-08da5dd67178
x-ms-traffictypediagnostic: DM5PR11MB1241:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7JVMr+hp67T1CajIRWYGxTUwn6qvr82oODouVajBxzTKunUW5ITwNMdM5NRpHwvJkXX/cDQR4NDisboX2NOXWfwTSD8s5o+NBVi1CSy8ufxK36P28VTafL9/tfitXRQYIZn7oAz++3wtkjP8FPu2/WlZwUrlsCqoX/5Ctk8o0sndl47tkDKAk8QG58cB3jjOCeLX0AVjKFmbdNM08+WSIuDL0gj2TZXIG0e3WS6Y/QV2pkZxanhSibi4D3z9GTTDre/aySo/bXFqxUxdy7fOeuLWe+ZD6oDZvJIfdmReOxWeWyzI+Na9oPPQcO6SshqpUArY4Z7JZvdTC/h7EKM7NF7MhqG4DtyL+sl7NuBmV42w9/fY/iH7ZnPFDtfSxbqu7J8HryPynQdqeKMuvN7kFoIu9mUjdRg3XCQcjifv9kFJWiJNXEgvcOSiZwiCd2o+zoAWLlHgjXThcJNSDdH0jZYQmHtzB9ldSdgWnV/rYJOC6CMc/AFDguQCGAdv7JAmJcrYppFOHdZg9mjQY80fvJpPqTDI3j2uBy300tTbof2Dm1ZpEMvE23aaWBK7Pw11dDTbTVVC2poniESpCkM2YxSLgV0vKA1mExmphUfk4EmmN0drOM4CzsMZjF3ez5YwDLSWzZ+ASNQBVqJRviYU4Wh+eVb07TytthUec73qcl3ie58a0Z01Npm7XoKaPmuE4YTgl0+4H8WcaYLnNhMdpQb7Bh8yl0Amvq4ur5bqVKoe9ptWhhkK8efyVw/rssiEH93dS/xpFCeHaNTtFKz2hCX2jLXQMK0sfCdpYmCEQPbS1n6KkXvlI2JKCRUpqO9P
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(376002)(136003)(366004)(346002)(39860400002)(66476007)(66556008)(66446008)(64756008)(4326008)(8676002)(66946007)(52536014)(8936002)(5660300002)(2906002)(55016003)(76116006)(86362001)(9686003)(478600001)(38100700002)(122000001)(82960400001)(38070700005)(71200400001)(41300700001)(316002)(26005)(54906003)(6916009)(186003)(7696005)(55236004)(6506007)(33656002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eDIzcVJCYVVJaStmbmlxSTlmU3VROVBjUVA4Vy94OFhwWTErSmFFdlhGZ2Rr?=
 =?utf-8?B?TGNoY0JwN0RxYTRQbkhLOFhBWUNBS1lyM1ZncytHVjlraytVMzZpbUdJNUtH?=
 =?utf-8?B?RjBFTFJ4c1FVdEVXclVrbFljTmpPcjY0bm9EYm11c3VPanljMGpycU1IZi91?=
 =?utf-8?B?dCtha0pkWmpBZXNqQTRRdmRoMk1weEpKb0JwUE5UOUkrTXVFSmFsYzV2S3I1?=
 =?utf-8?B?T3dKZlBuV3FkUTF5dTJBN2QzV1FGVm5ZbTlJRWdMOFFldU5obVd0OGtNVVVx?=
 =?utf-8?B?M09MQ0FzT2FSSUhTd3YvTzl3enh3THgvUEMvRWpNT1VHcWszTlYrdElEc1NX?=
 =?utf-8?B?YzFRMEdHaDAxd2xxV1BmRTBBbi9hUWNCaHhrQzhDK0F6M09XaXJIalRXa0NG?=
 =?utf-8?B?YmFCWGY5V0JWRGNNQmJWVlZDemNQK2RadkZJTEVhQnVmZVpacW1LM1dsMzQv?=
 =?utf-8?B?MkNVcE1oTlU2OTJ3T00xeU5WWmh1VmZ6VE5lUFF1SWZVTFZ4d0xZWTZmTG04?=
 =?utf-8?B?Z09pc2EwSWVYOVJBKzhSb3lTRXFQVFZSYURONVZqVU1YekkwaGxxUXRtdCtl?=
 =?utf-8?B?OUVHU1JNUXF3MnlxVFNhZEk3N1ZRaUkyTzhLZ0Y1UlFlN3RXVjlEazdpVHVL?=
 =?utf-8?B?dGVwYWdZNmxSbTJYc0FpOHo0VHVtRDlkdjdOUzVSK05vV2RPK2MyeXgvaU9X?=
 =?utf-8?B?TW1WQlJXMmllaEdsMStEanRwMXA1Qmh6OWJNMEhLemU2amE2VW55QUZPU0Vs?=
 =?utf-8?B?L0R5SkFJT1BqL0syRGw0TXRPcndYSkZOY1BDY3ZwK2kzY2JQdVMrbEJoaGFr?=
 =?utf-8?B?SklrejVmS0pMamRyNmVTRmExakN6TWx6OW5EeXM1YThFaDkxVlVKNWFQVTJw?=
 =?utf-8?B?RWVCZDBSUlJKUHpKWFgvcEdDajdEVVFudCtrbU9oYUpib3gzeVpkVVZKMlJQ?=
 =?utf-8?B?cVRjRGhaZGNmYUU3cHovTEpzMk9lbnhjdXNhTy9nbjlJbW5sVFYyTStKbEpR?=
 =?utf-8?B?bS9SZnB1SmdUNVhxc3BCK1hxQW1GK0QraWJwVWRKTXI2SlQyLzZ5VWNpTHRW?=
 =?utf-8?B?dVJVYW5tbWY5U2NnZFVEQlY4VEUrS1BLQ3Zidy9lMjIzQ3R3TS9XbEQxakpW?=
 =?utf-8?B?VnczT1IybUUwWElJS2k5UlQ0V2toTWN1cWxIb3NOWGRRYm1QVmpSMnJKdWV3?=
 =?utf-8?B?eW8vbUhMMEFzUGpTWEszNCtiK2lwdldORWdCMXdsYWNLN21JL0txODBlOWgw?=
 =?utf-8?B?TXEyQld0czY3RGsxNi85cnhIRnFvdnUxTE5EVXZHTFh0emxZNjZ6YStSekY2?=
 =?utf-8?B?WDhSWEUrdmJVOE5naUdOYURDbExQMHoybVRwYXlNUVJyZlRFOGx6aHJXektM?=
 =?utf-8?B?eUFIR0t6WldraTJ5bWpDZDFCcVRBNElaK09IRlNaNkY4dWs4SGl4SWNCbnlN?=
 =?utf-8?B?bUovbTdZU2VNbnZoTHlMVWNvRldtcWdzZ0RQODBDWjMyanA4ayszWDFTdFJt?=
 =?utf-8?B?QzhKY2NqeFhXQ0krYVVyak9abWpjWGJoSWExK0dCUTRwcTcrMjVoeWJUN2lD?=
 =?utf-8?B?SDhwS3ZJREF3MkM2dmtBdHpyWjAxWFpLV0trZk1yMDJma2dXUEZBY1JLMXlk?=
 =?utf-8?B?ZEpGbjlYWFdQYkVNWXZmaFllTGtVeE9LRU1vV0diWGhvU0VEZE9EYTBXWlVY?=
 =?utf-8?B?aFVkY2FpcnNhS2lNUnB0TU1IbVozRE41VjJHdERqT0RjUU16c0pvcEk5bGlT?=
 =?utf-8?B?UWpjaXVwOE1sUnRpRkN5Mk5Zd0pMZTJGZFBIT0dpVFM4a2g1Zjc2UHoyMjEv?=
 =?utf-8?B?VW9oMGNRbG03enlpUnFBRzRCTkdjQTRWSUFsYWtydzRVdFdGbzl1Y0gvUHNO?=
 =?utf-8?B?QXE2d3djTWhkZGJUZVRtWStqWUE1REN6ekRNaWpMZWdDZ1RkdDhFWlFzM1hP?=
 =?utf-8?B?N2F1ejN6OUc5OFNqa1ZZRVhUVW5EUkVxSWVLS1p2RWVOY3BLZmZWK3BnVWdC?=
 =?utf-8?B?dmZwMk1uWVVEUjVUTlRhT0FiZHIyc3VsWkh0Q1VNVGdvc2tFdGYrT2VQMGQ0?=
 =?utf-8?B?dmxzNE1CRWFCKy8xYmlnY29VMURBUFRDS0J0eHVsdkVCekNTMWdQT2hDdHpl?=
 =?utf-8?Q?qLMhmn1BhaYewmXVFd7IwfmJO?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a45c3a4-c96e-40c8-92d2-08da5dd67178
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2022 16:01:23.3989 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N6b7zxfBr6zdHUcEUSxHBXKou0SuAMTDUF8nla9aReuvUJnm+wjfhgoSOTINmSI1uQADOaOkDPTe9i1n1SnDQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1241
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

PiBPbiBNb24sIEp1bCAwNCwgMjAyMiBhdCAxMjo1Mzo1MlBNICswNTMwLCBBcnVuIFIgTXVydGh5
IHdyb3RlOg0KPiA+IE9uIGxpbmt0cmFpbmluZyBlcnJvci90aW1lb3V0IGJlZm9yZSByZXRyeSBu
ZWVkIHRvIHdhaXQgZm9yIDQwMHVzZWMgYXMNCj4gPiBwZXIgdGhlIERQIENUUyBzcGVjMS4yDQo+
IA0KPiBzL0NUUy8vDQo+IA0KPiA+IFVuZGVyIHNlY3Rpb24gMi43LjIgQVVYIFRyYW5zYWN0aW9u
IFJlc3BvbnNlL1JlcGx5IFRpbWUtb3V0cyBBVVgNCj4gPiBSZXBsaWVyICh0aGUgdVBhY2tldCBS
WCkgbXVzdCBzdGFydCBzZW5kaW5nIHRoZSByZXBseSBiYWNrIHRvIHRoZSBBVVgNCj4gPiByZXF1
ZXN0ZXIgKHRoZSB1UGFja2V0IFRYKSB3aXRoaW4gdGhlIHJlc3BvbnNlIHBlcmlvZCBvZiAzMDDO
vHMuIFRoZQ0KPiA+IHRpbWVyIGZvciBSZXNwb25zZSBUaW1lLW91dCBzdGFydHMgdGlja2luZyBh
ZnRlciB0aGUgdVBhY2tldCBSWCBoYXMNCj4gPiBmaW5pc2hlZCByZWNlaXZpbmcgdGhlIEFVWCBT
VE9QIGNvbmRpdGlvbiB3aGljaCBlbmRzIHRoZSBBVVggUmVxdWVzdA0KPiB0cmFuc2FjdGlvbi4N
Cj4gPiBUaGUgdGltZXIgaXMgcmVzZXQgZWl0aGVyIHdoZW4gdGhlIFJlc3BvbnNlIFRpbWUtb3V0
IHBlcmlvZCBoYXMNCj4gPiBlbGFwc2VkIG9yIHdoZW4gdGhlIHVQYWNrZXQgUlggaGFzIHN0YXJ0
ZWQgdG8gc2VuZCB0aGUgQVVYIFN5bmMNCj4gPiBwYXR0ZXJuICh3aGljaCBmb2xsb3dzDQo+ID4g
MTAgdG8gMTYgYWN0aXZlIHByZS1jaGFyZ2UgcHVsc2VzKSBmb3IgdGhlIFJlcGx5IHRyYW5zYWN0
aW9uLiBJZiB0aGUNCj4gPiB1UGFja2V0IFRYIGRvZXMgbm90IHJlY2VpdmUgYSByZXBseSBmcm9t
IHRoZSB1UGFja2V0IFJYIGl0IG11c3Qgd2FpdA0KPiA+IGZvciBhIFJlcGx5IFRpbWUtb3V0IHBl
cmlvZCBvZiA0MDB1cyBiZWZvcmUgaW5pdGlhdGluZyB0aGUgbmV4dCBBVVgNCj4gPiBSZXF1ZXN0
IHRyYW5zYWN0aW9uLiBUaGUgdGltZXIgZm9yIHRoZSBSZXBseSBUaW1lLW91dCBzdGFydHMgdGlj
a2luZw0KPiA+IGFmdGVyIHRoZSB1UGFja2V0IFRYIGhhcyBmaW5pc2hlZCBzZW5kaW5nIHRoZSBB
VVggU1RPUCBjb25kaXRpb24uDQo+ID4NCj4gPiBUaGUgcGF0Y2ggd2l0aCBjb21taXQgNzRlYmYy
OTRhMWRkICgiZHJtL2k5MTU6IEFkZCBhIGRlbGF5IGluDQo+ID4gRGlzcGxheXBvcnQgQVVYIHRy
YW5zYWN0aW9ucyBmb3IgY29tcGxpYW5jZSB0ZXN0aW5nIikgcmVtb3ZlcyB0aGlzDQo+ID4gZGVs
YXkgbWVudGlvbmluZyB0aGUgaGFyZHdhcmUgYWxyZWFkeSBtZWV0cyB0aGlzIHJlcXVpcmVtZW50
LCBidXQgYXMNCj4gPiBwZXIgdGhlIHNwZWMgdGhlIGRlbGF5IG1lbnRpb25lZCBpbiB0aGUgc3Bl
YyBzcGVjaWZpZXMgaG93IGxvbmcgdG8NCj4gPiB3YWl0IGZvciB0aGUgcmVjZWl2ZXIgcmVzcG9u
c2UgYmVmb3JlIHRpbWVvdXQuIFNvIHRoZSBkZWxheSBoZXJlIHRvDQo+ID4gd2FpdCBmb3IgdGlt
ZW91dCBhbmQgbm90IGEgZGVsYXkgYWZ0ZXIgdGltZW91dC4gVGhlIERQIHNwZWMgc3BlY2lmaWVz
DQo+ID4gYSBkZWxheSBhZnRlciB0aW1lb3V0IGFuZCBoZW5jZSBhZGRpbmcgdGhpcyBkZWxheS4N
Cj4gDQo+IE5vdCBzdXJlIHdoYXQgeW91J3JlIHNheWluZyBoZXJlLiBUaGUgc3BlYyBzdGF0ZXMg
dGhlIHJlcGx5IHRpbWVvdXQgc2hvdWxkDQo+IHN0YXJ0IGNvdW50aW5nIG9uY2UgdGhlIFRYIGhh
cyBzZW50IHRoZSBBVVggU1RPUCwgYW5kIGdldHMgcmVzZXQgd2hlbiB0aGUNCj4gcmVwbHkgQVVY
IFNZTkMgaXMgZGV0ZWN0ZWQuDQo+IA0KQ29weWluZyB0aGUgYWJvdmUgc2FpZCBzcGVjIGZvciBx
dWljayByZWZlcmVuY2UgIkFVWCBSZXBsaWVyICh0aGUgdVBhY2tldCBSWCkgbXVzdCBzdGFydCBz
ZW5kaW5nIHRoZSByZXBseSBiYWNrIHRvIHRoZSBBVVggcmVxdWVzdGVyICh0aGUgdVBhY2tldCBU
WCkNCndpdGhpbiB0aGUgcmVzcG9uc2UgcGVyaW9kIG9mIDMwMM68cy4gVGhlIHRpbWVyIGZvciBS
ZXNwb25zZSBUaW1lLW91dCBzdGFydHMgdGlja2luZyBhZnRlciB0aGUgdVBhY2tldCBSWCBoYXMN
CmZpbmlzaGVkIHJlY2VpdmluZyB0aGUgQVVYIFNUT1AgY29uZGl0aW9uIHdoaWNoIGVuZHMgdGhl
IEFVWCBSZXF1ZXN0IHRyYW5zYWN0aW9uLg0KVGhlIHRpbWVyIGlzIHJlc2V0IGVpdGhlciB3aGVu
IHRoZSBSZXNwb25zZSBUaW1lLW91dCBwZXJpb2QgaGFzIGVsYXBzZWQgb3Igd2hlbiB0aGUgdVBh
Y2tldCBSWCBoYXMgc3RhcnRlZA0KdG8gc2VuZCB0aGUgQVVYIFN5bmMgcGF0dGVybiINCg0KVGhl
IHRpbWVyIHRoYXQgaXMgcmVmZXJlbmNlIGluIHRoZSAxc3QgbGluZSBhYm92ZSBpcyAzMDB1c2Vj
LiBUaGUgbGluZSBqdXN0IGFib3ZlIHNheXMgdGhpcyB0aW1lciBzaG91bGQgYmUgcmVzZXQNCndo
ZW4gdGhlIHJlc3BvbnNlIHRpbWUtb3V0IGhhcyBlbGFwc2VkLCBteSB1bmRlcnN0YW5kaW5nIG92
ZXIgaGVyZSBpcyB0aGlzIDMwMHVzZWMgdGltZSBzaG91bGQgYmUgcmVzZXQNCm9uIHRpbWVvdXQu
DQoNCk5vdyBjb21pbmcgYmFjayB0byB0aGUgbGFzdCBmZXcgbGluZXMgb2YgdGhlIHNwZWMgcmVm
ZXJlbmNlZCBhYm92ZSwgIiBJZiB0aGUgdVBhY2tldCBUWCBkb2VzIG5vdCByZWNlaXZlIGEgcmVw
bHkgZnJvbSB0aGUgdVBhY2tldCBSWCBpdCBtdXN0IHdhaXQgZm9yIGEgUmVwbHkgVGltZS1vdXQg
cGVyaW9kIG9mDQo0MDB1cyBiZWZvcmUgaW5pdGlhdGluZyB0aGUgbmV4dCBBVVggUmVxdWVzdCB0
cmFuc2FjdGlvbiINCk15IHVuZGVyc3RhbmRpbmcgb24gdGhpcyBpcyBpZiB0aGUgVFggZGlkIG5v
dCByZWNlaXZlIHRoZSByZXBseSwgd2hpY2ggbWVhbnMgdGhlIHRpbWVvdXQgaGFzIG9jY3VycmVk
IGluIHRoYXQNCmNhc2UgYmVmb3JlIGluaXRpYXRpbmcgYSBuZXcgcmVxdWVzdCBhZ2Fpbiwgd2Ug
c2hvdWxkIHdhaXQgZm9yIDQwMHVzZWMuDQoNClNvIGluIHRoZSBhYm92ZSByZWZlcmVuY2VkIHBh
cnQgb2YgdGhlIGNvZGUsIHRoZXJlIGFyZSB0d28gdGltZXJzIGludm9sdmVkLiBPbmUgaXMgMzAw
dXNlYyBhbmQgdGhlIG90aGVyDQppcyA0MDB1c2VjLiBUaGUgMzAwdXNlYyBpcyB0aGUgdGltZXIg
Zm9yIGhhcmR3YXJlIHRpbWVvdXQgdG8gb2NjdXIgYW5kIHRoZSA0MDB1c2VjIGlzIHRoZSB0aW1l
ciB0aGF0DQp0aGUgc29mdHdhcmUgaGFzIHRvIHdhaXQgb24gdGltZW91dC9lcnJvciBiZWZvcmUg
cmV0cnkuDQoNClRoYW5rcyBhbmQgUmVnYXJkcywNCkFydW4gUiBNdXJ0aHkNCi0tLS0tLS0tLS0t
LS0tLS0tLS0tDQo=
