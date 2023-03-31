Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6246D170F
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 07:55:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C7F710E323;
	Fri, 31 Mar 2023 05:55:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C9F710E323
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 05:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680242134; x=1711778134;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=+aCrKvjqh1tSBkIA/x/om8F7RBokEFd4oA6yqwvZc4A=;
 b=RaYmF9/J/YcmDm5hWRxWqgowC3t2jv1Uqbr4r/snAXjbzqP91P3lwqAQ
 l0PCry2sUYK1g0qb/X5YDWtBKEakkUEJL6JjH32eE1lKJ3JPtik68hYPl
 5ByGB665eVZesdh1b/09jdBoS4LP7hUdJ5nJvCwaoEM/IlMn6ekB3e0NN
 eSR99Yl/uGgGWNRSFTzPn7Km3KYI838x/8iG2+rWAJxPXYRwkfJpStq9X
 +RYDsjAgn78erqGrxzICe+v75SKQ1jtYrtNNxZjPbdA33xyzqR78pK4HH
 3MEARWH43ZlArKLr9i44aTSsE8d0m+aX3oeFeIrHS2rx+HXvuMlx4a4vo Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="427645136"
X-IronPort-AV: E=Sophos;i="5.98,306,1673942400"; d="scan'208";a="427645136"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 22:55:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="808934353"
X-IronPort-AV: E=Sophos;i="5.98,306,1673942400"; d="scan'208";a="808934353"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 30 Mar 2023 22:55:33 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 30 Mar 2023 22:55:33 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 30 Mar 2023 22:55:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 30 Mar 2023 22:55:33 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 30 Mar 2023 22:55:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eW5RnsEarQUIQQjHnY+5EtDak/zyBkJYYFMdUwLh8lqN3PzKwSPu+P0cA+QO9Y+S2kdkZYfr0VkunDlfc08cPiA3UNJed0iMLLWjC2+9qvHGRsBAYBJkPq6+2n0uTh9wtyonArz/hv48L8SxV0uFEyUorfBqRHMM5qF9vtNQlgl7W1reDWdoe1rJqgzoG7uYcaCFVTSQlFaBAHzr4DgxsTsshsDgDezUUzj1sGVmNIZytFIQ+sIfTA+A3CGoFAmozXGKSfVoLJZ0yYKeH27GQ6pCHFJ99zqC7IyxoLMbfKcjce9vNUj0a6lk7iW64e7dz6z3LU5ERLRMm40GgMKodQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+aCrKvjqh1tSBkIA/x/om8F7RBokEFd4oA6yqwvZc4A=;
 b=j4oTm8SGoDD9Fy2DGBJupifeX1jq7ocPrfCZIzYd5xAAJ2w6qYWDSuLnl1XQD5U2255KT5vjlJbVLhDVubDZUDNYOqbAUcu8eKAokwwPypfPPjxSCPsCCxUjPxYiWcXzqyx5tB/OMFPRRUEhJPeqKGRupPSPwhnqJnZM6o2PHZCr9GBLqyDNvk431wCzcyUIMu0S24e0iBNLmVpEsurNnVN7Z1mmdXGq6m5Uq2WpT6YZcqONeYH/dq1RMR0WPYV/efkvtV0P19DDajUIPzIaaByZ2LisattGhbn6gKILnK1+WV1VpLmVDME3+KbaspRCnF0r0DBNRiJMnMGYThNZKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BN9PR11MB5449.namprd11.prod.outlook.com (2603:10b6:408:11e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.33; Fri, 31 Mar
 2023 05:55:31 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb%5]) with mapi id 15.20.6222.032; Fri, 31 Mar 2023
 05:55:31 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v7 0/6]  High refresh rate PSR fixes
Thread-Index: AQHZYlA4iiqyi3AeiUOyBSuY0EezUq8TQEYAgAEl5QA=
Date: Fri, 31 Mar 2023 05:55:31 +0000
Message-ID: <6105f50f8d4662a99133d18f758b066907546bf4.camel@intel.com>
References: <20230329150703.432072-1-jouni.hogander@intel.com>
 <ZCV/SMnOWfpDf9IC@intel.com>
