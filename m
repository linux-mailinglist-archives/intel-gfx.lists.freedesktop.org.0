Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40ABC916080
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2024 09:57:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A56F710E5DF;
	Tue, 25 Jun 2024 07:57:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bCe2brXg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CCAC10E5DF
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2024 07:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719302266; x=1750838266;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=SYO4lD7DK1+6nb3cWaX5Q/0UBV6x4L2fLvD5Ha0rT1M=;
 b=bCe2brXgKp4N1FVFYPicPDh8hATkPPCKBS9JeiN+Qc3jfR1XdH8cl8P7
 zZhOyeLDFt+DiTBUf9cCDDCrRYfMWkF+QWNWCDc84PsRgNRXDvOM2HyIb
 +TLrBqG7oXEfxotAHrNrxoq0AK9EXY3b8zTRA/m38Z7W/nZWd9E53xAct
 WAGYMnLJkFFr4RbTy5U0qvJSZWx1Eg5LJSXYII4JojvU88B7Gjz+JTux2
 uOe0t07xm7HkbrGmox9HJ2Ea41pWzyK9rcN5hg561HelTIxzbFuAJvAWf
 ekKBi4khY/Z3/B0F8zF3/obFUTXGC2QoDhP3rly+PnIUJPzCybgckQhZk w==;
X-CSE-ConnectionGUID: fXcY1NaYQW66U6TRuBYlyg==
X-CSE-MsgGUID: a5gZQ65aQMiAkszPRN3ogA==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="16179685"
X-IronPort-AV: E=Sophos;i="6.08,263,1712646000"; d="scan'208";a="16179685"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2024 00:57:44 -0700
X-CSE-ConnectionGUID: RIX8jA3aRLW9AUtX7ohhNg==
X-CSE-MsgGUID: QCOFQSZHT3e62tzbT/JlHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,263,1712646000"; d="scan'208";a="43369621"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Jun 2024 00:57:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 25 Jun 2024 00:57:43 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 25 Jun 2024 00:57:43 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 25 Jun 2024 00:57:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XSnPVnkN51xeWm4diD9Cruiv0RjwXnRcORXwetTrFsjY+u0kE7s/V24t+8W2UZcX8h9g/RGr3Sm0yZglcZMUDk02I8v1BXG+WrwjxtmMrW6HvTPqf6lgrfXwDJiq0ogmFSMxVY7rTRPUAIXD04x34VNc4g1m1yox3C2BsIbJMfOPwzxNbg3NDoSVKpI+clUKbayb9ZtH8jQv2L3itcaIm7hbuPwAXnKR+Yl2JyHMzV4u/fi+lP2Wgumdxszqx95pyr4Ji4yDsrE6IxJhrQ6wxzfE/zqHj9Irme5I3/3w1k+L2ehg8BShzrMyhederbJtO833owe0M/kxCm5KsWiLmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SYO4lD7DK1+6nb3cWaX5Q/0UBV6x4L2fLvD5Ha0rT1M=;
 b=OSXg+7F1ewZeQvlVOuo7p+nftHEAFRrxaiANNMPkQL3RoMVkz/Vvf8pazvLBqLE0iwOEFhtbQVqsvu7duGeB/zQ80skoeDnhd4CmUOicb+cAqcXHjeV4M6pVCYdAIrhW5UOaXfclAQR09/ICxvCfRF0BR4pBswOwtcu8Wxp/yIRNfKDv1uzncM78mKdSEdmemTlwbZ+jZnwgidgNxZFTqX9JcwqdpzsQ0jYn3gCmJyMjZ8gy3OSW3saUGHfWr3bSkTF3vVoJdBD5XbOPNp4w6OsE95DZdyQxyxwdZbe6Q3QAdxzhYv3rfd2e6JHpBqjLSuhIbpzOeFAC2t33APZTVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7698.26; Tue, 25 Jun 2024 07:57:36 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7698.025; Tue, 25 Jun 2024
 07:57:35 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: Re: [PATCH v9 00/11]  Panel Replay eDP support
