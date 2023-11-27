Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0360F7F98D6
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Nov 2023 06:43:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 028DD10E074;
	Mon, 27 Nov 2023 05:43:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC4CF10E074
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Nov 2023 05:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701063819; x=1732599819;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=rZ/UYCKnqKZezBMs7JtrGqhXQHme46yFBEqoJ9PB9Ps=;
 b=Ars51TDMVpsAwYdYbmaHqwA1PJnCLXikapIwCMjk4AYUZNEOERKqjveZ
 0TSNzPg4I5yAJSfbSslXTdDPF4rpuPqfGk/EmHFR0ekUzavHpWCiSVn7U
 fPp8N0LvjyD0USPKbvlPwOxw0Y9HEOdSz2pVoNAIcoXq3rt5HkH3JM29r
 5ubdL4VecSt6bcIf1KbVKVjWrbROFTNDij5n0IUSJ+h4VpnqwuO6W3fqI
 9t+Q0qfxb0Ggkgs+5AcTZM9pCmmAn+1ceC9iSGuH/TzczJ4hQ1I9Cv7CK
 CTejOqrtHyOooZ6FosrvTsceiFSSAzOojksCllce0x6zf190ZijXht4R2 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="456970431"
X-IronPort-AV: E=Sophos;i="6.04,230,1695711600"; d="scan'208";a="456970431"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2023 21:43:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="885893789"
X-IronPort-AV: E=Sophos;i="6.04,230,1695711600"; d="scan'208";a="885893789"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Nov 2023 21:43:39 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sun, 26 Nov 2023 21:43:38 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Sun, 26 Nov 2023 21:43:38 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Sun, 26 Nov 2023 21:43:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GV+3Mg9YbULMLEJGE1+xsA8fZgG7xWNP22qWQvLjU1gjVWRcW5qNNbw/6XIPpVSUFJhlwuyfNg1N6xczuNSH5NKor2mqEJnlVFDt41x4ODxnqZ1HS/QjGQvLgQWKzx+13bz6li5L6yywNUQ5vGykHUzkP/J2Ft+dyYNOBgUFn19YvsNcZRF40OqS35PxU1SUyZVkKuPA7DttbmzkOqSXCO9ihopYLpt+PHqfICU5g/AEqADOmIx4tUf36DuuXw0Xx76IeWBod5zLJISSUxffM95DRoyFnnKUkmYxFPXp1n8wLG44GDsmDf2Wdqzuf/F89+7rhrON8n7nGh5Hx8oSmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rZ/UYCKnqKZezBMs7JtrGqhXQHme46yFBEqoJ9PB9Ps=;
 b=RHIlpLAxOix3NDDHW7WC4eVLRru9DJNOFo8DjdXI2BofX+6fYh6xD1vPg2yKsRDSt7bobB/eNyQ5fQNGYfZCen2Nq86Uekv4bjWuD3XJuLDSUUfVvly7wQ0hP9Xt0KePwOdEXR5BfcJqWq3rSO7u4I3eeAXKa0KoeQSBoT0tU2uYlYXa5smwCbYg9EvVpHicr/taR8q0x1+gVqCv3ZtJnh7VLfkuLlD1JTWShsk0ec8INiMLpHm9tZmAu33OAUMnBVAuH5PE88a19P47u8ioNABG2BXeDUDgCAwQOdm7GGA0q/75lBYTjvE6nELH8WAvQHLlll9DsMqv2tfs/4DuAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM4PR11MB6190.namprd11.prod.outlook.com (2603:10b6:8:ad::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7025.27; Mon, 27 Nov 2023 05:43:37 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892%3]) with mapi id 15.20.7025.022; Mon, 27 Nov 2023
 05:43:37 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 0/2] Implement sel_fetch disable for planes
