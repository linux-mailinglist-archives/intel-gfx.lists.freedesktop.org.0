Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED39F80AD43
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Dec 2023 20:42:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDD5C10EB11;
	Fri,  8 Dec 2023 19:42:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 378E210EB11
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Dec 2023 19:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702064538; x=1733600538;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=lNqO0vQZPrFz2UmFktT07GOLeMfhLEJO2BCIALE8Rlw=;
 b=F2R35GHhtHrK1LHt1t+kLS3kN8wgnvBgTSjNRzS/kWhcDOnCN/niic8a
 nymuswJiTv/v69w1KJiJ+K4MGXHnhENIreccb2KIeXb+Ww8HEPHnCePfc
 h03qGLab3Kr1fikrF1lQOBzd58bz1n99HvCH+Ufbf/IE71R0Hych8Nokr
 NI5BDvdFwQwH3RU43FjNQxrexVsUAT7SpJxdRx7ImTJvNjE9AA/NlveLU
 c4OnuFFRDvT5fTEKNRonuG8RCWmM2TMh4CjafTFQuEr0Nt4JhjL8gFVo6
 lPXcbHeZDQDDH539n7yLIVoqlaOx1K0mvWOCU+tvkZBUaCacGXmANTlln Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10918"; a="480648168"
X-IronPort-AV: E=Sophos;i="6.04,261,1695711600"; d="scan'208";a="480648168"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 11:42:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10918"; a="772241966"
X-IronPort-AV: E=Sophos;i="6.04,261,1695711600"; d="scan'208";a="772241966"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Dec 2023 11:42:05 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Dec 2023 11:42:05 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Dec 2023 11:42:04 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 8 Dec 2023 11:42:04 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 8 Dec 2023 11:42:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f0tUCWw6Pxb6iVAkZu7siecc3dPzGpNFQPXRequz3mhCEX7CD8sH1YtckKNoxVuf+/P+zCCm3cbzMh3OZJ6QoK+IUKBUYyJsFUYdUsBs/skJkS7xplXXFv8vF9XygnC3b1UzA4RIPyP21tzr8byOKQPKpBf5X/AhTJCt7qveIkvVtcmWRfZfMzRsvAsXD1Gw4Kc0rcDJvnckxcm7TeR+UMV+Z3BsD3U02/IVfg/eVukNUBGbAuyjbodvu1Jkk0REF6SZJFBdaFySmfKJ4r5iDevl/Y1nG3sQMGTQVfxE7e0p+rX7Pjf2BbqvqoPxNeCl2ijPwr0Y0DrnlYaY+mDwhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lNqO0vQZPrFz2UmFktT07GOLeMfhLEJO2BCIALE8Rlw=;
 b=JPhEIg7/9lDEaB41vRw6luWVZUD/CLVPlaeT2df/ow7T/BIz9YlJlXFWdNWukpBrNkWB8m7pAcUsiVzJhnsXUiHaJflFGAeuW6wry83H6b4LUUFTUoXHNQgKNLpNWi41rRQWGQPnrBEd/hAvaJ5FudIBbE6LaxVb2WT3tH2IrBOIQPxeIAg3263Qu0pzFPCFBPj/7tIu6tKqpodHg47ajextvKKdf2CXCJoqemViXfGdP0BTPSMnSBf/jDy4rpS/9RY1nWQy5aYHigdncQdXL4SsvRKd0rFlE2Iv4glR4ZxpoVBjMPJrwT/78Wi1/sPoSPNceEFsZO7qcJtwstJFjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by MN2PR11MB4517.namprd11.prod.outlook.com (2603:10b6:208:24e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.28; Fri, 8 Dec
 2023 19:41:59 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::9ec5:f5c2:d277:63eb]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::9ec5:f5c2:d277:63eb%5]) with mapi id 15.20.7068.028; Fri, 8 Dec 2023
 19:41:59 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UmU6IOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIHNlcmllcyBzdGFydGlu?=
 =?utf-8?B?ZyB3aXRoIFt2MywxLzNdIGRybS9pOTE1L2RwOiBVc2UgTElOS19RVUFMX1BB?=
 =?utf-8?Q?TTERN=5F*_Phy_test_pattern_names?=
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2VyaWVzIHN0YXJ0aW5nIHdp?=
 =?utf-8?B?dGggW3YzLDEvM10gZHJtL2k5MTUvZHA6IFVzZSBMSU5LX1FVQUxfUEFUVEVS?=
 =?utf-8?Q?N=5F*_Phy_test_pattern_names?=