In-Reply-To: <ZCV/SMnOWfpDf9IC@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BN9PR11MB5449:EE_
x-ms-office365-filtering-correlation-id: 4b7c3f04-1350-41df-06ee-08db31ac8973
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wek6ZtWwflM+jCmSzo/NnhfJDm1yJy1Zp7epfjvtILNK+3cKH8Egx/TQ1F3099VYI6QuPZ9SebrHbyDoSWsFj5MiYxJvNpFzu0/+T8iwZ9ihhZwbOHz/MpElQMA/Amo3Txxu7rX8UtwjB+LEO2bMW8v0n6BpRvv4jeoeZOn0gm9qC9tXRpb3KI9A6zuOpYAerk+9oI0oofffr5AIreEY3/u75Xw5+IK2RMHlX3ekbWrN0Shp9ky2ggmgjtcvfJJ41x5/Xy0Gbualoj0jYxFalPfM6hefGQ7uXbRVmwBc5SxCGGxkuXzWqb0eGyrWLs5CgHDXFAbqQlksnwegUn65u0uLj/xu7PZXovWTDOP9xQ34XO/HEfTkCG1NueoTpzkCUpg/BFYvaKdwVKzG0d7P3/hThac3inHF5NwPpTH9oKPL5bWownm1m9suVINtk2notHfI5dRlVneHKpnPCP8DIRqW2fEG82FdIAEgE7mZOKwYRy9sL0SQjqqhiHFa0oI4NMkK1IxnA80DNvICWkoLgPkVzfsjr2ObuIgg44H8p4bh10+TYOgQED+9crIuNrdUbaMAQN0XWOhsdQl1f1006NGncyFx4Yr6qaKBIe9e0c2LB8G6srzkMszC9YUHGnCq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(346002)(39860400002)(366004)(396003)(451199021)(41300700001)(2906002)(91956017)(8676002)(66446008)(6916009)(66476007)(66556008)(186003)(76116006)(4326008)(38070700005)(36756003)(82960400001)(5660300002)(83380400001)(38100700002)(66574015)(86362001)(122000001)(2616005)(8936002)(478600001)(66946007)(6486002)(64756008)(54906003)(71200400001)(26005)(6506007)(6512007)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Nk5kZ0FFbVFCYmZGLzJNbC9CK1VkU3pSUnlqdEZuSXFuc3pveStNMHVDQmlI?=
 =?utf-8?B?NVhVcmNlNWoxb1VHWk9hNDFCQkpsL3pMaFdIeHZRV3RwOE53Nlg2UGNKV042?=
 =?utf-8?B?U0JXdlR0bXpXYXM3c0tObkhjWlA3UzJabXVQNXVRb0JBWHZCZVp6MGpHcVUw?=
 =?utf-8?B?WlJrK3E1UitmUVFwMUhrVXBFaFIrNXltWWZvcUZURmVaejlDUElialZ3eUN4?=
 =?utf-8?B?cUs3QnVmS0tvd3AxaTRtR3V6ck4zeW9iTS9hNXNFWE84ejJQR0hPMWg4UDlm?=
 =?utf-8?B?QVpTOEYwcGhXbGZqT1RSTmJYQ3JiamxLQzROakxyWEx3UlNscm9sOXcvZmZl?=
 =?utf-8?B?MGhoYzBPOEZZdlhVWjdEdUhxczh3cHprZFU1cXJZVVVrNUVYbE8yd01DckVv?=
 =?utf-8?B?S1pmZFFjQXNkSi9xQ1l1bHVydmdSS3Mxd1hKak5DcmxXMDhzaGpPSnYwZVQ4?=
 =?utf-8?B?a09XcXhrVXkxWVRuQjR1OUZuLzNLRVF6VXBkQjZtS3hqMThUOXphTDlBMnc4?=
 =?utf-8?B?QVloWGNPS3Z3U05TM3VSREM2bkxYQVIrdjNPb2tha20vS0FqaVhPUXdNenNp?=
 =?utf-8?B?ZUhxbFJLMmhqWElrNHU0Vmg3QVRWRVQ1WmM2M1JoRFhMZGw3cENsZG9NRXQv?=
 =?utf-8?B?Unhub2JwaVI1WXJ4Kys4TFIrZW1UMUF3L3hlREdyWTQyUkZiQXRMdWp1b2k3?=
 =?utf-8?B?dytWbnlFUUVsbUpWeVdUdWhSYTlrdktxajVlQUhpWWRzR2tTTVlSSk83U1V5?=
 =?utf-8?B?MFViZHEwYjZRVEdyZUh0OGZHQVh6L0EvZnVsR1hya3lTRlU5VFVrRDZnMWxk?=
 =?utf-8?B?dzNxaFQ5ejFNMzRjd3NVMi8xVnFkcnpJMTJKaEN6cDhWeUh4WnFsWDZyOXow?=
 =?utf-8?B?Ykp4c0wzWTRPa0YvYzN2ZGdneDlUVEE4UmpTYnpjNGkvK0lMcit0VDR4UEVZ?=
 =?utf-8?B?WjFmWUdTUGRDR1F2OVd2M1VkQ1pBWjBZcDYrYUNXanp0bXhxaFpJRWo5VGtS?=
 =?utf-8?B?TFNEUVJuSWJTaHBpSHo2czJSV0RUb01GUXA2NlJTS2o3b2dITVBFeFNSN1kv?=
 =?utf-8?B?ckhTRTBkRndjaGl3NXpZY2ZHTjJvejBpUWNyL1UrTXZuclVFWkx3azRZbU03?=
 =?utf-8?B?TEp6S3VSMzZWS1JqbDd1bUhDc1RWL0NZREQ3NHhuZUJ0OE00a0NTRUpyaGhF?=
 =?utf-8?B?NTNyY0J2T3BuWGoxSkRwaXdmTWhieGJTTXgwNkhSZVNxVlhkWElBbWxLcTNH?=
 =?utf-8?B?eWdsYnNMcStTTHhYdlY5WnI3cXQ2VmVNQW5aL2RpTzBEK28vOEp2OWVSenFu?=
 =?utf-8?B?dCtqVndaTUJYM3FIMEo3VEMxVnVxZU10djJuT2RrV09kenZsRWYrWDZFWWRR?=
 =?utf-8?B?bkRtR3FEZHZGTXRDMmtDaEZGb1dCYk1kU0xXRFNvYm9nODIyVXZBL2M2Mlhj?=
 =?utf-8?B?TkhOd2lSdXJmNVoxZXVCNlB0SVlmOXNUN0JyLzdtaEpVbFVjb1Y5Vm1sQ3Ay?=
 =?utf-8?B?NjgrZ1YrSjFDVDY5OEcyMm5JQlZkTUlUa1A5MFRTUk0wNXNERDRwK0Vnejk1?=
 =?utf-8?B?aWd3QU1TYWc4YUpESmlBWHRxZjJPQ2NOYmVPNW9pcFR3c2I2ZVVmVXk3K29R?=
 =?utf-8?B?R3RaUWxuaXhyRHZIU3hKL0NLVkQ1VklzU3VhMFNsUUJVbFV0eFp4RXFhMTRt?=
 =?utf-8?B?QjZjN3lrZjU0S0JlQ2MrY1lRUXNtWXozWGM3NXh3ckxUamxUMFB1ODAxL0JY?=
 =?utf-8?B?dmxydmpqRk8wWlB1SnFOYUNMM0tTenU3UGdwY0E3NW9mZXplekZ2bkV1NDh0?=
 =?utf-8?B?eDRrSXBNZW8rQ1pyRzdRZ2IydzV4SjMzd1YvNGsvUFlIcmFWUzdCWGR4WHVV?=
 =?utf-8?B?M3A1TjdsL056ZlVDcWc2cGxwSDNDR2xZMHNhZU1YZ1NGa0pUbWVNSEkyUTRJ?=
 =?utf-8?B?VTFHRzUzdFdyZDFDMXBGK3ByNGU3cEUxY0IvYkNMOWtnc0dETkpmSE1qbGI0?=
 =?utf-8?B?RVRDUUtaZTB3N2hRSkk1bC8zS3owSTFEckdPbUdSTGZXK1hlRHI2bUtOOEJv?=
 =?utf-8?B?U2ZxUUErWElvOSsvRm9sbm5QM3VleEFmcklnWlVVMGlVZEdEdVNWaGwvbEhj?=
 =?utf-8?B?Qlh5K2V3VmdicVdGOUhjYVgrTkdtWUpUazdOTzJSNUFLdUNKSnhFQjBVb1l1?=
 =?utf-8?B?dHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6DE2E27CB19AAC418FD9E71D4C06D9B8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b7c3f04-1350-41df-06ee-08db31ac8973
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2023 05:55:31.2866 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /qMSAGriWFgaeOZr8TdtdJC+sGCxriduA0KdhMLI47Hi+8bPtxfFIbI+O+rMA41kvs490A+GFFOnYMHrKGSntfq0yMEaszAhTOueWC9VXHE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5449
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 0/6]  High refresh rate PSR fixes
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