Thread-Index: AQHaG4tG76Cv9GMYhka27ClueWjfNrCNsj0A
Date: Mon, 27 Nov 2023 05:43:37 +0000
Message-ID: <d48babea42cc124b8f9ac44b3eb2a86a0adc6b53.camel@intel.com>
References: <20231120082606.3156488-1-jouni.hogander@intel.com>
In-Reply-To: <20231120082606.3156488-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM4PR11MB6190:EE_
x-ms-office365-filtering-correlation-id: 939ee94a-b89c-4b2a-97de-08dbef0bcd81
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ai0RsBJ8FX8NBt31md9qH3nKfoXFDEzhC8qgeqIg9NuPzoe1lPEllK3h0o1kVZ+wcaD8tf0yDxdDNfrZclyyZPcc94qe1kfg3/PwcLbu5KAh91pHItjD0n16uC/sCaqqhNlRAfD8sSoRCoxn5y8b6vHml6xNEHz2I2nTajMrICDEubj1amSsuxqok7E1SGCkB+nRMmhwFKiQn0OrFo1gBfeaGnZpg18qUAAxyjqHyKIvY5lMRNeCSsm8SkjAoT+oNQp4yVUqC/LwcfqBH1+I2X0L46U9ddoIcxPZ31ozMPYCEnCLHemawBYss2U+WBMLI9nmhIk0DsT00VzY64lhTZe0rLBHHov8dPok/8K4SLxtAKu0VDOTMjmafjkMH8ya4uLKvwz5OfFBlwjzArOAC2aKesLSmvlRDLjjmHPWRJTybP7sdJ64HWMWJfINMbf5y9+zwWxPaYPFUvu+YPxX/1LiiLdW8emrUHmfo8sKnFj8r4Lxrgwtxlf+pS1QAH3eHeFdfBy5GIzIYYS7hkAyICeC9x5/nfA+6j0hkfGo7P2lLOVnvCBRDiX1syTN/mocHCqom9Kvjz1Ai4nOBLntOK2kQGuytjD4gAIZ888WG9xOPbquH3MZRGEDU7W3OyxZ9Edt1ThHfUrQNbNtKLiWT6VbTVZDdJId1FEByoZvWcY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(39860400002)(366004)(396003)(376002)(230922051799003)(230173577357003)(230273577357003)(64100799003)(451199024)(1800799012)(186009)(38100700002)(36756003)(38070700009)(82960400001)(122000001)(86362001)(41300700001)(4326008)(8936002)(8676002)(6916009)(316002)(66446008)(64756008)(54906003)(66476007)(66556008)(91956017)(66946007)(6512007)(76116006)(71200400001)(6506007)(478600001)(6486002)(5660300002)(4001150100001)(2906002)(4744005)(66574015)(2616005)(26005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dTlVNGttbDBnQUNjdldKcG5IVnZBWGJsQTEvTlJ4cWEzdmFGcjFvQ2NiNzdv?=
 =?utf-8?B?UVhtOTQvczRJd0syUVpWYTRLeVYrQWYvSXZuQ282Z3JRa09uNjhwQm1YYUUy?=
 =?utf-8?B?RUhtM3loVks4NC81ajFja1FVdi9FbFpLNmpOVlNKaUxxeFRGNlZ0enFvYkZZ?=
 =?utf-8?B?a3hnUjU0ckY4VXJrSjdiVE5pZVJSeVh2NFlCQ25jWjVQd1F6R1VnZStNSVhr?=
 =?utf-8?B?VmhMaXpmcE5JbnppMlVZN1RhaEpUMEc0emlscklMaTlNR3VEMnBxaTdnRXJ5?=
 =?utf-8?B?bXdSeWJ2KzVJdmpJbmhqWUpDSERHQ3FyM0tsWDhYOVhhR0orZDZCdFB2cUxR?=
 =?utf-8?B?YUdkaDhqNklhWVl4bk5tcXR3eXBsVnZyeEhVeWEwSnVodXJxbXZQYmllNTNq?=
 =?utf-8?B?eE9FWXI4eEFIMTBNbmljN1FFdjgxbVd1NDgzZmEzbmJ6UzJaZVZ6MzFhZXVJ?=
 =?utf-8?B?SjhTUG12TFArbDhWZS9VRnl1b1VBTTExNktQUGpVbkJFWlhabW12OCtmdERq?=
 =?utf-8?B?SlhQaGRhT2o5TkJJYmU3QVNHb2RMajNvYzkwdHJrSkxRbHhDVCtTK2JIbFd3?=
 =?utf-8?B?SnBDdEFrWkdzME1HZkVCYlpUM0Y2bWYxNmU0b2tCQ0d6ZmJOSWNQNFZDdTJM?=
 =?utf-8?B?S3l5R0FKOGU5MzN4Q3dnaWZ6a3lpV1RhR09BZWdmSitnWmtLVk5WR2pMVVRv?=
 =?utf-8?B?U0tYaG5tYkUwc0FsUlVzVzNaRWpHWEtGOUQrOEtQcWdqYy82c1Y5UnRoVHoz?=
 =?utf-8?B?dm05TVg4OFNjQ0d1OGRIYldoOXlURkdNVVM4TUNMWWMvQ0NnanJVVzlIMmJK?=
 =?utf-8?B?RlkyVW5KbWdGb3h0bW15NC9JZXNvSkxjRkJCWnIrTndqY0FwaWYvWkVNQmQ3?=
 =?utf-8?B?em1yeU1TWkRIcXRJQWo4SzhEcUVwVzRoNkd1ODBXY1VZNEFlTFlYZ2JhdllF?=
 =?utf-8?B?cEMzNEZFZXhFQUd1NG9mZFRDcVdqV2FDblFmN3VaT08yMEcxYzNGbExEUnc5?=
 =?utf-8?B?RTYyanE3RTlrN0YwT3dXaXpnNmtmV2Rsb01jdzUxNDFjd0JaSHcyWGdPbzhC?=
 =?utf-8?B?QTZhdDdEZERrVHk3NmxyWTBNTHlaZzRubDlwUVd2S25Ccy84SG1IMkZyNy9T?=
 =?utf-8?B?Q0g0RnpzaEpRU1dubzl1WHdUR0FaNXUveUYxbGFidFZiSFA3eUVPU1FHVFJp?=
 =?utf-8?B?YmVwWE5aWE9XaFdaNVRlZk1VREQ1ZmxNMndOZmxkN0FhaWRSNHRXd2NWbEhx?=
 =?utf-8?B?MnpzK1ZmMlpVQkE5RFMvOERpM21VVGNkR0cvUGtzL21ONXZmVHJMNXpwZ0ph?=
 =?utf-8?B?MzZEbWFxNksxL0tGak9GcFN5ZDVneGVYRVVTUVc0cnhUZVNRK2l1alkwbFBN?=
 =?utf-8?B?VElNSHhEZ1lGSStpQzZaWEk2ZVVNYVl4UnFsN0hsY0pKUkQxK29MZHhUaFpY?=
 =?utf-8?B?d0tVWjVWZzgrWDk3WUo0ZnhaTEFhaW1ycW5YR3hJRDk4cWN4bGppVHZMWGVN?=
 =?utf-8?B?cnRBTUxvZUd5d2toK3FWbFNvOU1FWGRUSWtDamFYamxUa0ZPZmdLNitDWGQy?=
 =?utf-8?B?NXc2UXAyaEcvbG1CRE9QSDVQMkVaYWtLWEl5ZFN0Y25MSnB6MFlRbWRDYmFO?=
 =?utf-8?B?ZlRzdEswbEZwSFJGVDVuaEQ5OWU1UFNNS2ovaDdNcnF6UnB2cEJsSE85UHJX?=
 =?utf-8?B?blJmVDU1V2VvUHNoT1JOc25qd05xL2N0cHd0eG5udGVvRjdMcnpxZmt1UXl0?=
 =?utf-8?B?QnlxUTRWdk9IMmVsYUNDaE45dEc2UFhYVUlXdEdRVC8vMi9VVit0RGlYcW9T?=
 =?utf-8?B?S1ZVYlBtb3p2WEo5TjlkUXR3S0hHZWtuSmZ2Q0dkM09Ld29SbDV3M0FqaUpI?=
 =?utf-8?B?akgvL3hyL0FzWDl3U2ttQjZkckVSSEpTZWNMY2RocXBEbDNubzM4UVJ3S2NR?=
 =?utf-8?B?VVp5TjMzUEFyVWxWNzkzeS80K2UwZ1Q0eGFYekhrRzNEbDJjLzRhQ3l1Y2VF?=
 =?utf-8?B?RzQwZWFDanBKbkFFalNPcjdPTEJyQnpQaFF2TXZlVE12R3dXMld5dDNTUXhI?=
 =?utf-8?B?YndJY1pBelVDc1pGR0ZqNG1idFg5aVNpUnQwU1JxVVBoTThlc0FXdWJBNlR1?=
 =?utf-8?B?dE9uYW5hakxGU1FHU1pCdXZxcWVjZTZ3bTFhL3pLWDZIcmNJd2UvaXZkNUFJ?=
 =?utf-8?B?SXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <30E44DECEC57CA4996CA0C341507FEFA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 939ee94a-b89c-4b2a-97de-08dbef0bcd81
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2023 05:43:37.4155 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b+hzapn52iggcW/PfUPWRDe1h15/MJvHUvyB2ybpoBdzdOrVLLao4oA+T+GXCURCNtWog4WYUWwp9nizsnpereupDqMDDlr3uL9SkD9iRZ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6190
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 0/2] Implement sel_fetch disable for
 planes
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