Thread-Index: AQHaKLuFE3GkKByeH0SiCRzjGaR1y7Cfy72A
Date: Fri, 8 Dec 2023 19:41:59 +0000
Message-ID: <67c30041e027f0593c3724ca78d281ad082f384a.camel@intel.com>
References: <20231206235319.3205232-1-khaled.almahallawy@intel.com>
 <170191886819.28722.4682174046915083647@emeril.freedesktop.org>
In-Reply-To: <170191886819.28722.4682174046915083647@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW3PR11MB4620:EE_|MN2PR11MB4517:EE_
x-ms-office365-filtering-correlation-id: 379616f2-7a42-415c-a910-08dbf825be9e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WEFf0WECtO+7oTtdNufpFTEShFxL18m+JzVbDzXk7TrCDh7SHWWSvTThtLWUcddrdbc20uND4vMaUxcGfcij0Vkfu/Qh0Bw2g+Q3gKBnFr+xKsSfWVen9+FGlS5oUdujDO72s91mXPwpqyiz1lbgFQ7CYh5+AGjaUq+6Rm9Zee//0XVn4P4HeJGbDfonfT+JPgr7T5uMzJi/dG6G03NNfG4Ijc1eDMAet5eYbY2DXoB6aiUaoEiu2jUyu8Tv4wlWK6o3RvfG8m8WhMzntCp6qqIUoUh5EnvVbISVwBpsNp5Q00oXLG67I083pp/3i2y+PbLxEVBtJ4D28I8eN6qEYezzH6woTY3pKESy/4CuLkk9xQz/TnJi/G1qEPXhLSirMKqDWZ0tzW/3sRMxu5IjKxxWaIUzvfFtEP+OmONiEJRhe0/R2+s6oi84r0cOTdLZVkdjEG/2G8tWiPfmd+9NhT5LMkbs8g3mTtm45G6xkQju7b9Pcywg4qqj+O4m1FE3kkvIbj+L5l0AG+r6CMvjkzscoQXQieMk5OTDGnWXEGoGjQwJugnYZz/Ckb40A9LmB+VLSzPkHLeXwu9DYzTIOr4unYU+F26Zp1likH3acOYAolDbowEznWHKaBUH4IvVkRyOUmWZeub7oXBQ2jwynqFmwduy92XiydheMupPPgE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(39860400002)(376002)(366004)(136003)(230173577357003)(230273577357003)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(478600001)(316002)(66946007)(76116006)(6486002)(66556008)(6916009)(66446008)(64756008)(66476007)(8936002)(107886003)(86362001)(4326008)(83380400001)(6512007)(6506007)(82960400001)(966005)(71200400001)(122000001)(2616005)(5660300002)(2906002)(38070700009)(36756003)(41300700001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?am80UDB1cUhoMHZZOXV1R2JDK0xaWVNQZVdNbXFpUVBEek9ZS3hsa2N1Y1gv?=
 =?utf-8?B?MkVPNEdpQmQrTllOaGRNZFVtRWpvcnFXUkJEU25BbW1iVVZXd2hxQVFjeVE4?=
 =?utf-8?B?VVNqalgvdFo3ZzkySm9vTGFlTmhURjVPL1hxNWkrTXdGTTB4RTlVR0pJU3pK?=
 =?utf-8?B?bTdtQVJza0pHdFhFM2lYbDFXUkdGclMwM09lSEZKTnp2NzFvTm43RmlWeFVK?=
 =?utf-8?B?dTN1RXhvTy95c05uMkljbzlwZVk5OFpDSFFiRGE3QXdLRDlTS3hIMXdlbGRY?=
 =?utf-8?B?dWdleHNIeWVSdDEwMUw0cHpzSXh3aFJ2KzR5Tm9IRE0wSFN4OHo2OFZEZ2hm?=
 =?utf-8?B?dTlha0dSRUZwQ2FGNHVWQU5HdDRkS3p2UWN1T2x2YUQvSjBPS3B6ajZqWkpF?=
 =?utf-8?B?Ymh3N0IyQU9XU1BhS0R3MlRGSloyc0JNM3dkMHRTNEg3eVBwVmd5bDJydEFq?=
 =?utf-8?B?SGkxWlhZSW9Qc1BGVzhpbVFZQ1UyM1dSUjFhWG5hZ0JJV29GdmlFYVh4eS9J?=
 =?utf-8?B?aVRENzVLaHVOanlZcWlndlh2TEROb01FL1pHWHRYYWdrSkwxekJDZVF3RXJ1?=
 =?utf-8?B?TDU4SXQ2VjM4bFZ1ZC9rUXFlZTVET043NVZXTG1CT2tQYzVpWmxKNEZidU0v?=
 =?utf-8?B?NVd5K2UzNzdEUUhLdU1DRHhYRjBQZHhUTE4ycWpNaEV2dkdrR2xmNW1ReVRL?=
 =?utf-8?B?VHZtbkVPdUVSMFJldlU1S1R3bUNITCtpR2pxbldOc0IxckdNak9zbGpuV25Q?=
 =?utf-8?B?OFNDdEw4aG9EcS9vNmtTOHArcTNMSWY1Y0dVUzRMdThRNlFWR1VjZWg3S25Q?=
 =?utf-8?B?MEEvbmdHemlUaVJEcEQ4QVJHS1BIQTJVNi8xOWdEQlZoblJBY2xHOFRjcFE3?=
 =?utf-8?B?WWs2ZnpRQ3ZpbjkrUkFWck1qcWZlWHNtd2N3dlJrQ3hHNU53dWdka2Z4YzE2?=
 =?utf-8?B?TmE0OHY3bGFSVDM0MlFLdTJWSnMvcmlCYmk2MXR3SUlqUUVCMkNNMlRXTUl1?=
 =?utf-8?B?TkJZeDNrZnZ1WEpManhtRkdIZ01ESmpjc1lWR2dvYWViK2NDYlY4WW5Xcnp0?=
 =?utf-8?B?YUNHcGQrQ3F1UGVUN25JTkV1TEtSekY4K0N3bisyTzlJcG93UXpjd0lyNHIw?=
 =?utf-8?B?b2oyUFRwMjlzUDNCZWJFenlSbFN3Q1I4NEJkakdITDAwOW5hV3dNWHhGa1Vr?=
 =?utf-8?B?UWFsc1l6V04yYnlPTUcrMXRZL3lyQzJEZHZpd0NHWjYzVUNHY3V0YXVBWXVX?=
 =?utf-8?B?Ykx0TVdZNFpOMFF2RHlLK0lXMDRXcTdvd1J3bUU1dVllTHpXVVkwemY4Y2Y2?=
 =?utf-8?B?cWFNVFMvUkQza2NWM0F5VVl3ZDRUTHFjOE4zS2FLYWFKUmtlZHZkbUNNUy9U?=
 =?utf-8?B?NWQ0M3FRdUlyS0pRMm9UVzdSZ1VDTEtGWUV2VE9WSzhUSWRRTkdOQWljOW1D?=
 =?utf-8?B?eHl5b1FzL2ZvTUhXWTFTQTdvMEhCQUdlY2M5OGdLNXkyYVlzMXhRbVkxeHgw?=
 =?utf-8?B?SnUxNitxS2JOSU0yNnNMeWRXWkoxMnFKMEQwZExwaGg5SStOM3hoR2tqa3Z2?=
 =?utf-8?B?dTJrd3piOXk1Ky92Z3NEdlpLSFROSFJVSkxrK3MyYi90VHZtYzc2UXMwWDlt?=
 =?utf-8?B?YnIyRkVXWFRsVk1rZnRiaE9yU2ZNV3htZlF1cmtIbzZzcjJuVFpCQmlQV29P?=
 =?utf-8?B?cUhOeU4zU0pPbE5VdGVFck44TEFtT0M5bEZZMnd2cURNZnNkbkhiRFN1ZlNh?=
 =?utf-8?B?V1hacFBQVzlITHRvRkwxMzkwRWhrb0tHOGc5bzVwT2hZcVRkY1Y5bmxZbnln?=
 =?utf-8?B?V3A4QkVYSmlJMUFNWGhERmc3eUtyR1hQZnZ3VzE5cnVDbU92b1VKUmhtOHZX?=
 =?utf-8?B?ZjRzSFM1WFAvUU52UjlmWFNXZCtndGFUZFRZajNLN0FCeGtoSk5LcDl1RTJK?=
 =?utf-8?B?MzdBYXNUSlI4Tm9uclQza2dvVlF5QUVRajg3cjI4VGlmV2xuT0hYNTYvZHBm?=
 =?utf-8?B?aVZFY3pOeE9jT0ExaDBqeGNjZHFGTEZCTDBKZTk0T2xZSWtHUXlad0E3UmpF?=
 =?utf-8?B?MDVOTU1BdDFWOU1hVFFGL2VkN2FtQjJrMXBwK1c3d0NZTFMrRmwxV3o1ZnBP?=
 =?utf-8?B?bmc1YkRUc1V6R2UxVnNVR3RUdnUveEFQNGIyN29PWWN3SmkzOXFQUmVYMDlO?=
 =?utf-8?B?Nmw2WVlJdllTZExpS0JoN3F3M0JNMkpVczBhTHdhWklMV1BYSEZKTy85OEJm?=
 =?utf-8?Q?cKyhe5JeX2k7LMclSKfg9HptgtlKZEJwKeJp3wbIgc=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B6B77E81FE53E74A953922D3867F2A93@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 379616f2-7a42-415c-a910-08dbf825be9e
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2023 19:41:59.8499 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qBrlD1uG1bxEnO5odt9IVDa5I2w7IHIfSXdE9CrCzT7wank07IBjToX1dpclMsQgJyTbKSZIJPF29+9A9+u1JYgUh3Gcdyrnssd+2r729/A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4517
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