Thread-Topic: [PATCH v9 00/11]  Panel Replay eDP support
Thread-Index: AQHawhEBm1IN7CU7x0Omjfhn41Nt1bHWcoKAgAG0CAA=
Date: Tue, 25 Jun 2024 07:57:35 +0000
Message-ID: <21eeb9b9f371f59cac4c7689a63af25d2fe20158.camel@intel.com>
References: <20240619062131.4021196-1-jouni.hogander@intel.com>
 <PH7PR11MB598149E542ADBA6347FED706F9D42@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB598149E542ADBA6347FED706F9D42@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CO1PR11MB5057:EE_
x-ms-office365-filtering-correlation-id: 6258ff84-12f4-4989-c64b-08dc94ec79ec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|1800799021|366013|376011|38070700015;
x-microsoft-antispam-message-info: =?utf-8?B?enFBaXVML2dxTURQbloxVExIektXMkZmUDYrMEIzWjU5T2ltY0lLSTJxTkdV?=
 =?utf-8?B?NVBURHVoY2JFOUJIVXdlSUpNc1MwOWI1QnNGZks3VWdVOTFHTTRiYVU1c1pK?=
 =?utf-8?B?M1VvWUxObEQ0My95UkJnd3loankrd0VKOENnbTQraUJJK3Y5WjVVaXBnQWl6?=
 =?utf-8?B?TjZaRE1VcXVIMEVSOGJ5dDYyZWhkYXd1ZkNLN09kREJ2YmdxWWwxSGpJczhj?=
 =?utf-8?B?M3B6NHN5OTZnMU0xTngwWnFrZFNDTi9GRy8wM1Y2blpWK1l1NGFoVWR5cHpa?=
 =?utf-8?B?MEFNdHN5Nk9pQi9PaFowRDZBYW9WcVIwMEszVkhLUERFSHFkMnFmNzdoRXRa?=
 =?utf-8?B?ZVVlVDk3Ym9ZbTFBYUlUWEpFWE9GVVdrQkwwdWk1WEhVUENMM3R3R2JpeVFQ?=
 =?utf-8?B?YStaWWkzUlhOQnlPd1hOVGpCeW5kK1pDLzlWMkRBNGVQYit2dEFUREtreGc3?=
 =?utf-8?B?WUFwMFBibkpwTFNmcTh0bU1udzVYTmZwbi9TcmhyY0d6RmtaaTM2MUVRdlFZ?=
 =?utf-8?B?SS9ub1NrRUVIVUx4Yi9KNXB0U1ZhTVFMMWJ4MXRhUUJWOUpybXFLM1pzWEho?=
 =?utf-8?B?NDN4MmZhSnhLTUZCZnZ1MUY1cE1uMHNrTlVYQTh4STlMcEVoTmhuSXZXZWpV?=
 =?utf-8?B?bWZCbDA4RVRSU1JYTVNhR3NCUko3bGV1Qld1WjhkSDg2cndLTHBKdkJiK2I0?=
 =?utf-8?B?Y1hmd0xLdDFCR0dyVDFtMmNaTWxnU1ZXNTdJc0pieEI2aWJUSThhdktzOHNM?=
 =?utf-8?B?ci9kb0RYekNSWTZNQlkxU0ZtZzg2K2trUVlmT0U1MUd2RHhtajRrQzJwelBn?=
 =?utf-8?B?NDhJRHlhYUxFSFRXQWxxS0tpSVNWQjBlSWlibVdZSG5uOCtzOXVjRVRaN240?=
 =?utf-8?B?cW0vN2pTVW5KdnhDTnQ0ZEdvMjNocTJvUFYxSi82UlNsY0UzNi9XNld3ZmZa?=
 =?utf-8?B?ekFmbFdSNGhZMU1EMllIVDV2YWJSdkJxTkNlU0dCdGdXQys2d25OSnJscmIy?=
 =?utf-8?B?bmRrUS90Y2VPUW1VS0hNY2h5eXcrOHZlc3ZkYWROWTVTMklIdzliS3hSUXpB?=
 =?utf-8?B?MHVhUW53cFBveUJVQjJTRkRZc3E2YXI5QkppUXJxbXkweVVUaTMwYnl2V1Nr?=
 =?utf-8?B?VFU1Nk5VUzFhVW5DNktpZEZPQXZEdldBRDlOZ2RXZHJoMTJhdGFiUXZCbzU3?=
 =?utf-8?B?NDhDZ2NEKzRRRmZ4RFNuSEhzMjZDK3JoWmFobnJpYUdJaS9MQW16eituSUZJ?=
 =?utf-8?B?SU0wR3lMaFpjYWRLNnY0YWhTSXRZaVY4bFhrdlpMTGlIcDN6UTRrelRFejM1?=
 =?utf-8?B?ZDF5OWtJb3BCVThUcjhvRTJ0bXNFWElEcWtOdmxYQXlWbVdnNEdyd3IvZGhP?=
 =?utf-8?B?R0o2ZkRUSkY2YllmdFQvQ0pqckNYdTJMZS9ReENLZWI4Z1Uwc2owS2o1TVds?=
 =?utf-8?B?aWhkMzB0TzlTd3JkQkRCcUpEMUpNTjRWc29iVk11U0pPK0dzN0pUY3NCYXhT?=
 =?utf-8?B?UXl0eSt4dmlsdE54b1RWclQ3TVhMWUtrcDJTSGFMTkQvY3MrNnBDL2p0eG5n?=
 =?utf-8?B?K2hDTFdlL0sxUnpwVDZ1MG9ITmJKNDE2dzV2bFhDdU9GWXF3eE0xT0U5WnBh?=
 =?utf-8?B?MEUzaWpaYXhHWE14ZFU0eG0zQ1RFckp2TW9aS0MrZ2dQcWwwS1crOXlMajhs?=
 =?utf-8?B?Z2N6TU1Jd0JKVEp6aU1DMlE4NE51NkcxOUUrdkRtbXVncHA3ZnRqSGlnTDhL?=
 =?utf-8?Q?stoEoCD9BEAwQHBgWbZ4VFflKjOSlKK8ZDoaxPC?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(1800799021)(366013)(376011)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TXpHSHNwYW9URzVKTGJhMEVnbnJMczV2TlJEMWU1b0VydmRKYVpiVnBTS3pn?=
 =?utf-8?B?c0NUS0gxS25uQjlIL3MzcEl2c28zd2poL1JGSXA4UTE4RHNEZExQTWZCTE5i?=
 =?utf-8?B?aGE3RzE5Tk12VWkxQ3dmM3RNQnV4aXdLcHpVMFdKZnpYYytOcGdkUGlWV24w?=
 =?utf-8?B?SVp2Q3JXMFBhUGxMZTE2VGRCZzdBc0QrTktUNXZEcFkwZEp4aFhNZEFDSUhN?=
 =?utf-8?B?VDdlTXNBYzlEREZFQUVQOFJxYWVyN3VwYXhjTFNuMXkwS3QrM1dFZkJzYVpa?=
 =?utf-8?B?Unc1cDFGYklZKzlyVmN5M2t5eFV4T2xVR254elZQdHpQNGpURTNwbjhQVHpt?=
 =?utf-8?B?ZDBMeVozc0g3cGtIdERCMUNxWFVYek5MWC90emxiZDIzOXpsZklzZFZsY0Fj?=
 =?utf-8?B?cjYzcGRTN0tkdGxRTitpZXErbjdkVGhaalMzK2h1d1hLbG45cWp0Rm1LcUwy?=
 =?utf-8?B?TnVndklmSTYxNS9CZW1UblkzSm9EM3FlM2xadytPRUdqd2pQcU9xR2dQOUQ1?=
 =?utf-8?B?dzg2dkRhM0xXT1RZSTBwK2Erc3AwZEhUYW1JR1l6cFdFU3Q0TFNxTDZ6Z1ZN?=
 =?utf-8?B?Snh2UEpKVjZmaXNHS3BNZVlrUjNPc2c1UGxMSWNJdVIvUjlnaVNrcVYxNFRZ?=
 =?utf-8?B?enZnVENDMFhUSEo1MTdkd3NOZ2lESGxlbW5Xb1lrdkdLeC90eUJJR0RheG00?=
 =?utf-8?B?TXZLeVl2QWUvL1lrQkJaNHNvQW82QzNLY0RINWV3MnF2RzRqMzhTdUx6RGZY?=
 =?utf-8?B?ZFlnaWY0NFJIb2JiQ3VXazVwTi96c2M5elNQdnVZYXJuYjZFbkZ3NHdNZ2hl?=
 =?utf-8?B?UkpUcWthS0wvb1lRQmRCbVlCWmpHV3U4b3l1RkJKMkFBRUpzMURnTHU4Y2t4?=
 =?utf-8?B?MU42K3NOTk9GUVFUTlpud1FZR3dCOXg0azR3RXpiMmhMSStqVDJBbEhFR3NB?=
 =?utf-8?B?UHR2V2ZLdkRXdnFyOTBjOFlRNmdpSGU5cDNSNTRUakZQOVpocVZ1aWhvRlhL?=
 =?utf-8?B?RjhGbWlGajhhVExpWmRHSHhEV25HendxZHExa0hiblhNK3pweWFjdjNpRnFm?=
 =?utf-8?B?MVlqMG9DeEMxM3ovbFAzUlZvekJSQW83b1pxU0tyQUFrdlRhL2J0S3BoaUNs?=
 =?utf-8?B?SXdtWS8yaWd6UmFtUjg5YWE2OVBUNEhTT1hITkpLN05zRnF3eXZtbVlIQVNv?=
 =?utf-8?B?T2FiakVzL2l3ZStrNnVTcWdGd0l0YVdjK2J4NHdZRmhuQ3lEQVcvbXhLRm5B?=
 =?utf-8?B?a1lLMFpiWGNydEdsZjlha2htbWRMZ1d2WWJCcWN0V0I2bm5saUZmT1VJVzRO?=
 =?utf-8?B?ZnN1TXJOOUxwaU53QVd3VDcxRkJTamx6TEIwNWxlVy83ZTB1eGFTZWE2UHpF?=
 =?utf-8?B?ZW5KdlpycGlpSjZKVXBhVUFnOHNLZzR1bzdNQ0xHRU5GUncwemNZdFJWWXFU?=
 =?utf-8?B?SUpqblFhQXVNOERqMGpCeEdEV05Sd2JXSjJuM2JJWkxvZUJqcDc5OExUSzBH?=
 =?utf-8?B?bHRSS3BHM1lyeGRhUlNlR1laQmVRRm9WSW9vaGVrcXBZd2VXUlgzL1ordTZv?=
 =?utf-8?B?c0lnNWdDYVRWMVQzWndtc2RQRzcvZ2RlQjVzNWtZdVFvTXdzUE12RmttbVVQ?=
 =?utf-8?B?S1hWYXJoL2RGekN2UWNxRlh4MHZLWUtITlZiSVJzVDZDZEd3SGw5VStnWU9i?=
 =?utf-8?B?T1psdUovM28wU1JvaXRVMWwxb2JsVzUwbzVaRTEyN2NYWm52WHZMMjVxNnF0?=
 =?utf-8?B?RDREY3NJZG95bVNIOUFjZEZid3dRRm92c2xPU1dCZnZBT0YxVU1DVnlCOUR4?=
 =?utf-8?B?cjJsMVJkNTJGbDJVWk02MU5qMjMvZElNTWROOVpLdWw0aWVmYmVrZGJjaXJa?=
 =?utf-8?B?Rjl2aXArRlE3TGh3cGZPSzg1djU3TDNzc0JVQnkwK0U2YzEyZURPZ2tDTFUy?=
 =?utf-8?B?amFORnd5RmthVWVEeFpUcnFPWGx6T2RUdmJZVU94WEE2TkJvRXd2S21MNVJr?=
 =?utf-8?B?VlJUTEN2Z2RxWE9uczlDVWw5dGFhcTd1UE5GdVlQUDRRcmFrbnI5SCt3bkRG?=
 =?utf-8?B?aXdKUWRpRzZBV1JKTkljLzlTODFLcTFYLzhSZXZudmdyZXpDZEpPVyt3U0xB?=
 =?utf-8?B?WkRKTzc3ZnBITUwwSkxLMSt3SnNCTGwreTNvL1hSeHp4MStlYlpWQXYxWWhr?=
 =?utf-8?B?aVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <479E83C6B2DCF142AB7D8998A96BA87D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6258ff84-12f4-4989-c64b-08dc94ec79ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2024 07:57:35.8428 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O1DN10CX1ox0yPzqv8AzJ9+Jr6m5vKNgvN8HGu6rT+9+oVEOzDtGoqqsqJhsClFLFAc3p0ggsOAc8Zbrkf08yEy1CYejGpeM4WqJkspfH2w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5057
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

