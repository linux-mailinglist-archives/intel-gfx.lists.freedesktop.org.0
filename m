Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A55DBD5C3E
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 20:45:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1B0710E4C5;
	Mon, 13 Oct 2025 18:45:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WiLV4S/0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 285CF10E0D8;
 Mon, 13 Oct 2025 18:45:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760381116; x=1791917116;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WSoTRSpoGqXit1NU9OLC7Jc2nsBrNFqfag6DfIZ4xGk=;
 b=WiLV4S/0DYTfnythe+OQJS16+QnIY985P7rSWDVold3bWjMY+r3ucPw5
 ZxL5CPIi9PyyiNA/7orn3UJpkboUAN1bddMwvA3MO3HkIoLpdfPXAu3/S
 6MP/UErTB5vRKlejHuBP5h6hCQbR4RjbHx7K7bvvGRIbO6Ea+AlRnAHXN
 Zy7mBdim9DdnoJ8Y0JsNrQtfbMXhN2yvc6To9QqVjLBO5fSsPs2EOkCxA
 xbRhlLx6adEqTocilMf4VIeUC+SUwbFz6+10TAVY3OuNUu0QpG743cNgC
 gwtYI4WYG1gO4on6XCH832EWljVTsJKiQa5jlrD+oMPappa85OMuieW1R w==;
