Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03DB07271FB
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 00:47:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 537EA10E566;
	Wed,  7 Jun 2023 22:47:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68ED310E567
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jun 2023 22:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686178061; x=1717714061;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=LzvFDouR7eJLgYX0jvSfUwv74fqPlIHyJdUZhFraQJ4=;
 b=B8tlh+ryuXblQa13YHrbmfGDcBN8ALD813sfnMdD9WRNey+6MOcGNlIN
 N/BXhyMGq0qufqxAxBFQvw5o9dfTSlI8iZRleP7pc94L7lM6ntqlAE8SP
 NquVX0GFNC3Oe7Eh/vI61obpDYOdughyGygh0fbqSia5Tlf6uOzdfQqee
 2jXbkfepV1t3ZeOvP5DBy1hS4xbFTiYcYt0hUPU3zBP+74N8vY9UNg07D
 uNXhUrN3855bgq2aBM1/Hu1WW7YL/7uhv7kTdzvMwIOIdwvmVofF93dis
 CL97r43Eo44HH5vm4PTul5JskLHjOyL91xIQIZrtj+80ho6v+3SOWuqFw w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="354620995"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="354620995"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 15:47:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="712860069"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="712860069"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 07 Jun 2023 15:47:40 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 7 Jun 2023 15:47:39 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 7 Jun 2023 15:47:39 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 7 Jun 2023 15:47:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lv3te0DPBPugQp+h5H8xuUY9PS/vO94gFeuZ2aCd/QDJBzDBKcNLsngrcC1jBgQxSW5TGY3H1mAvYOOa1hgj3E0AvbcgXYgx+TspteqWPsl2//gczyy7ubw1rL7BvD80rjU3modZGZkoBQq0XjbvM3vftgjEpqGtm+XqVpAtYGYEKkOXS4zaZYHqLhGaj51uEv1qVPr231Sn60KZoezkCgbClKRcIFFiGksyghacMcuA38wA3JthkwFaZvCKwYC4uR9UokKslOe4jdbRF0IHVzcIt/8a8+f0TA6s/u/kOjR1eW4GZfft7jtEZnKnh0E7o3g+O9e/yngP72XZGsBC2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LzvFDouR7eJLgYX0jvSfUwv74fqPlIHyJdUZhFraQJ4=;
 b=WewEHXCEZ3aQka9o43BK2oelVyvI4tCEkeBKAVxR11giCLEfXBFXmmxLWbhUnTu+lPBdXjuwf/bCSOjfpfjfzWt3rrhQsCe2K9tgCI01fFnvvoflBDbQ9A7Sf8UoocwZpc0iMf6GxJOJptMR2uCAtY3BU4dxC5H9dmEegJ+vYPM66fnGUI/lHeUTSMI076gD6WdAXhkJd/IDjnc6w4XOh66QW/Dx2/NQTJK9rsOEab66aZNSJjw6/n4JbNOG5S9T/126Z3FwaFP9Curfh0S66MOlOjFsen+peK4/VI3alglmXBF7b795Xa/JWF0uwkLJHaghxCPkrHp84gwJzvqr3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB5963.namprd11.prod.outlook.com (2603:10b6:208:372::10)
 by DM4PR11MB6043.namprd11.prod.outlook.com (2603:10b6:8:62::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.32; Wed, 7 Jun 2023 22:47:36 +0000
Received: from MN0PR11MB5963.namprd11.prod.outlook.com
 ([fe80::6984:19a5:fe1c:dfec]) by MN0PR11MB5963.namprd11.prod.outlook.com
 ([fe80::6984:19a5:fe1c:dfec%7]) with mapi id 15.20.6455.030; Wed, 7 Jun 2023
 22:47:36 +0000
From: "Edgecombe, Rick P" <rick.p.edgecombe@intel.com>
To: "Hansen, Dave" <dave.hansen@intel.com>,
 "janusz.krzysztofik@linux.intel.com" <janusz.krzysztofik@linux.intel.com>,
 "bp@alien8.de" <bp@alien8.de>
Thread-Topic: [PATCH v2] x86/mm: Fix PAT bit missing from page protection
 modify mask
Thread-Index: AQHZmYS6GTi4WqcQaEiK5O6PEyZEPq9/3ECAgAAU0IA=
Date: Wed, 7 Jun 2023 22:47:36 +0000
Message-ID: <8bcfad6697316e200f78bd13e737345dc0436404.camel@intel.com>
References: <20230607152308.125787-2-janusz.krzysztofik@linux.intel.com>
 <38324471.J2Yia2DhmK@jkrzyszt-mobl2.ger.corp.intel.com>
 <ad762335fd209fd8c1555401bc03e196eb53caef.camel@intel.com>
 <20819659.0c2gjJ1VT2@jkrzyszt-mobl2.ger.corp.intel.com>
In-Reply-To: <20819659.0c2gjJ1VT2@jkrzyszt-mobl2.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN0PR11MB5963:EE_|DM4PR11MB6043:EE_
x-ms-office365-filtering-correlation-id: 806f9683-1e1d-4706-5c7d-08db67a93071
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CPEKiyGZ52JCAMzWD4IYtCO5jDrnQqz0uYL+pw/IXQlmr4LYdBjE3ajjvcE4XfBfeIyOppObTCj/HiebTpdbdSZVoX3YIBCEI7R07FGPFDaTzD4zyz+TTzvdtzoG+Gu4u6Rj19P/qZJr3Z+BFdomiF6bLOFpZI4KjPz5kZxWnZH/RLe7Qhv/o0Jthu/pPDxM7cM69KA72+SzTV/jON2iC+HskRShAkKVzHUyuZgOYQZru1/SJOjsLU7XV9s+3I7BvG6dTvVICz6fsE/tJLZv/4R1SZD1W1uvBSx0zaz+cMsNFbIXxSNGQlOoiQkfLMCdzIZhHrsTclj47fizrIeUOV4/jo+wZASDi5LY0DslXNvexFYnUBP8qzihY/npo1bFzHiaAdekbkeunRXm/XFcWbznh6WgGonuDxGVtYmg+CyoQPrasNS2aeh0JPfR09+SVc9qhziT3Sj1W6x8901TYYvvXpcHVvbrmmUHwYbWQpk4QEpnyOYck6uT9OrTqBRtdwTyAitwHm8vVdlaFrfOf70nMNOpReCHnNQ6P/s9CnOSn5uoKjhivvucm8II9tiqHPAFejFMkXAr8NduBOsXJY1SJUeGPhroz0+gNXTI6xmIMiHquvr3mIxMb0c1GUxV
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB5963.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(346002)(366004)(396003)(136003)(451199021)(7416002)(83380400001)(186003)(2906002)(2616005)(38070700005)(36756003)(86362001)(82960400001)(38100700002)(122000001)(316002)(6486002)(6506007)(41300700001)(5660300002)(110136005)(8936002)(8676002)(478600001)(54906003)(64756008)(66556008)(76116006)(66476007)(71200400001)(91956017)(66946007)(4326008)(6512007)(26005)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OUFzTUZNaTJPQ0FQNTZFU2pOWmd5Tk1ORzEwTFBLVEVNK0tiaTQySVBKS0Ro?=
 =?utf-8?B?VkFmN0F3cng4OWRzYm5CY3lwMWxUTk80Q1NPVURvNXRnUGcvaHA3WDVLV2hQ?=
 =?utf-8?B?TTdyOExKSHV3cE85SlBFL3o5ajVxTkthVkNVYitmVm95ZHFyR0lCRWpiU05i?=
 =?utf-8?B?Nkp1S000UktDMkxLUHpSUmlrNk40aXF5a2d3T2hta3lnNEVnc2EzWk56T1RJ?=
 =?utf-8?B?RndXdmV4N1dIYkxvZldBbEtZQ00rdzJPYkR5K3liWm1pWWFIaU5PQVZEZkF1?=
 =?utf-8?B?cEl2RC9pTVBPazU5V2t0cUlHU0hTY2pqVnhWUWJWMXowL0tobjJkc3dCRG1K?=
 =?utf-8?B?d3o0a3kyL2U3bE9LN3NPN1orQWZoMzJmb0pid1FPMHN5WnViSXE2RUxkUHhw?=
 =?utf-8?B?M1ZlY2RnWHpMNlBGeHlMblljOGl0cWR3YnFobEhFVU5EVEs0TkMwcC8ydW1U?=
 =?utf-8?B?ZHlwUTQ3RFk3SWRUd2NiekY4cWVwR1NyaGY0RU5URkNicDIxUE5Dek90Zzkw?=
 =?utf-8?B?akVNenh1SEtMbDArUGtkWEVFcWhXMmNrdG9uUEtqWDM0TmpwOGwzWERYU2RM?=
 =?utf-8?B?Y0pwTzAzK01PZXkxOXp0N0cwRCtJVTFaRlQ1dVVWOStQcks4SEJlNEV3NXJy?=
 =?utf-8?B?VktQRGZkd0V2cGFDK21LR0tvMFZRS29DRXVPSjdZNURVQXRRR0ZPSDJCaUd1?=
 =?utf-8?B?dUhvdEhtUFF5YXVnTVhVbGdmQWdCQnBpK3ZoczdNbTE5WmNKQWFnVFdMQ0RH?=
 =?utf-8?B?NHM5ajdiaWtHbzJxcWpDeVRxN09LYmFhMXg0bTBKZDhreVk1dTBFMzQrOUht?=
 =?utf-8?B?Mm5hYnptZXpQc0dSZE9WUFlOQ044cnBhdW5iam8vdlhvVTkxajFSYUt0Mk1O?=
 =?utf-8?B?MXBTQjAzNTBqSmw3RXJ0Nk1haWxXQVJHSyswLzcwZnpkTytibXlpZlFvZjBt?=
 =?utf-8?B?MC9CaU13U3BFNmxOcnVEb1Z6em9nRlJTVHQxZFpWVE9GcFFLSG9UZVBoM0p1?=
 =?utf-8?B?RzlxQTN2SFVCN0dadzNmR1dPKzl0akF1SXFKbFBuNHhieVhOUU01NnNZNm9u?=
 =?utf-8?B?bFpmc3B2WXQ3cjVWNjhDTkFuTkpBK0Nyd0RMbHdmWU1HbnEvMXlzZ3dEUGJM?=
 =?utf-8?B?cnovYm9qdDBIVUhMc0dqT3JhaW15dWw5ZU1LSHhWL0N6Zk4vbjY5MmhJS2hE?=
 =?utf-8?B?Wkd5VE45UmdYd1JNeTR4Ymc0TFh0QzNHVmtQOGJCMmxCU21mb2xSWnhGK2Rl?=
 =?utf-8?B?K0N3bU9wTnF0YnFHbHZFTDB4Q0lkbStJUUZ1b2Q4WTgxSUtRc2EyaGd6bkZx?=
 =?utf-8?B?SDM0YzRDQ0dobjFocjZyVFExaWlOU3lOM0xaaGVweVAzMnZNSWtWbzgySnpk?=
 =?utf-8?B?am5Tb3AyTHFIeW5pTzdBWnNEbXovQitoTm9oSEM2a1J2Z21OTkF6eUVqMEZv?=
 =?utf-8?B?TXpZcndYM0c3ZzA3RVFXOTNhWVRUUUZ1cW9tT1F3RzcrWk9HektMMXZsMm1v?=
 =?utf-8?B?U3FBZC9zWlRFd1ZQYytCRlNEbmFxOElrUzI5Yk1VcmoxdnhDUnBaamh5NXFC?=
 =?utf-8?B?T2JGQU0zVXZrSDE5ZVBmWEpabUlnUnFtNXo3WkZXVkwrVTlQZUpsLzgvbjFq?=
 =?utf-8?B?NTFiNFd4U2NGMFNLTUFmRFk0a09weG05VEg2TTRLakovOEt3K0E0aTY1QjBY?=
 =?utf-8?B?MWQ1NFFQbWdnMWtvbE1DbE9vTHpyZUpkMThBVklJbnVxcURQMWU5RC9nRDZK?=
 =?utf-8?B?OGI5T25yNXpPSUNsSHNoY3YxN2c2cm5aL3d5V1pJVWRjMUdwcXNkR0dEcmlS?=
 =?utf-8?B?SlZqKytTWEw4VytXY3FjN1lTWHQxS2RzQXkyMGlSdVNJa0pqRFFqQk1TRjlr?=
 =?utf-8?B?dUs5eStLOFdRK0pubndxZm9nNXpKbGZTODlhSkZxNFRuWXcrVXF6cWRSRnly?=
 =?utf-8?B?QmNTVkdCTUk2M3FMZ2tHbkMvd2cxNlJjT2pkNFdLRkFpZE1zaUczdFNIVEVJ?=
 =?utf-8?B?NVZsMkJSWm0wZFRsdnJPSXg1Wjd5NXpxRkxsaHVwVGNTeE1wWjlmRVJJZ2wr?=
 =?utf-8?B?eVlDbEZYbksrYklNQXNXd2hVMGovTHdOZFIvVGRhT2RpTjdzazRRZmhhMExy?=
 =?utf-8?B?blpZb1JPRTNMMlhWVjdwRUJPTFM4cjBQRUVLMFhBNGZneHNwVXJIelZ0QUpo?=
 =?utf-8?B?anc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F6C9BB410BF39B46B65FFBA95FDE69A1@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB5963.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 806f9683-1e1d-4706-5c7d-08db67a93071
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2023 22:47:36.2506 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZJeyAGwWg0e19FXDqzI9+VAj5mFpxGhC26RII1muJJL1DYHfDoGWzziaz+JnPTUCfan1UfYMahlnY0R7rXT9q1FH5GkZvpQlUYIpha3Z+BY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6043
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] x86/mm: Fix PAT bit missing from page
 protection modify mask
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
Cc: "Gross, Jurgen" <jgross@suse.com>, "x86@kernel.org" <x86@kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dave.hansen@linux.intel.com" <dave.hansen@linux.intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hannes@cmpxchg.org" <hannes@cmpxchg.org>,
 "mingo@redhat.com" <mingo@redhat.com>, "hpa@zytor.com" <hpa@zytor.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIzLTA2LTA3IGF0IDIzOjMzICswMjAwLCBKYW51c3ogS3J6eXN6dG9maWsgd3Jv