T24gTW9uLCAyMDI0LTA2LTI0IGF0IDA1OjU2ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogV2VkbmVzZGF5
LCBKdW5lIDE5LCAyMDI0IDExOjUxIEFNDQo+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCj4gPiBDYzogTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29t
PjsgS2Fob2xhLCBNaWthDQo+ID4gPG1pa2Eua2Fob2xhQGludGVsLmNvbT47IEhvZ2FuZGVyLCBK
b3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IFN1YmplY3Q6IFtQQVRDSCB2OSAw
MC8xMV0gUGFuZWwgUmVwbGF5IGVEUCBzdXBwb3J0DQo+ID4gDQo+ID4gVGhpcyBwYXRjaCBzZXQg
aXMgaW1wbGVtZW50aW5nIGVEUDEuNSBQYW5lbCBSZXBsYXkgZm9yIEludGVsIGh3IGFuZA0KPiA+
IGVuYWJsaW5nDQo+ID4gaXQgb24gTHVuYXJMYWtlIEhXIHdoZW4gZURQMS41IHBhbmVsIGlzIGF2
YWlsYWJsZS4gUGF0Y2hlcyBhcmUNCj4gPiB0ZXN0ZWQgdXNpbmcNCj4gPiB0d28gZGlmZmVyZW5l
dCBlRFAxLjUgcGFuZWwgbW9kZWxzLiBJR1QgbW9kaWZpY2F0aW9ucyBmb3IgdGVzdGluZw0KPiA+
IGFyZSB1bmRlcg0KPiA+IHJldmlldyBhbmQgYXZhaWxhYmxlIGhlcmU6DQo+ID4gDQo+ID4gaHR0
cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMzM4NjYvDQo+ID4gDQo+ID4g
djk6DQo+ID4gwqAgLSByZWJhc2UgKHBhcnQgb2Ygdjggc2V0IGlzIG1lcmdlZCkNCj4gPiB2ODoN
Cj4gPiDCoCAtIHNlcmllcyByZW9yZGVyZWQgdG8gZWFzZSBtZXJnaW5nIHN1YnNldA0KPiA+IMKg
IC0gd2EgMTYwMjE0NDA4NzMgbW9kaWZpZWQNCj4gPiDCoCAtIEZpeCBwb3J0IGNsb2NrIHVzYWdl
IGluIEFVWCBMZXNzIHdha2UgdGltZSBjYWxjdWxhdGlvbg0KPiA+IMKgIC0gRGlzYWJsZSBQU1Iv
UGFuZWwgUmVwbGF5IG9uIHNpbmsgc2lkZSBmb3IgUFNSIG9ubHkNCj4gPiB2NzoNCj4gPiDCoCAt
IGZpeCBpbXByb3BlciBTVSBhcmVhIHdpZHRoDQo+ID4gwqAgLSB3cml0aW5nIHdyb25nIHJlZ2lz
dGVyIGluIFdhIDE2MDIxNDQwODczDQo+ID4gwqAgLSBkaXNhYmxlIFBhbmVsIFJlcGxheSBpZiBw
c3JfZW5hYmxlIGlzIHNldCAhPSAtMQ0KPiA+IMKgIC0gcGVyZnJvbSBBTFBNIGNoZWNrIGZvciBQ
YW5lbCBSZXBsYXkgRnVsbCBGcmFtZSB1cGRhdGUNCj4gPiDCoCAtIHByaW50b3V0IHdoeSBQYW5l
bCBSZXBsYXkgaXMgZGlzYWJsZWQNCj4gPiB2NjoNCj4gPiDCoCAtIGZpeCBhbmQgcmV3b3JrIHNp
bmsgZW5hYmxlDQo+ID4gwqAgLSByZXdvcmsgY2hlY2tpbmcgdmJsYW5rIGxlbmd0aCBmb3IgTHVu
YXJMYWtlIGFuZCBQYW5lbCBSZXBsYXkNCj4gPiDCoCAtIHJlb3JkZXIgcGF0Y2hlcw0KPiA+IHY1
Og0KPiA+IMKgIC0gdXNlIHBzci0+c3VfcmVnaW9uX2V0X2VuYWJsZWQgaW5zdGVhZCBvZg0KPiA+
IHBzcjJfc3VfcmVnaW9uX2V0X3ZhbGlkDQo+ID4gwqAgLSBkbyBub3QgY2hlY2sgVmJsYW5rID49
IFBTUjJfQ1RMIEJsb2NrIENvdW50IE51bWJlciBmb3IgUGFuZWwNCj4gPiBSZXBsYXkNCj4gPiB2
NDoNCj4gPiDCoCAtIGFkZCBzb21lIHBhdGNoIGZyb20gIlBhbmVsIFJlcGxheSBmaXhlcyIgc2V0
IGhlcmUNCj4gPiDCoCAtIGNoZWNrIDEyOGIvMTMyYiBlbmNvZGluZyBhbmQgSERDUCBlbmFibGUN
Cj4gPiDCoCAtIHVzZSBpbnRlbF9hbHBtX2F1eF93YWtlX3N1cHBvcnRlZCBpbnN0ZWFkIG9mIGxv
Y2FsIHZhcmlhYmxlDQo+ID4gwqAgLSBwcmludG91dCBkZWJ1ZyBpbmZvIGluIGNhc2UgUGFuZWwg
UmVwbGF5IGlzIHByZXZlbnRlZA0KPiA+IHYzOg0KPiA+IMKgIC0gY29tbWl0IG1lc3NhZ2UgbW9k
aWZpY2F0aW9ucw0KPiA+IMKgIC0gcy9pbnRlbF9wc3JfcHNyX21vZGUvaW50ZWxfcHNyX3ByaW50
X21vZGUvDQo+ID4gwqAgLSByZW1vdmUgZXh0cmEgc3BhY2UgZnJvbSAiUFNSIG1vZGU6wqAgZGlz
YWJsZWQiDQo+ID4gwqAgLSBkbyBub3QgYWxsb3cgZURQIFBhbmVsIFJlcGxheSB3aGVuIHVzaW5n
IDEyOGIvMTMyYiBlbmNvZGluZw0KPiA+IMKgIC0gZG8gbm90IGFsbG93IGVEUCBQYW5lbCBSZXBs
YXkgd2hlbiBIRENQIGlzIGVuYWJsZWQNCj4gPiB2MjoNCj4gPiDCoCAtIHByaW50b3V0ICJTZWxl
Y3RpdmUgVXBkYXRlIGVuYWJsZWQgKEVhcmx5IFRyYW5zcG9ydCkiIGluc3RlYWQNCj4gPiBvZg0K
PiA+IMKgwqDCoCAiU2VsZWN0aXZlIFVwZGF0ZSBFYXJseSBUcmFuc3BvcnQgZW5hYmxlZCINCj4g
PiDCoCAtIGVuc3VyZSB0aGF0IGZhc3RzZXQgaXMgcGVyZm9ybWVkIHdoZW4gdGhlIGRpc2FibGUg
Yml0IGNoYW5nZXMNCj4gPiANCj4gPiBKb3VuaSBIw7ZnYW5kZXIgKDExKToNCj4gPiDCoCBkcm0v
aTkxNS9wc3I6IENoZWNrIHBhbmVsIEFMUE0gY2FwYWJpbGl0eSBmb3IgZURQIFBhbmVsIFJlcGxh
eQ0KPiA+IMKgIGRybS9pOTE1L3BzcjogSW5mb3JtIFBhbmVsIFJlcGxheSBzb3VyY2Ugc3VwcG9y
dCBvbiBlRFAgYXMgd2VsbA0KPiA+IMKgIGRybS9pOTE1L3BzcjogZW5hYmxlIHNpbmsgZm9yIGVE
UDEuNSBQYW5lbCBSZXBsYXkNCj4gPiDCoCBkcm0vaTkxNS9wc3I6IENoZWNrIHBhbmVsIEVhcmx5
IFRyYW5zcG9ydCBjYXBhYmlsaXR5IGZvciBlRFAgUFINCj4gPiDCoCBkcm0vaTkxNS9wc3I6IDEy
OGIvMTMyYiBQYW5lbCBSZXBsYXkgaXMgbm90IHN1cHBvcnRlZCBvbiBlRFANCj4gPiDCoCBkcm0v
aTkxNS9wc3I6IEhXIHdpbGwgbm90IGFsbG93IFBSIG9uIGVEUCB3aGVuIEhEQ1AgZW5hYmxlZA0K
PiA+IMKgIGRybS9pOTE1L2FscG06IE1ha2UgY3J0Y19zdGF0ZSBhcyBjb25zdCBpbg0KPiA+IGlu
dGVsX2FscG1fY29tcHV0ZV9wYXJhbXMNCj4gPiDCoCBkcm0vaTkxNS9wc3I6IFBlcmZvcm0gcHNy
MiBjaGVja3MgcmVsYXRlZCB0byBBTFBNIGZvciBQYW5lbA0KPiA+IFJlcGxheQ0KPiA+IMKgIGRy
bS9pOTE1L3BzcjogUGVyZm9ybSBzY2FubGluZSBpbmRpY2F0aW9uIGNoZWNrIGZvciBQYW5lbCBS
ZXBsYXkNCj4gPiBhcw0KPiA+IMKgwqDCoCB3ZWxsDQo+ID4gwqAgZHJtL2k5MTUvcHNyOiBDaGVj
ayBFYXJseSBUcmFuc3BvcnQgZm9yIFBhbmVsIFJlcGxheSBhcyB3ZWxsDQo+ID4gwqAgZHJtL2k5
MTUvcHNyOiBNb2RpZnkgZGcyX2FjdGl2YXRlX3BhbmVsX3JlcGxheSB0byBzdXBwb3J0IGVEUA0K
PiANCj4gVGhlIGNoYW5nZXMgbG9vayBnb29kIHRvIG1lIGZvciBvdmVyYWxsIHBhdGNoIHNldCwg
d2l0aCBmaXggb2YgSmFuaSdzDQo+IGNvbW1lbnQgb24gcGF0Y2gxDQo+IA0KPiBSZXZpZXdlZC1i
eTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQoNClRoZXNlIGFyZSBu
b3cgcHVzaGVkIHRvIGRybS1pbnRlbC1uZXh0IHdpdGggSmFuaSdzIGNvbW1lbnQgZml4ZWQgaW4N
CnBhdGNoIDEuIFRoYW5rIHlvdSBBbmltZXNoIGFuZCBKYW5pIGZvciB5b3VyIHJldmlld3MuDQoN
CkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gPiANCj4gPiDCoGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jIHzCoMKgIDkgKy0NCj4gPiDCoGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5oIHzCoMKgIDIgKy0NCj4gPiDCoGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmPCoCB8IDE2MyArKysrKysrKysrKysrKysr
Ky0NCj4gPiAtLS0tDQo+ID4gwqAzIGZpbGVzIGNoYW5nZWQsIDEzNyBpbnNlcnRpb25zKCspLCAz
NyBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiAtLQ0KPiA+IDIuMzQuMQ0KPiANCg0K