T24gTW9uLCAyMDIzLTExLTIwIGF0IDEwOjI2ICswMjAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IE1vdmUgcGxhbmUgc2VsIGZldGNoIGNvbmZpZ3VyYXRpb24gaW50byBwbGFuZSBzb3VyY2Ug
ZmlsZXMgYW5kDQo+IGltcGxlbWVudCBzZWxlY3RpdmUgZmV0Y2ggZGlzYWJsZSBmb3IgcGxhbmVz
IHRoYXQgYXJlIG5vdCBwYXJ0IG9mDQo+IHNlbGVjdGl2ZSB1cGRhdGUuDQoNClRoZXNlIGFyZSBu
b3cgcHVzaGVkIHRvIGRybS1pbnRlbC1uZXh0LiBUaGFuayB5b3UgVmlsbGUgZm9yIHlvdXINCnJl
dmlldy4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiB2MzogQ2hlY2twYXRjaCB3
YXJuaW5ncyBmaXhlZA0KPiB2MjogTW92ZSBzb21lIGNoYW5nZXMgZnJvbSBwYXRjaCAxLiB0byBw
YXRjaCAyLg0KPiANCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+DQo+IENjOiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiAN
Cj4gSm91bmkgSMO2Z2FuZGVyICgyKToNCj4gwqAgZHJtL2k5MTUvcHNyOiBNb3ZlIHBsYW5lIHNl
bCBmZXRjaCBjb25maWd1cmF0aW9uIGludG8gcGxhbmUgc291cmNlDQo+IMKgwqDCoCBmaWxlcw0K
PiDCoCBkcm0vaTkxNS9wc3I6IEFkZCBwcm9wZXIgaGFuZGxpbmcgZm9yIGRpc2FibGluZyBzZWwg
ZmV0Y2ggZm9yDQo+IHBsYW5lcw0KPiANCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2N1cnNvci5jwqDCoCB8IDM2ICsrKysrKystDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoMKgwqAgfCA4OCArKystLS0tLS0tLS0tLS0tLQ0K
PiAtLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmjCoMKgwqDC
oMKgIHwgMTAgLS0tDQo+IMKgLi4uL2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFu
ZS5jwqDCoMKgIHwgNzggKysrKysrKysrKysrKysrLQ0KPiDCoDQgZmlsZXMgY2hhbmdlZCwgMTIw
IGluc2VydGlvbnMoKyksIDkyIGRlbGV0aW9ucygtKQ0KPiANCg0K