dGU6DQo+ID4gU28gc2luY2UgX1BBR0VfUFNFIGlzIGFjdHVhbGx5IHRoZSBzYW1lIHZhbHVlIGFz
IF9QQUdFX1BBVCwgeW91DQo+ID4gZG9uJ3QNCj4gPiBhY3R1YWxseSBuZWVkIHRvIGhhdmUgX1BB
R0VfUFNFIGluIF9IUEFHRV9DSEdfTUFTSyBpbiBvcmRlciB0byBnZXQNCj4gPiBmdW5jdGlvbmFs
IGNvcnJlY3RuZXNzLiBJcyB0aGF0IHJpZ2h0Pw0KPiANCj4gQXMgc29vbiBhcyB3ZSBhZGQgX1BB
R0VfUEFUIHRvIF9QQUdFX0NIR19NQVNLIC0tIHllcywgdGhhdCdzIHJpZ2h0LsKgDQo+IEJ1dCB3
ZSANCj4gbWF5IHN0aWxsIHdhbnQgdG8gYWRkIF9QQUdFX1BTRSB0byBfSFBBR0VfQ0hHX01BU0sg
dG8gaGF2ZSB0aGUgbmVlZA0KPiBmb3IgdGhhdCANCj4gYml0IGV4cGxpY2l0bHkgZG9jdW1lbnRl
ZC4NCg0KX1BBR0VfUFNFIGlzIGFscmVhZHkgaW4gX0hQQUdFX0NIR19NQVNLIHRob3VnaCwgcmln
aHQ/IEknbSBjb25mdXNlZC4NCg0KPiANCj4gPiANCj4gPiBJIHRoaW5rIGl0IGlzIHN0aWxsIGEg
bGl0dGxlIGhpZGRlbiAoZXZlbiBiZWZvcmUgdGhpcykgYW5kIEkgd29uZGVyDQo+ID4gYWJvdXQg
c2VwYXJhdGluZyBvdXQgdGhlIGNvbW1vbiBiaXRzIGludG8sIGxpa2UsDQo+ID4gX0NPTU1PTl9Q
QUdFX0NIR19NQVNLDQo+ID4gb3Igc29tZXRoaW5nLiBUaGVuIHNldHRpbmcgc3BlY2lmaWMgUEFH
RSBhbmQgSFBBR0UgYml0cyAobGlrZQ0KPiA+IF9QQUdFX1BBVCwgX1BBR0VfUFNFIGFuZCBfUEFH
RV9QQVRfTEFSR0UpIGluIHRoZWlyIHNwZWNpZmljIGRlZmluZS4NCj4gPiBXb3VsZCBpdCBiZSBt
b3JlIHJlYWRhYmxlIHRoYXQgd2F5Pw0KPiANCj4gWWVzLCBJIHRoaW5rIHRoYXQncyBhIGdvb2Qg
aWRlYSwgYW5kIEkgY2FuIHVzZSBpdCBpbiBteSBwYXRjaC4NCj4gDQo+IFRoZSBxdWVzdGlvbiBp
ZiBfUEFHRV9QQVQgdmVsIF9QQUdFX1BTRSBhZGRlZCB0byBfUEFHRV9DSEdfTUFTSyBpcw0KPiBy
ZWFsbHkgDQo+IGhhcm1sZXNzIGZvciBwdGVfbW9kaWZ5KCkgYW5kIGl0cyB1c2VycyBpcyBzdGls
bCBvcGVuIGZvciBtZSB0aG91Z2guDQoNCldoZW4geW91IHNheSAidmVsIiwgdGhpcyBpcyBzaW1p
bGFyIHRvIHRoZSBlbmdsaXNoIGFjcm9ueW0gIkFLQSIgSQ0KdGhpbms/DQoNClNvIEkgdGhpbmsg
eW91IG1lYW4sIHdoZW4geW91IGFkZCBfUEFHRV9QQVQgdG8gX1BBR0VfQ0hHX01BU0ssIHlvdSBh
cmUNCmFsc28gYWRkaW5nIF9QQUdFX1BTRSB0byBpdC4gU28gZG9lcyB0aGF0IGNhdXNlIGFueSBw
cm9ibGVtcz8gSSBzZWUsDQpnb29kIHF1ZXN0aW9uLi4uIA0KDQp2bV9wYWdlX3Byb3QgaXMgdXNl
ZCB3aGVuIGNyZWF0aW5nIFBURXMgYW5kIGh1Z2UgUE1EcywgYW5kIHRoZSBzZXR0ZXINCm9ubHkg
dXNlcyBfUEFHRV9DSEdfTUFTSywgZXZlbiB0aG91Z2ggaXQgd29uJ3QgYWN0dWFsbHkga25vdyB3
aGVyZSB0aGF0DQpwcm90IGlzIGdvaW5nIHRvIGVuZCB1cC4NCg0KSGF2aW5nIF9QQUdFX1BBVC9Q
U0UgaW4gX1BBR0VfQ0hHX01BU0sgY2VydGFpbmx5IGRvZXNuJ3QgbWFrZSBpdCBlYXNpZXINCnRv
IHRoaW5rIGFib3V0LiBPbmUgdGhpbmcgaXQncyBmYXZvciB0aG91Z2ggaXMgdm1fcGFnZV9wcm90
IGlzIG5vdA0KYXBwbGllZCB0byBwYWdlIHRhYmxlIGVudHJpZXMgdGhhdCBhcmUgcG9pbnRpbmcg
dG8gb3RoZXIgcGFnZSB0YWJsZQ0KZW50cmllcyAoUFNFID0gMCkuIFNvIHlvdSBzaG91bGRuJ3Qg
YWNjaWRlbnRhbGx5IHNldCBQU0U9MS4gQW5kDQpfUEFHRV9QU0Ugc2hvdWxkbid0IGJlIGJlaW5n
IHNldCBpbiB0aGVyZSwgc28geW91IGFsc28gc2hvdWxkbid0DQphY2NpZGVudGFsbHkgYmUgc2V0
dGluZyBQQVQ9MS4NCg0KQnV0IHllYSwgSSBzZWUgd2h5IHlvdSBhcmUgY29uY2VybmVkLiBJIHdv
dWxkIC9ndWVzcy8gaXQgd291bGQgYmUgb2sNCmZ1bmN0aW9uYWxseS4gVGhhdCBwcm9iYWJseSBk
b2Vzbid0IGhlbHAgbXVjaC4uLg0K