T24gVGh1LCAyMDIzLTAzLTMwIGF0IDE1OjIzICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgTWFyIDI5LCAyMDIzIGF0IDA2OjA2OjU3UE0gKzAzMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBGaXgvYWRqdXN0IFdhXzE2MDEzODM1NDY4IGFuZCBpbXBsZW1lbnQg
V2FfMTQwMTU2NDgwMDYuIEltcGxlbWVudA0KPiA+IFdhXzExMzYgYW5kDQo+ID4gY2hlY2sgZm9y
IHZibGFuayBiZWluZyBsb25nIGVub3VnaCBmb3IgcHNyMi4NCj4gPiANCj4gPiB2NzoNCj4gPiDC
oC0gQXBwbHnCoCBXYV8xNDAxNTY0ODAwNiBmb3IgZGlzcGxheSB2ZXJzaW9uIDEyIG9ubHkNCj4g
PiDCoC0gRGlzYWJsZSBXTSBvcHRpbWl6YXRpb24gaW4gcHJlIHBsYW5lIGhvb2sgYWxsb3cgaW4g
cG9zdCBwbGFuZQ0KPiA+IGhvb2sNCj4gPiB2NjoNCj4gPiDCoC0gSGFuZGxlIG1vZGUgY2hhbmdl
IGluIHBzciBlbmFibGUvZGlzYWJsZQ0KPiA+IMKgLSBIYW5kbGUgd21fbGV2ZWxfZGlzYWJsZSBj
aGFuZ2VzIHNlcGFyYXRlbHkgaW4gcHJlIHBsYW5lIGhvb2sNCj4gPiDCoC0gSGFuZGxlIFdBICMx
MTM2IGluIHByZS9wb3N0IHBsYW5lIGhvb2tzDQo+ID4gdjU6DQo+ID4gwqAtIEFkZCBtaXNzaW5n
IHBhdGNoDQo+ID4gdjQ6DQo+ID4gwqAtIEtlZXAvZml4IFdhXzE2MDEzODM1NDY4DQo+ID4gwqAt
IFVzZSBjYWxjdWxhdGVkIGJsb2NrIGNvdW50IG51bWJlciBpbnN0ZWFkIG9mIGZpeGVkIDEyDQo+
ID4gdjM6DQo+ID4gwqAtIGFwcGx5IFdhXzE2MDEzODM1NDY4IGZvciBpY2wgYXMgd2VsbA0KPiA+
IMKgLSBzZXQvY2xlYXIgY2hpY2tlbiBiaXQgaW4gcG9zdCBwbGFuZSB1cGRhdGUNCj4gPiDCoC0g
VW5pZnkgcHJlL3Bvc3QgaG9va3MNCj4gPiB2MjogSW1wbGVtZW50IFdhXzExMzYNCj4gPiANCj4g
PiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4g
PiBDYzogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+
DQo+ID4gQ2M6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4gDQo+ID4g
Sm91bmkgSMO2Z2FuZGVyICg2KToNCj4gPiDCoCBkcm0vaTkxNS9wc3I6IFVuaWZ5IHByZS9wb3N0
IGhvb2tzDQo+ID4gwqAgZHJtL2k5MTUvcHNyOiBNb2RpZnkvRml4IFdhXzE2MDEzODM1NDY4IGFu
ZCBwcmVwYXJlIGZvcg0KPiA+IFdhXzE0MDE1NjQ4MDA2DQo+ID4gwqAgZHJtL2k5MTUvcHNyOiBJ
bXBsZW1lbnQgV2FfMTQwMTU2NDgwMDYNCj4gPiDCoCBkcm0vaTkxNS9wc3I6IEFkZCBoZWxwZXJz
IGZvciBibG9jayBjb3VudCBudW1iZXIgaGFuZGxpbmcNCj4gPiDCoCBkcm0vaTkxNS9wc3I6IENo
ZWNrIHRoYXQgdmJsYW5rIGlzIGxvbmcgZW5vdWdoIGZvciBwc3IyDQo+ID4gwqAgZHJtL2k5MTUv
cHNyOiBJbXBsZW1lbnQgRGlzcGxheSBXQSAjMTEzNg0KPiANCj4gRm9yIHRoZSBzZXJpZXMNCj4g
UmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+DQoNClRoYW5rIHlvdSBWaWxsZSBmb3IgdGhlIHJldmlldy4gVGhlc2UgYXJlIG5vdyBtZXJn
ZWQuDQoNCj4gDQo+ID4gDQo+ID4gwqAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3R5cGVzLmjCoMKgwqAgfMKgIDEgKw0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuY8KgwqDCoMKgwqAgfCA5MA0KPiA+ICsrKysrKysrKysrKysrKy0tLS0NCj4g
PiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jwqAgfMKgIDYg
Ky0NCj4gPiDCoDMgZmlsZXMgY2hhbmdlZCwgNzQgaW5zZXJ0aW9ucygrKSwgMjMgZGVsZXRpb25z
KC0pDQo+ID4gDQo+ID4gLS0gDQo+ID4gMi4zNC4xDQo+IA0KDQo=