T24gVGh1LCAyMDIzLTEyLTA3IGF0IDAzOjE0ICswMDAwLCBQYXRjaHdvcmsgd3JvdGU6DQo+IFBh
dGNoIERldGFpbHMNCj4gU2VyaWVzOglzZXJpZXMgc3RhcnRpbmcgd2l0aCBbdjMsMS8zXSBkcm0v
aTkxNS9kcDogVXNlDQo+IExJTktfUVVBTF9QQVRURVJOXyogUGh5IHRlc3QgcGF0dGVybiBuYW1l
cw0KPiBVUkw6CWh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTI3NDY1
Lw0KPiBTdGF0ZToJZmFpbHVyZQ0KPiBEZXRhaWxzOgkNCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI3NDY1djEvaW5kZXguaHRtbA0KPiBDSSBC
dWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV8xMzk5MCAtPiBQYXRjaHdvcmtfMTI3NDY1djEN
Cj4gU3VtbWFyeQ0KPiBGQUlMVVJFDQo+IA0KPiBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21p
bmcgd2l0aCBQYXRjaHdvcmtfMTI3NDY1djEgYWJzb2x1dGVseQ0KPiBuZWVkIHRvIGJlDQo+IHZl
cmlmaWVkIG1hbnVhbGx5Lg0KPiANCj4gSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2Vz
IGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzDQo+IGludHJvZHVjZWQgaW4gUGF0
Y2h3b3JrXzEyNzQ2NXYxLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gKA0KPiBJOTE1LWNp
LWluZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9yZykgdG8gYWxsb3cgdGhlbQ0KPiB0byBkb2N1bWVu
dCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZl
cw0KPiBpbiBDSS4NCj4gDQo+IEV4dGVybmFsIFVSTDogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyNzQ2NXYxL2luZGV4Lmh0bWwNCj4gDQo+
IFBhcnRpY2lwYXRpbmcgaG9zdHMgKDM3IC0+IDM0KQ0KPiBNaXNzaW5nICgzKTogYmF0LWRnMi05
IGZpLXNuYi0yNTIwbSBiYXQtZGcxLTUNCj4gDQo+IFBvc3NpYmxlIG5ldyBpc3N1ZXMNCj4gSGVy
ZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBp
bg0KPiBQYXRjaHdvcmtfMTI3NDY1djE6DQo+IA0KPiBJR1QgY2hhbmdlcw0KPiBQb3NzaWJsZSBy
ZWdyZXNzaW9ucw0KPiBpZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQG5vbmJsb2NraW5nLWNyYy1mcmFt
ZS1zZXF1ZW5jZToNCj4gYmF0LWFkbHAtOTogTk9UUlVOIC0+IFNLSVAgKzIgb3RoZXIgdGVzdHMg
c2tpcA0KPiBLbm93biBpc3N1ZXMNCj4gSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0
Y2h3b3JrXzEyNzQ2NXYxIHRoYXQgY29tZSBmcm9tIGtub3duDQo+IGlzc3VlczoNCg0KVGhpcyBj
b2RlIHBhdGggd2lsbCBuZXZlciBiZSByZWFjaGVkIGJ5IGFueSBpZ3QtdGVzdCBvciBleGVjdXRl
ZCBpbg0Kbm9ybWFsIGRyaXZlciBvcGVyYXRpb24gdW5sZXNzIGl0IGlzIGNvbm5lY3RlZCB0byBQ
SFkgQ29tcCBTY29wZQ0KU28gdGhpcyByZWdyZXNzaW9uIGluIHRoZSBjYXVzZSBvZiBpdA0KPiAN
Cj4gSUdUIGNoYW5nZXMNCj4gSXNzdWVzIGhpdA0KPiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGdl
bV9jb250ZXh0czoNCj4gDQo+IGJhdC1tdGxwLTY6IFBBU1MgLT4gRE1FU0ctRkFJTCAoaTkxNSM5
NzgwKQ0KPiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGd0X2hlYXJ0YmVhdDoNCj4gDQo+IGJhdC1q
c2wtMTogUEFTUyAtPiBETUVTRy1GQUlMIChpOTE1IzUzMzQpDQo+IGlndEBrbXNfcG1fYmFja2xp
Z2h0QGJhc2ljLWJyaWdodG5lc3NAZWRwLTE6DQoNClRoaXMgZmFpbHVyZXMgbm90IHJlbGF0ZWQg
dG8gdGhzIHBhdGNoIGFzIHdlbGwNCg0KVGhhbmtzDQpraGFsZWQNCj4gDQo+IGJhdC1ycGxwLTE6
IE5PVFJVTiAtPiBBQk9SVCAoaTkxNSM4NjY4KQ0KPiBQb3NzaWJsZSBmaXhlcw0KPiBpZ3RAa21z
X2ZsaXBAYmFzaWMtZmxpcC12cy1kcG1zQGQtZHA2Og0KPiANCj4gYmF0LWFkbHAtMTE6IERNRVNH
LUZBSUwgKGk5MTUjNjg2OCkgLT4gUEFTUw0KPiBpZ3RAa21zX2ZsaXBAYmFzaWMtZmxpcC12cy1t
b2Rlc2V0QGQtZHA2Og0KPiANCj4gYmF0LWFkbHAtMTE6IERNRVNHLVdBUk4gLT4gUEFTUw0KPiBp
Z3RAa21zX3BpcGVfY3JjX2Jhc2ljQHJlYWQtY3JjLWZyYW1lLXNlcXVlbmNlQHBpcGUtZC1lZHAt
MToNCj4gDQo+IGJhdC1ycGxwLTE6IEFCT1JUIChpOTE1Izg2NjgpIC0+IFBBU1MNCj4gQnVpbGQg
Y2hhbmdlcw0KPiBMaW51eDogQ0lfRFJNXzEzOTkwIC0+IFBhdGNod29ya18xMjc0NjV2MQ0KPiBD
SS0yMDE5MDUyOTogMjAxOTA1MjkNCj4gQ0lfRFJNXzEzOTkwOiA4NWQzM2QwYWQ4MmE1YzFhNzE0
OTJmMTRhNWNlYjY3YWRhNmEyMmQ4IEANCj4gZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcv
Z2Z4LWNpL2xpbnV4DQo+IElHVF83NjI2OiAxNTRiNzI4ODU1MmNkN2VkMzAzM2Y4ZWYzOTZlODhk
MGJkMWI3NjQ2IEAgDQo+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaWd0LWdw
dS10b29scy5naXQNCj4gUGF0Y2h3b3JrXzEyNzQ2NXYxOiA4NWQzM2QwYWQ4MmE1YzFhNzE0OTJm
MTRhNWNlYjY3YWRhNmEyMmQ4IEANCj4gZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4
LWNpL2xpbnV4DQo+IA0KPiBMaW51eCBjb21taXRzDQo+IGRlMTc3ODQ1ODJiNCBkcm0vaTkxNS9k
cDogRml4IHBhc3NpbmcgdGhlIGNvcnJlY3QgRFBDRF9SRVYgZm9yDQo+IGRybV9kcF9zZXRfcGh5
X3Rlc3RfcGF0dGVybg0KPiA1MDEzNzNmNWNiNmMgZHJtL2k5MTUvZHA6IEFkZCBUUFM0IFBIWSB0
ZXN0IHBhdHRlcm4gc3VwcG9ydA0KPiA4N2JkZThjOTAzMTggZHJtL2k5MTUvZHA6IFVzZSBMSU5L
X1FVQUxfUEFUVEVSTl8qIFBoeSB0ZXN0IHBhdHRlcm4NCj4gbmFtZXMNCg==
