Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 483DC62FC0A
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 18:53:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 870E510E238;
	Fri, 18 Nov 2022 17:53:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53C0E10E79B
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 17:53:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668794028; x=1700330028;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=1WJG3SEARzAshDxUXwVFJNTG1L1UkPt0qKzONRKdnDg=;
 b=QPeQLZWtLTD0/OFPAwnGOK2ftMbfEDTDUADLhYGYrWTysOe2Fu1VTYgR
 V7WJ0Xaco8uuM2+31hyuYDGxlROrfOV8mpi+joE3AbuRtJShYYPWG6C14
 bWERB9I9fgmrpnyJYpcNvvfaJjFbRcDT3sRzpvwo7rL5ortYzGkdjZ+x0
 lkCJ7Rlgz7BLbak0QtSj161UJFvYsgm8iNIJ7iK8CyM1n3M/OOH00SIf5
 OpO1pJq9/0RVHn+WBotyGBam+tL8OayHKg2ORm0kWF0Y1hRTeEwtaphkI
 o+pSAKK3KnC2DAap5erSdhqV2uxGxe7gktJ8K0CQGlNKM0XDo1GPK82Z4 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="292895061"
X-IronPort-AV: E=Sophos;i="5.96,175,1665471600"; d="scan'208";a="292895061"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 09:53:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="618090683"
X-IronPort-AV: E=Sophos;i="5.96,175,1665471600"; d="scan'208";a="618090683"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 18 Nov 2022 09:53:46 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 18 Nov 2022 09:53:46 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 18 Nov 2022 09:53:46 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 18 Nov 2022 09:53:46 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 18 Nov 2022 09:53:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GZ5wAYIeG0FCcsfhLPnNp6uFMdrDgHgNNGpPPMtM9z+vq36rJE/sc5HRp+chQ4MRKUx67R0NU7s4qTWTV+mien6hSmgGVqGS7jlNCJrXZ4hQAbPL2naHSvI32pBcdxMqkTQhxFXpo4GnvIPN2qSwWD00Q+91kp9gtrEtJbeQz7H4VN1PU3Cyls8iv3WuyzAheVDiL1BkcWrpUD47Iy4tJDe2kKybrRCkw+fxzPI9ZObkc3PG69dwdFq9sOogUatrJHOgWRifMRO02N+r8QR+IOsvRbIbGuI5Esa71H0sISwmjnwOyJqh+VuhaH4/mbJjf60u94sR+obAAMvHJWwjlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1WJG3SEARzAshDxUXwVFJNTG1L1UkPt0qKzONRKdnDg=;
 b=DdxZOp8a9uPC5WaSX2tAHo4yAudjwrZnppe/BXbcvT5h22LMV5pddfC48ZqpMUrHzLvp+QRr+/4mrZ7QuVVaE5TcbR9NiFBiXSU+8NKyp6an/izh5wQ2HPpTbH9pPezq6+JbH+0uLVUH17nluCkXSSlwSXpebOaWqtYTFwcZngu7plHL3R8dtA1dCFPbNMWGXhT+rYedIrmEoR7lWt6O5tk5mR900SCroEeBXsqDcOX7tqkT18wRgWYjDGYxdbUhUsHnAzdIOqj/PU8SNMTmxjL8kKsrBFkA6mS07qJUDQg1CgEuyYwLGl05vO6/8Z6OiY53qc9rDXX5wYH8PExaWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MW4PR11MB5889.namprd11.prod.outlook.com (2603:10b6:303:168::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Fri, 18 Nov
 2022 17:53:44 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488%4]) with mapi id 15.20.5791.022; Fri, 18 Nov 2022
 17:53:44 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 14/20] drm/i915: Make .read_luts()
 mandatory
Thread-Index: AQHY+D9JKnK95C+6YESQaWyGs0PH2K5E/KRw
Date: Fri, 18 Nov 2022 17:53:44 +0000
Message-ID: <DM4PR11MB6360F19BFB6469F79A3E82DFF4099@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
 <20221114153732.11773-15-ville.syrjala@linux.intel.com>