X-CSE-ConnectionGUID: KQ9eUZjTQlqlOC2v8JKDWg==
X-CSE-MsgGUID: GODsYu2EQdexdrcvkvWmqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="61737853"
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="61737853"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 11:45:16 -0700
X-CSE-ConnectionGUID: yDK0HKflThyjA+JwlcC3/w==
X-CSE-MsgGUID: oeusYLiSRY+lzzAIWQaBdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="180821762"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 11:45:16 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 13 Oct 2025 11:45:14 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 13 Oct 2025 11:45:14 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.54) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 13 Oct 2025 11:45:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mcbi6LXmefKaFVpJjw/9XjZbOR1cd3bKKF2ADJiyMpw1+kOSuBfEzImYbEXhjXWnXj/OpQTzWZP+mdM+VxLQlYiK20EsxYJ/5//bRxJ25zUBdsh/E10k3UO3F+d+FVAE/+yK6tkdPwNtSXNE/Gaceo3evPL/xQzKCb9fs4pO2vKMSJa6i5YrpkZYHSt3mY208u+4yQssROw47iS37FHlvRIkVuaJpjQHc+R345DYg8E/cJkNeAlIZwFmLks2sHJ32UG3MYSdr+n1tFja+evLq+5CrJ/1wl3+yNOb/1uZFRHEMQ59l7ZDG9C5J9GujHlfVvZVsyHCBMTUeYoOrhC6kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WSoTRSpoGqXit1NU9OLC7Jc2nsBrNFqfag6DfIZ4xGk=;
 b=QV42ssTfUXZZLlXi1GWSM8ThvhGjKlomP1mjbQtq+jf0awUtmJPsiB+z3huehNWz3rM1kiICuA5adLxSJ/APoU8kctDDU3jvkzw9fYhCn/u0FDZrs+z2Sp53YlEIhWxNMxHX8SWrxxshgb4iPLKgTqPoaZY0TKtuzgkzI2M+yVJZJBPOaa+yqniDFQJnfLoSjW0DR6huxg+kUH+5V055kzzxmWuVdXsBX/vkhTF+8VxGZHHzftSQBwv6KszQ8CDpEJgCOtWD9h/lmUjRERbMq7G7iCckvzEvfIh7U9qPAfozwJOaRbfot2NmR3QZWOJorOCvOED+6Gtx452UtOLdWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CO1PR11MB4852.namprd11.prod.outlook.com (2603:10b6:303:9f::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9182.20; Mon, 13 Oct 2025 18:45:12 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9203.009; Mon, 13 Oct 2025
 18:45:12 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [RFC][PATCH 10/11] drm/i915/prefill: Print the prefill details
Thread-Topic: [RFC][PATCH 10/11] drm/i915/prefill: Print the prefill details
Thread-Index: AQHcOIKTSbfGFGEFVUWHvZ7bWL7iJbTAceRA
Date: Mon, 13 Oct 2025 18:45:12 +0000
Message-ID: <DM4PR11MB63602C938D9BD1B7BFD3F23BF4EAA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20251008182559.20615-1-ville.syrjala@linux.intel.com>
 <20251008182559.20615-11-ville.syrjala@linux.intel.com>
In-Reply-To: <20251008182559.20615-11-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CO1PR11MB4852:EE_
x-ms-office365-filtering-correlation-id: f17b028a-0306-45f0-42a7-08de0a88a474
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?N3dscVg4R3VCVmltZG1YelAvTFpqMnJhS1ZQME1Ed2MxZFNRMkxZbndFd0sw?=
 =?utf-8?B?UkdhdkErVmU1N05ReWxuNDQrSHJRM2syeXkyNStLQXcydkU2TUdyQnZjMWR6?=
 =?utf-8?B?VlY0Z2M5T2pXd25LWngxNkRQaEE0Zk1MR21NY21TMU42ak9tSHVIM1hTY0px?=
 =?utf-8?B?bjF2VnhOWGVQR2pMUHpKMURvbzlRdDE5Wk9qV0dDaG9Td3VJMzJSYzdKM3Fj?=
 =?utf-8?B?NUNhekdheXdwSWNjNnVQS2xzN0V1QkFtSFJ0ZXZNUi95cThmOVViY0prdUNy?=
 =?utf-8?B?SGNPSkgvWXZsQzV2ek9hTUFpVzBmRUpBS3JmZFk4Y2RsT2JPZXRaS1ZwSGtJ?=
 =?utf-8?B?b3JLT3VRQWZUMmtJMklBMTdNNm4yMFF1Y2dBc2VMc0VLZkhuU2xNQVdSMUlq?=
 =?utf-8?B?aUtyb1FjaEQwTThZemVFSTU4am85VVF1ZVZBc1pOaGVWV3FCVWE0QnhSMUtk?=
 =?utf-8?B?TnU2T3ZIdkVqQ3JvMWFiNFZNLzBiN3lBMzVVR0J1QUdlUi9CaWpSSmMxR2Rx?=
 =?utf-8?B?b2JkZEZublI0ZTZzOEwybC93MGdzd1hmbnByUHRsZFRWTjFqZGdldEdiTnFi?=
 =?utf-8?B?bFl2TGNPMkJDM3kyRkZWS3NobzZxSjRqRkc2Z2doOTBDQTd5MitwQkIxK2dR?=
 =?utf-8?B?aG5kSzVXZ0hpWEdPMEUrVlE3MEJDNnhCQzNTelZpNXdnWHROUEtTU0FTY3VJ?=
 =?utf-8?B?NGVLcnFFZG9hamVOZmt4clZ4bVJIK21uSFZQQjAyYlpYWXliaFVDWGJCcGxT?=
 =?utf-8?B?TC8vQWVzelA4aWo2ZlViME5vazBiVTRKN2ZmbjZOSXhYSG9vcVhDdTFXdkNP?=
 =?utf-8?B?eHFaSTVOUzdUOVl2S2VqbFRndVI5U1VRWGNFMVRHMUNkSmdXRDVBVHVvdUJr?=
 =?utf-8?B?MUtTRVlNNEh4NHZDYzhwdXBzTW5YRzlmS0liaytJTzZNZXNvKzB3OWI4MjY1?=
 =?utf-8?B?emp4enQrR0ZxWVBCYitoaGZacnduNk5JSjU3MDN0b2xyTVhab3NTN0hSOXdG?=
 =?utf-8?B?N3lXay90WVhlNExoS2RxMVFGQnJhamdRTGJod1dyRGZMbkF1UEl3Ri9pYlhm?=
 =?utf-8?B?OXJ0TEMxT0dVanpoQmx3WG4xbUV4Ymx0czk0MWJVb0JzeGtXdmZOUHU5Z2or?=
 =?utf-8?B?c3BJWmJLQkYyM1F3OGd1TmFuaEZIVG1lQWcwVDQvdDgwME1WczlDTElNQ2c5?=
 =?utf-8?B?TFZTZ2cwMWl3ME5rUVppODR6QThLOVFwQVJ2bi93NGlvWXl0M1pUWjZYNTAw?=
 =?utf-8?B?d0FYNE9rREs3cGZvT21iM0hrZmdwQytQMzF3M0ZVM25pWm9NVlZrRkgveFl2?=
 =?utf-8?B?SEhpZjMwQTVyZkwxcVd0N1lDVEttelg2a3RnY2tmTE9rL2t4WjBYaDd4eEM4?=
 =?utf-8?B?N2Vlb3VoSGp6aUpkOUdMRVA0VkpwYmpmWlhIVS8zQ3pPMVBybnFXRHJhT3Zt?=
 =?utf-8?B?eEw4Y3BQcTJNNzl6U3EwMjI1SlVTR0UvMi9NU2ZBMVJudkwySE9XZjV6K1ZL?=
 =?utf-8?B?anpidEp0MzM0TmcvWVRLcEVnVVg0RWQ1SmRQV3poc0dJcWZIVm1SQTAweTRz?=
 =?utf-8?B?b1dNZDJmK0NIVUxkeThTeDFuQ2JMNkRSaWNKOGYwb043TmdQdFQyZ0hVUEpi?=
 =?utf-8?B?NXJGSktvU2YrZDF5Zjd4SU00ckFJY1VoS0UzOWlGempQT1V6VDdkbFRxZzhj?=
 =?utf-8?B?RmVSSmxONHZlZDlpZUtoY0YrU2tqWTFWdVM5TUFtRmxuZVdDVEFIQldOS3Vm?=
 =?utf-8?B?UFdUb29oeVZ6cTcrdWV3U1NNS2dZOFVIWktNTFZ0aHBWUGZqNGdMZm1zMFRw?=
 =?utf-8?B?OGZESUQvc2cycmtPcGpTd2E1Umo1aGZiZld3akQ5U2R1VFVhaWhOeEJLN1d6?=
 =?utf-8?B?Q2R4SktOUUZqZUZXSUFDRXNIZ3dlSGpmZmcyMVR2dXk3TmlsbU9ZNGh5dzVQ?=
 =?utf-8?B?aFovajNuUXhodHpSQ3Mrdi83bytKUWkxWW5OUUQxSDlYSlBjYTV1cGNjQ3B5?=
 =?utf-8?B?MFFqSU5VMjZYaUdoY3dMOGR2SkErdThIb1EwbnJxVkhXM2UvdWtwMmtZOTJM?=
 =?utf-8?Q?GamV9h?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MEZ4ZDcxenEvU0tXODJxRkVMNmEvRm5VYTdadld3M1ZqWWwza2hJU2ErUGNM?=
 =?utf-8?B?QWM2S2NBTk9HcGZvZGpUZGhKRzBzVDZrK2FRL2poWTFjeDRjcGNhQWQyTkY5?=
 =?utf-8?B?VmNSMTRjYjQyZlpzbmZuZXlWM0RYR24yaU1RWm5EV2pLYkl3MzUrUnVWUmhL?=
 =?utf-8?B?RnFUK3lQTEs4aldaaFdlWEFabkVXTFpZZjQ5Njh3M0M4WXljOG4vZFp4UVBW?=
 =?utf-8?B?TkhGQzVDNVN3aU9zZVBqc25CY2VlbWVLbnpYMmJPN0hwVXJIZGNJZ2lmV282?=
 =?utf-8?B?ZndCSUlhNUI5U2pWTGQ5VTdxWVlhcmJ3VXpCTmh4NWhHVWpYeUJxNUxoQ1Ax?=
 =?utf-8?B?Zi9XTmMwNjZjaS8vWDNDY21Ob0l0NVpzR2ZkSUNhYnVFNHN4MnFLbzRzOEww?=
 =?utf-8?B?VHZSdHhmQ3BiaW5GOTZEMHRzWHBnMndDNFYzajRPWWVDV1lqUGk2RThkQVBH?=
 =?utf-8?B?WkROTm9TaHcyekgxY1BNallnMWtBNWIzbjZMZ0VUNnpnVnpIUzN1anhsbWlo?=
 =?utf-8?B?ZmVLQjZ0SXcxYUd4TzdTTzdSSkc0MGV3U0tSQnVkM0JsdXdWNmhjSUtHZ25k?=
 =?utf-8?B?Zk5BcE5kUG56SHM1RXNhaUJDSzVXQzN0ay8wZTdCSTJmc0xYYjY3dVNHS09F?=
 =?utf-8?B?WUNtQW8vaXdDZVI4OEY0bUJOOFprOXN5QTAxMEtFakpza0w2WEtTUmUwZTZW?=
 =?utf-8?B?c29jZFlqYVZXUHhjWFB2S0RWQ1BrRW56elRBVVR5cDltN1pjSHA0WHZUU0Jh?=
 =?utf-8?B?UXRxazl4dmtUWDlDMERXZHFqZWd1UXJPSTNrS0xrWUp1QjBtZDhHcEFVMVcx?=
 =?utf-8?B?bjVvekNyTDJPUzdLYnE5ZDliS0dXcFYvVmlaeDNpbjFsRVNuYlpXM2ZBUEtC?=
 =?utf-8?B?MW41V0ZtK3dJeE9LUTQwOG83UGp0WWZBZkxGNDVVcWtEemxiR0RCOFFPYjdp?=
 =?utf-8?B?T0twZlczbmdNSjRRMWNPOHVxeDdaNGhvYkhKb0NydEp4b3o3R1pKTXZVVWlB?=
 =?utf-8?B?UHVPbFdtdWpkSzJUdnBvUERWOWVvTlVudllRNzZ6VjBhR1M2QWk0OHhBTkts?=
 =?utf-8?B?WlU4b3VyQWtwMC9icUZPcTNkRVk5N0ZhNVgwb0pLUFpDMkpuMldsMGdDVkNR?=
 =?utf-8?B?T1IrYytNU3lyUUFBZy9ReFU4UFJQbmNqcEl1MzVlUVJSUTlOSXFzWW5aZDlU?=
 =?utf-8?B?dE9NVDFmdHBSNFAyeDZxVzVZRklJVDdYMloxbEhnT3VJNVZtOVN4UlIwUENU?=
 =?utf-8?B?Wk9sZWlGS1dtUEhWVEZ0NUpUSm40WXFjRmNldG5MNkNuSStnTlMrcjl1KzRS?=
 =?utf-8?B?bEpRRElFUEtsU1ZNRFNhaHRjMXBMYzZnSDJieUErUWdlV1hYaU94Tm53VHBK?=
 =?utf-8?B?d0hEYkFWQWlJV3FZOFZyK0lkYmcxcnltNDJqSDA1cnBTd0pxTkh4Q21MNmlY?=
 =?utf-8?B?U052SmxxeDNkTGN0MlZzWjlyTkdzMG9SQWtkaXJaWjRtelhycHVCZGZyTVcv?=
 =?utf-8?B?NE40NlVSTnpid1YzNzg3V0dxQ0FVbW1MczlWenc1M2p1Z1lDRDBBcGphNFYx?=
 =?utf-8?B?WUgxN2xMeURuN2FkZzRTU2hCenBXakZpK1RJeUlpREFDZnVQNXNIa2srQkc5?=
 =?utf-8?B?aFZWQUdtODNhTzhkckFTVGdKQk90cC9XNEN5Yk1YTmIrcEdBOWVWaTc3TWQ3?=
 =?utf-8?B?TCt4Sm1oSE9haHpibldsU1ZXNVBLYTB4OXdoVlJSUVFIcEVrM1Fhdlg3ellQ?=
 =?utf-8?B?SG0vUHA2V3Z1bGx4bTBYb05YUUY2SHQvQVRYOWtNNit4VFR6M0YrRnpLYURu?=
 =?utf-8?B?c1NxNG1QaWhyMEkzK3RZdy9IN0VRUU5MUzMxNWVOUjR3dGVNRHVkOXNZR21H?=
 =?utf-8?B?V21LcVJFMjJmUWpuVWpwZDZxUVFDZ3N6d2pqWFIxTEQvTlVYZWJ4OFJWSFIr?=
 =?utf-8?B?eXhWcXhsMjBmMFJJZ3RSRzlrQjBiT3RFQkI0TjlpOXNuU21CTERtS1dzeVhW?=
 =?utf-8?B?ODNPRTcrU0R1dEhBK3VlTDVtWVhiOUJveDRuM1RveEdRSlZkOUxvbmc1ZzZj?=
 =?utf-8?B?SHlaZ3k5ZVcyNzFnODFiV2ViZmcwdjRoYnhDQVhPbVU3OUhBOHZQcndPTVRN?=
 =?utf-8?Q?QmLKVa0Ti5f9QQK6nuZh0RpVm?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f17b028a-0306-45f0-42a7-08de0a88a474
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2025 18:45:12.3804 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7Z6/qzESY7G8lXHjdcqiepRcT7yEWFIG1oLCxheHJGSJhMqZ6ErlKT11C8lrdnBEV8EyNnViC5mQw876aw0Slw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4852
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgT2N0b2JlciA4LCAyMDI1IDExOjU2IFBNDQo+
IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0
cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1JGQ11bUEFUQ0ggMTAvMTFdIGRybS9pOTE1
L3ByZWZpbGw6IFByaW50IHRoZSBwcmVmaWxsIGRldGFpbHMNCj4gDQo+IEZyb206IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBQcmludCB0aGUg
cHJlZmlsbCBkZXRhaWxzIHRvIGFpZCBpbiBkZWJ1Z2dpbmcuDQoNCkxvb2tzIEdvb2QgdG8gbWUu
DQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHJlZmls
bC5jIHwgMzMgKysrKysrKysrKysrKysrKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCAzMyBpbnNl
cnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wcmVmaWxsLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3ByZWZpbGwuYw0KPiBpbmRleCA4YjljMTRlNWM1MDUuLjE2ZWU3MmQxZmM4YSAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcmVmaWxsLmMNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcmVmaWxsLmMNCj4gQEAgLTE1
LDYgKzE1LDI2IEBADQo+ICAjaW5jbHVkZSAic2tsX3NjYWxlci5oIg0KPiAgI2luY2x1ZGUgInNr
bF93YXRlcm1hcmsuaCINCj4gDQo+ICsjZGVmaW5lIEZQX0ZNVCAiJXUuJTA2dSINCj4gKyNkZWZp
bmUgRlBfQVJHKHZhbCkgKHZhbCkgPj4gMTYsICgoKHZhbCkgJiAweGZmZmYpICogMTU2MjUpID4+
IDEwDQo+ICsNCj4gK3N0YXRpYyB2b2lkIGludGVsX3ByZWZpbGxfZHVtcChzdHJ1Y3QgaW50ZWxf
cHJlZmlsbF9jdHggKmN0eCwNCj4gKwkJCSAgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSkgew0KPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0g
dG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRlKTsNCj4gKw0KPiArCWRybV9kYmdfa21zKGRpc3Bs
YXktPmRybSwgInByZWZpbGwgICAgICBwcmVmaWxsLmZpeGVkOiAiIEZQX0ZNVCAiXG4iLA0KPiBG
UF9BUkcoY3R4LT5wcmVmaWxsLmZpeGVkKSk7DQo+ICsJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJt
LCAicHJlZmlsbCAgICAgICAgcHJlZmlsbC53bTA6ICIgRlBfRk1UICJcbiIsDQo+IEZQX0FSRyhj
dHgtPnByZWZpbGwud20wKSk7DQo+ICsJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAicHJlZmls
bCBwcmVmaWxsLnNjYWxlcl8xc3Q6ICIgRlBfRk1UICJcbiIsDQo+IEZQX0FSRyhjdHgtPnByZWZp
bGwuc2NhbGVyXzFzdCkpOw0KPiArCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwgInByZWZpbGwg
cHJlZmlsbC5zY2FsZXJfMm5kOiAiIEZQX0ZNVCAiXG4iLA0KPiBGUF9BUkcoY3R4LT5wcmVmaWxs
LnNjYWxlcl8ybmQpKTsNCj4gKwlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sICJwcmVmaWxsICAg
ICAgICBwcmVmaWxsLmRzYzogIiBGUF9GTVQgIlxuIiwNCj4gRlBfQVJHKGN0eC0+cHJlZmlsbC5k
c2MpKTsNCj4gKwlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sICJwcmVmaWxsICAgICAgIHByZWZp
bGwuZnVsbDogIiBGUF9GTVQgIlxuIiwNCj4gRlBfQVJHKGN0eC0+cHJlZmlsbC5mdWxsKSk7DQo+
ICsNCj4gKwlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sICJwcmVmaWxsICAgICAgICAgIGFkai5j
ZGNsazogIiBGUF9GTVQgIlxuIiwNCj4gRlBfQVJHKGN0eC0+YWRqLmNkY2xrKSk7DQo+ICsJZHJt
X2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAicHJlZmlsbCAgICAgYWRqLnNjYWxlcl8xc3Q6ICIgRlBf
Rk1UICJcbiIsDQo+IEZQX0FSRyhjdHgtPmFkai5zY2FsZXJfMXN0KSk7DQo+ICsJZHJtX2RiZ19r
bXMoZGlzcGxheS0+ZHJtLCAicHJlZmlsbCAgICAgYWRqLnNjYWxlcl8ybmQ6ICIgRlBfRk1UICJc
biIsDQo+IEZQX0FSRyhjdHgtPmFkai5zY2FsZXJfMm5kKSk7DQo+ICt9DQo+ICsNCj4gIHN0YXRp
YyB1bnNpZ25lZCBpbnQgcHJlZmlsbF91c2Vjc190b19saW5lcyhjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gdW5zaWduZWQgaW50IHVzZWNzKSAgew0KPiAgCWNv
bnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICpwaXBlX21vZGUgPSAmY3J0Y19zdGF0ZS0NCj4g
Pmh3LnBpcGVfbW9kZTsgQEAgLTEwMSw2ICsxMjEsOCBAQCB2b2lkIGludGVsX3ByZWZpbGxfaW5p
dF93b3JzdChzdHJ1Y3QNCj4gaW50ZWxfcHJlZmlsbF9jdHggKmN0eCwNCj4gIAljdHgtPmFkai5j
ZGNsayA9IGludGVsX2NkY2xrX3ByZWZpbGxfYWRqdXN0bWVudF93b3JzdChjcnRjX3N0YXRlKTsN
Cj4gDQo+ICAJY3R4LT5wcmVmaWxsLmZ1bGwgPSBwcmVmaWxsX2xpbmVzX2Z1bGwoY3R4KTsNCj4g
Kw0KPiArCWludGVsX3ByZWZpbGxfZHVtcChjdHgsIGNydGNfc3RhdGUpOw0KPiAgfQ0KPiANCj4g
IHZvaWQgaW50ZWxfcHJlZmlsbF9pbml0KHN0cnVjdCBpbnRlbF9wcmVmaWxsX2N0eCAqY3R4LCBA
QCAtMTEyLDYgKzEzNCw4IEBAIHZvaWQNCj4gaW50ZWxfcHJlZmlsbF9pbml0KHN0cnVjdCBpbnRl
bF9wcmVmaWxsX2N0eCAqY3R4LA0KPiAgCWN0eC0+YWRqLmNkY2xrID0gaW50ZWxfY2RjbGtfcHJl
ZmlsbF9hZGp1c3RtZW50KGNydGNfc3RhdGUsIGNkY2xrX3N0YXRlKTsNCj4gDQo+ICAJY3R4LT5w
cmVmaWxsLmZ1bGwgPSBwcmVmaWxsX2xpbmVzX2Z1bGwoY3R4KTsNCj4gKw0KPiArCWludGVsX3By
ZWZpbGxfZHVtcChjdHgsIGNydGNfc3RhdGUpOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyB1bnNpZ25l
ZCBpbnQgcHJlZmlsbF9saW5lc193aXRoX2xhdGVuY3koY29uc3Qgc3RydWN0IGludGVsX3ByZWZp
bGxfY3R4ICpjdHgsDQo+IEBAIC0xNDksOSArMTczLDE4IEBAIGJvb2wgaW50ZWxfcHJlZmlsbF92
YmxhbmtfdG9vX3Nob3J0KGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9wcmVmaWxsX2N0eCAqY3R4LA0K
PiAgCQkJCSAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4g
IAkJCQkgICAgdW5zaWduZWQgaW50IGxhdGVuY3lfdXMpDQo+ICB7DQo+ICsJc3RydWN0IGludGVs
X2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGNydGNfc3RhdGUpOw0KPiAgCXVu
c2lnbmVkIGludCBndWFyZGJhbmQgPSBpbnRlbF9wcmVmaWxsX2d1YXJkYmFuZChjcnRjX3N0YXRl
KTsNCj4gIAl1bnNpZ25lZCBpbnQgcHJlZmlsbCA9IHByZWZpbGxfbGluZXNfd2l0aF9sYXRlbmN5
KGN0eCwgY3J0Y19zdGF0ZSwNCj4gbGF0ZW5jeV91cyk7DQo+IA0KPiArCWRybV9kYmdfa21zKGRp
c3BsYXktPmRybSwgIiAgcHJlZmlsbCAoJWQpOiAiIEZQX0ZNVCAiXG4iLCBsYXRlbmN5X3VzLA0K
PiBGUF9BUkcocHJlZmlsbCkpOw0KPiArCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwgImd1YXJk
YmFuZCAoJWQpOiAiIEZQX0ZNVCAiXG4iLCBsYXRlbmN5X3VzLA0KPiArRlBfQVJHKGd1YXJkYmFu
ZCkpOw0KPiArDQo+ICsJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAibWluIGd1YXJkYmFuZCAo
JWQpOiAlZCBsaW5lc1xuIiwNCj4gbGF0ZW5jeV91cywNCj4gKwkJICAgIGludGVsX3ByZWZpbGxf
bWluX2d1YXJkYmFuZChjdHgsIGNydGNfc3RhdGUsIGxhdGVuY3lfdXMpKTsNCj4gKwlkcm1fZGJn
X2ttcyhkaXNwbGF5LT5kcm0sICJtaW4gY2RjbGsgICAgICglZCk6ICVkIGtoelxuIiwgbGF0ZW5j
eV91cywNCj4gKwkJICAgIGludGVsX3ByZWZpbGxfbWluX2NkY2xrKGN0eCwgY3J0Y19zdGF0ZSkp
Ow0KPiArDQo+ICAJcmV0dXJuIGd1YXJkYmFuZCA8IHByZWZpbGw7DQo+ICB9DQo+IA0KPiAtLQ0K
PiAyLjQ5LjENCg0K