In-Reply-To: <20221114153732.11773-15-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MW4PR11MB5889:EE_
x-ms-office365-filtering-correlation-id: 9aec61b5-b25e-4b82-e723-08dac98dd614
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Kbw3HJa7x5lwoVtRDBFbCMZ/mIOSE81ot1eJ/oJp8D5Vfp5rRSuRHlqW8hb8Wx54N9EL/f7hClaIjd7QTMA+jUcV7qxgUIh6vcQfJhkTKipdOjshctxE190rkqKeXzQlGnp3k9DPmaGcjcC9AhwppKAMhsFSSfszqSsg8+8PkfGPA1hIt5xHPd22rGXkhQhnjkD4wnecy/lPZTUOvtuwuJ5A3P7iune19dhdlw/fgmwOqBAPLOEK07UA6gWZoQSfeYRlHjPEqBnNWwRtVTe84FD66qbDOGdebNUAl0Xjh2o3tCdoasncs1ZCaXOgDLJovzsOzwcJzu8QMC+JnfAC6S38fwJ5QaEkeomsl7EURvaddbzBpRW+0SSc6B5e9dwLq6QAaIgoxu424DZintH+OCo1uPeWtgrExD6/DEZbMjOHJxbhvJ0SUi/+vzoXN1M0p8jHC2jplGl8tABER/GX55qSMUhkbC1gjJXdzzOyrzzLOM8JzL51KQSqZnlnsXo2itGYNdpHUmdFwLxdr/1dh/wRkAaPo+WMsTT6KOslBudpcMciQIA7CIYz4S730gcy7DOgLYstE9/TMs5EIsOjHgaU9IEfwyrynxY5qs8CgLOhGdFJ9Af9TMcIgr5I2smaogg/fWvqn6BUGLOdnUV2q6xgcfqgDg1oOcwxxznlhf7k9tD8nvmY338eJLdQUaCvvQJriJHRzPwh1Awl/CZoL2hXDpC/X+q8lhYUrMIZunA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(39860400002)(136003)(376002)(346002)(451199015)(86362001)(33656002)(2906002)(52536014)(122000001)(82960400001)(38100700002)(8936002)(38070700005)(83380400001)(66574015)(186003)(110136005)(316002)(478600001)(66446008)(55016003)(5660300002)(71200400001)(53546011)(66556008)(6506007)(76116006)(8676002)(66476007)(66946007)(64756008)(41300700001)(26005)(9686003)(7696005)(142923001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OXJSU0MwVGFFV0Z5aVpGMlZHQ2pzVGZ4QmNNWXlBSGFTRW1hSG5Vc29sVmVy?=
 =?utf-8?B?cHhQbzgvQ0RqY1RRUzVNcDRBbDdVeUozQlBPaTh2Rkc2dXhGNGFUTElUcUs4?=
 =?utf-8?B?anJWMlBoOTE0Q1JJdnZZcmVabllWaFB4UG9ySng3WUlHMy9lbUJEVWczZDY1?=
 =?utf-8?B?Q1B0UUZqb3o3UGcvVnk2R2dEOWUvWWhaYXRFeTlIVlV2ejJTaUJSRUtMMnMz?=
 =?utf-8?B?OW1uNm4vUC9QM3dnbnVWaDJJU1pVbmJHbzZYQmk5WkkyNmFFZFVBem85SGlB?=
 =?utf-8?B?QUJtT0JLQXNSSmlUNkZRU3VWWWNaR3c4YXhQWXF2N3ZqRzlvaGNuVHhIV3Jh?=
 =?utf-8?B?Z3NtYzJBdFBvRjlnNWxMcjBycmpvZW5hcmp4TERKbE5XQW1MRGJoZ1pmZno2?=
 =?utf-8?B?bUN4YTJmcnRmN2hDOU13cENybTlWaFBuYWhjR0hCREJWWGNHVy9zR2RzVE0v?=
 =?utf-8?B?SkpSdkNibzZCVHRXaGs2clVjOFFvZTY2TGd6NzNXTGFYSVlXa0txN1U4VnQ0?=
 =?utf-8?B?U2RTTFNSYWN6eTlXdDlCejVVcnU2bFZScWRTNk5Jb3B1RWhVeUJSVU9oOFVp?=
 =?utf-8?B?NzdmSXY3QXlMK0F3S0hEZFdBNzhpcjFpZ0pmRnlEaWlnYmF0UW5GcEx4SFBB?=
 =?utf-8?B?Z0I0UERYdk1XUVRxS29lSUxSaE8vbVlNUjZJbXhIbW5RQ3BoRysrS3hBR2hW?=
 =?utf-8?B?M2t3NGZIK3dWNXA3OUJ3RWlWc3ZFeFI1QndlbllPWUM3ZmlRRVdwTTJsZmVr?=
 =?utf-8?B?eThhQVFkSnEvdXFPb2xRVEpOYWVWbW9UYm1vNjdxUk9qai9WbEdjUXFJU0N6?=
 =?utf-8?B?bnB2VzltOVMvOEdOalZlait2b1hMU0VGMHliQXNFZHEwUzNnRTZXdW9rT29z?=
 =?utf-8?B?UjlzSFlSa1lJbDQzSmYyRytXcjNxVlg5c1RXcFQ5cDJmRmJXMDFBdTFJbzd0?=
 =?utf-8?B?eElJdFVxcEJUcVA3U0lmc1p4YTBxRHduNEgyMTBBaWpDQjN3VHRjK0p6Ymg2?=
 =?utf-8?B?SDBFNnhucmQrMXBaNnB4QVIrYzEwL3BENHVwQTlMWXpZN2lPa01rbWtDako4?=
 =?utf-8?B?YnEzNys2OUJkaHpSTTR4dzNOWGtiSmU4TCtnaUw5Z0ZDeWVRY0dSbVZTRjlE?=
 =?utf-8?B?NGFUb0NkZnJqZ3JURmMrbHFLMjhaS1J5a0xwc3hmYi92MVdocDRRaExOQUhz?=
 =?utf-8?B?RFFMRTY0Y3ZuMEZqMWZ4VUx3cWFUUVJHTVQ2eUFwa2dXdnRvVFU2OXZqTGxU?=
 =?utf-8?B?RmZxUU0rUDN6TEM3bmcycmlVNUp1dTFqaU12Uzl3T0hWSFVReWsyMm5DK0Er?=
 =?utf-8?B?SzF2cE5IRXFDbXRJWFlCZUtSLy9sRnJFdnlaR1I2RGxDSmhOZFhxcUI1dXBz?=
 =?utf-8?B?ZjBteEdyVU44NS9lREZ4WGRDTmpPWW5HdVdQOXJHbTFwRXA1RjVmWkRFd0h2?=
 =?utf-8?B?V1hwZ3g5b0ZzSUdUZ3F6bm5TR0FNMU5NaXhid2p0eDlqSXF2SnI2Z2RpYm5W?=
 =?utf-8?B?Z0RtNkVXWFR1eHdEWndQMS82THJIaVVBTHprQWYrVnBRT0c4U2VKNUdpbys5?=
 =?utf-8?B?UnQrL2M4c0UxdmxRYVlBc0VhTWlveWV0eStSbVBNRUhuNEVqSWh0TzhLY1lz?=
 =?utf-8?B?ZU5MQ3FudUM0alFtV3NVZ1JNeStUbUcwN2tnWi8wTUM4MlZSMVllN3NpUmVE?=
 =?utf-8?B?ZjZwbWx6NVVpZUtCZTNnbHYwVjB2alhHQjVzWC9JVXFmdm5CY3ZXK3RlblhO?=
 =?utf-8?B?OTE5ZldReVE5N0VEWThhL1VKYTJFYUxuNnZlZ0VnZC92UlNSVkxRa3dUeVp6?=
 =?utf-8?B?UUEvZFZZNkRmakRnaSsxV0hjaGw3S2JZYVFBWDF1OVNDRFkwb1Y2cmFITmtl?=
 =?utf-8?B?OHBCdDkyM2VtelNhWGhnbHkzV2g3T0orRkN3ZGg5OFk2TDMzY3N3ckFNSUVC?=
 =?utf-8?B?R0F3Rys2NDc3ZS9KaklsOUM2b0ptVW9QUCtGc0dsWURFUEFJNmFJWUFLakpV?=
 =?utf-8?B?cTdvNW8xMjl6MFZHSWZNaU94N2hpS20rSlE5WkVzQTJIM3Y4SFFhNzlsQUt6?=
 =?utf-8?B?UTUvZDJjT3A3VDZoK2tFVHQ4RGcvelI5WFFZNkN4QnZaaXhaK3hKbzRmcVBM?=
 =?utf-8?Q?BNaZIxLbd/5qt9ZfhrZAyN+dh?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9aec61b5-b25e-4b82-e723-08dac98dd614
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2022 17:53:44.5299 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6eiSypE+AfE2jC/1GY/n90bp/aWMsFB83oAg7L4r8pQ80Gcvqmal+7KIxFgzfndoCgxfQGLBKmXfPU36wcImEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5889
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 14/20] drm/i915: Make .read_luts()
 mandatory
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZSBT
eXJqYWxhDQo+IFNlbnQ6IE1vbmRheSwgTm92ZW1iZXIgMTQsIDIwMjIgOTowNyBQTQ0KPiBUbzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBb
UEFUQ0ggdjMgMTQvMjBdIGRybS9pOTE1OiBNYWtlIC5yZWFkX2x1dHMoKSBtYW5kYXRvcnkNCj4g
DQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
DQo+IA0KPiBFdmVyeSBwbGF0Zm9ybSBub3cgaW1wbGVtbnRzIC5yZWFkX2x1dHMoKS4gTWFrZSBp
dCBtYW5kYXRvcnkuDQoNCk5pdDogVHlwbyBpbiBpbXBsZW1lbnRzIPCfmIoNCg0KTG9va3MgR29v
ZCB0byBtZS4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29t
Pg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jb2xvci5jIHwgMyArLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBk
ZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NvbG9yLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NvbG9yLmMNCj4gaW5kZXggY2EwMWIzZTZiNTg1Li5mMGJiNDIyNzMzOGMgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gQEAgLTEyMzEsOCAr
MTIzMSw3IEBAIHZvaWQgaW50ZWxfY29sb3JfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZQ0KPiAqY3J0Y19zdGF0ZSkgIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjLT5kZXYpOw0KPiANCj4gLQlpZiAoaTkx
NS0+ZGlzcGxheS5mdW5jcy5jb2xvci0+cmVhZF9sdXRzKQ0KPiAtCQlpOTE1LT5kaXNwbGF5LmZ1
bmNzLmNvbG9yLT5yZWFkX2x1dHMoY3J0Y19zdGF0ZSk7DQo+ICsJaTkxNS0+ZGlzcGxheS5mdW5j
cy5jb2xvci0+cmVhZF9sdXRzKGNydGNfc3RhdGUpOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyBib29s
IG5lZWRfcGxhbmVfdXBkYXRlKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsDQo+IC0tDQo+IDIu
MzcuNA0KDQo=
