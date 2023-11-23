Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2CC7F5885
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 07:46:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7336910E0CE;
	Thu, 23 Nov 2023 06:46:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4F8910E0CE
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 06:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700722013; x=1732258013;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mul1z6OcB8ujOaGMso1To1Md4IjSf0ti1kQ87G/hrp8=;
 b=Z0c6rnT3Lskt2R89rDxMUtSMxC9cBvj47cml2rc/PoX3I2T/mTJfYuMA
 D27OinKcQA103YfKoXDlnTkC6o1dNt4MdVRL67KyJP3cfYx7Xn09sadnt
 jQl8Y/JzySeV+9W2eDjUyWfg3Dch/w+qRQCQv0kAbxAr/W6TRumAff2cQ
 b8bdUaeZbQwMCXIAvwWQc2fjwE6lRAHtx9v9HqPLCLqdzidyX0+8PwZV6
 wvwNfIhZOEzPRzeSzzTgUejVw+uYpP8kZDwB959fHAaP742DjPO79Nk6s
 0MTdTASVb1EByWRqhDlXqtyhoPyzhVU8qeyHkXRZBTLDm0C5PRQt+3BU3 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="13764942"
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; d="scan'208";a="13764942"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 22:46:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="716964931"
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; d="scan'208";a="716964931"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Nov 2023 22:46:50 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 22 Nov 2023 22:46:49 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 22 Nov 2023 22:46:49 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 22 Nov 2023 22:46:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l/8u6M6NSk0YZa6zjD7Vjq/oin8vcaIrT0FgoNLAMCFpUddp+/nxnQ7WGGqte7VBeNSpu+E19YKo7qSOoBlJfhx1/sLzkMqHdxmFwCMC003KzL77GknTEkJmZtMHY4VxAKwZM7e8cEbXtKv18gm1Ycugko+2UVDhwzyYhYUR/KQfuxAVuLYgfavXRIe5RZEGV76NbyfDwn7LBocyXmP0M6QAwj/CiLtXq+YMDXaR9dNVI8NmG/93+pCDfnjOgjtWKYoh1CoLUDT4GES886ZjusZ/95PqgMaqHYd0KPWpELuwjMut2SUWMdmsPAdbTjQWcqDG5hst15VvdpotUJW5iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mul1z6OcB8ujOaGMso1To1Md4IjSf0ti1kQ87G/hrp8=;
 b=TNp2NAQBmjhi1EP7QzegSczsDDGgHNWaj2EYev5dlq1M8dK9rjZN9JaytltOMqvuWlBolisI8JgX39ivETtCb36zBAzE/0SEV2U0ogtvm8e6jcPPWQBwCnF7GgwQmfBGLC09YDHLnk7Q9Fd7sY6R5IPFXeLvpWqocvYMuGYALq16mJshXsKSOKINvbAMNV+yhxECJx8eSf665pyw3alT/5HBELeJXbMOoynaydEiZ4KUsvSQWCggYm4wNWFonlrRUiF0TEV/pAOAjKeywaCfJnGYlIUjXp+HV0WoVOYGaM40OsvstwcZiukmvqkq5xJ/5XaZ3DKmdDBMe+Xdf5kfHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB7073.namprd11.prod.outlook.com (2603:10b6:510:20c::5)
 by SJ0PR11MB5151.namprd11.prod.outlook.com (2603:10b6:a03:2ac::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.20; Thu, 23 Nov
 2023 06:46:42 +0000
Received: from PH7PR11MB7073.namprd11.prod.outlook.com
 ([fe80::fce1:43e0:d60c:c065]) by PH7PR11MB7073.namprd11.prod.outlook.com
 ([fe80::fce1:43e0:d60c:c065%6]) with mapi id 15.20.7025.020; Thu, 23 Nov 2023
 06:46:42 +0000
From: "Musial, Ewelina" <ewelina.musial@intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0gIOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9p?=
 =?utf-8?B?OTE1L2RzaTogNHRoIGF0dGVtcHQgdG8gZ2V0IHJpZCBvZiBJT1NGIEdQSU8g?=
 =?utf-8?Q?(rev2)?=
Thread-Index: AQHaHUzAasSAH+UgPUS9hgfwKXfo87CGY+2QgAALHQCAACX9AIAAA2+AgADeZJA=
Date: Thu, 23 Nov 2023 06:46:41 +0000
Message-ID: <PH7PR11MB7073F35683460D6746BC087593B9A@PH7PR11MB7073.namprd11.prod.outlook.com>
References: <20231103201831.1037416-1-andriy.shevchenko@linux.intel.com>
 <170013946304.3092.1503824312309598619@emeril.freedesktop.org>
 <87ttplprbw.fsf@intel.com>
 <DM6PR11MB38192A2B1E08611ACB696367F2BBA@DM6PR11MB3819.namprd11.prod.outlook.com>
 <87fs0ym512.fsf@intel.com>
 <PH7PR11MB707320EC146F274263792BF193BAA@PH7PR11MB7073.namprd11.prod.outlook.com>
 <DM8PR11MB5655E859CB8C7AAE16FAB6DCE0BAA@DM8PR11MB5655.namprd11.prod.outlook.com>
 <PH7PR11MB7073CA66944A34B28EB3629293BAA@PH7PR11MB7073.namprd11.prod.outlook.com>
 <DM8PR11MB5655EE430B1F635C70201328E0BAA@DM8PR11MB5655.namprd11.prod.outlook.com>
 <874jhdn1vn.fsf@intel.com> <ZV46nbU1j0lX_Jrq@smile.fi.intel.com>
In-Reply-To: <ZV46nbU1j0lX_Jrq@smile.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB7073:EE_|SJ0PR11MB5151:EE_
x-ms-office365-filtering-correlation-id: 741be1a6-2ec2-4128-75cd-08dbebeff394
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T20dXDXcVKgnTas4daNSNPj7wM91G2vQomw0vTgBOn+Ip/CELUJNjJCGpMwD0MGkCagk7M+ZRAOk2Ydv8sj7TfpDK1EQ8dfTzwVpbyeag+PTlA/vvZxxUHKmbsP1qgWCAnACK2bL1saNcKiZS7bxyZ+fsKioVw5MQdoqgOC7kNaN4i95fnTum3xkMyAI1ja7zIyid2GqJzqvCVlKIKfSJ36KpzqXgVQy/MTPdNGdwH1UEPPzIyjOeVT4WEgXolm0/8kfX7fdq/OPFfjvOwYOiE78a0bizQgLLujHjKWo091x1FWZomwUyueHMNLntqfShCEzFzEzygL/tkgs9CxUFoDf3zi2XDxiImfIyqL6kdvpV8klW477WogCC1HaquZnbDWF8B1VoeDHo6YOPkBbmylTGdd41XRQTkNZc25dJSkVpbcYY7MkGXO/7oTPaCX07Bq4Q6eGFK8wO7WDpW7pCpftmcxUrzgqgntoEaCaJuijH9+OwsoRLH/A4us6GsSOdY2HKvZ1V8ASpQ1MYC/3at5+G+h/g0v+ExIEUsQADFmL52F+wAu51s82l8mTqxnEKD2d/a7IGbU7Siin36ldtgcNOEcY94j2XPo9Gbu1Wrw9FKgQtOaYNsLzuKjxsrjy
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(376002)(396003)(346002)(136003)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(55016003)(84970400001)(38070700009)(76116006)(66946007)(66556008)(110136005)(66476007)(66446008)(64756008)(54906003)(38100700002)(122000001)(33656002)(86362001)(82960400001)(83380400001)(71200400001)(7696005)(26005)(9686003)(53546011)(6506007)(966005)(2906002)(316002)(478600001)(5660300002)(8936002)(4326008)(41300700001)(52536014)(26583001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UG84VGRoYk4yc1p4dHVIMy9wNit2T0FuNjlDYWpPazlXa0FPVUNCOFdUL29m?=
 =?utf-8?B?eTBLakJJbnFEc0FRSkFZZVQrdmNham1WZGpXalFnOXNyMjlQdkQxM01PZlZo?=
 =?utf-8?B?VHQ0Z1lvVStnbjd6N3JxUExZbGF3WE5TKzU0UE5Nbk9KYkZYZ09pc00xTm1z?=
 =?utf-8?B?aEJuclZLWHE1dHduK2lnVFVpaGlOSng3K2tOTnJqemZJa0J6cDQ1UjUvbmJT?=
 =?utf-8?B?bjlVOEgyclZyT2NaV2gwRzk5L05raG1LVXlSN3JqV1dDYWxIYnhDNnJtWDVO?=
 =?utf-8?B?UE5pcjFRWW5WdFZuQjNnV1BKWE9wUUhzMnR4bU1hR01ielZiYk9IWllTRDBI?=
 =?utf-8?B?YjRnNEtLcFdJaFUwQVJhdkFGbHJDTmJ6TVlBeUZ3eGpwNENreXBoZTNXUDFD?=
 =?utf-8?B?NDJKYWpGQW9KbklucXJqN1VLNjdCM3dIU0VNeCt3UFNuRjdvempNUGhoWG9M?=
 =?utf-8?B?OFNtZnBBa0t3N2FvdkZmWE9iZjBOSlpmU0x5Q1VIanRSbmpkcHJQeUJHSUxM?=
 =?utf-8?B?QTQ2MER5WWMrZzMyaUZnc2dDSGxxUkM0aGNZMXJxTTFCajd0d0ZsQnh1R2Qw?=
 =?utf-8?B?SzZPS2M1NkwvRWkwK0MxSXlsd1BkUjRxZVhsUFVLYm02emFlMXBFNnJqeTJR?=
 =?utf-8?B?K0U0Wlg3V0FGaTFIM1lHVFNvSmlXTU5Na1ROK2tqQkFGNUVPbzgvMXdqN2Rt?=
 =?utf-8?B?V01zd2dMcFA2dnNuc3FBUFZabkpkRFpyTG1MN2lPcitucmhtN01tUFN6eEY1?=
 =?utf-8?B?bFQ3TXU1UXF5M0FCZ2xoaTFUUmxkSVZFSTJqcU9KWFpLNmExVUJqUXl3ZThn?=
 =?utf-8?B?bjhBSWxQK2E1NldSZ20rR1VOQ05vVkJkVHd1bjZJVlRTTy9aV0kwNnM0a0hL?=
 =?utf-8?B?MkdVdUFNTm1EUWZJU2FYNG5nTzdDcWx3UmpKMUpEeENEMlR4eVFzYnN2dkVv?=
 =?utf-8?B?WUpBcHozd1ZQbXd5WHVGMGZwTnEzaDZabEdXSVEwYVpqUjh0WDljbVF2Rnhj?=
 =?utf-8?B?dnFQTzNGY0FSOXZJMTc2M1BQUU81d1p4Yy9RU1lkL1Bta0hQSXBYcnNzMCtl?=
 =?utf-8?B?UXBVbEJOSFAyWEtrNm54NVhXZitZSStEbXhwOHhtQldDMzMxWVc4V1ZaTE1n?=
 =?utf-8?B?NmRqRk9jN2lsYm0zK1JQV0JZU0drZW9rb3BHei9vbDVFOFMyc1RtSC9xQ0Rr?=
 =?utf-8?B?OEpzMXNmeVdlT2xwZTBEMG5DdlVBeE9DMXJuVHFxd3gvWXhyZTNSL2cyRVlR?=
 =?utf-8?B?SGVKdXBrL0kxRkxCQk9SQlhPRUpmRDAxeVNjYzVRaFUvekkxSXZGaDdQbmZW?=
 =?utf-8?B?Ym8rbk1JQndRQ2xWYlFpdndqV3orYkNZZXpHbCtLcVNodi9LN29YU21IUWp6?=
 =?utf-8?B?NlFkR2lMSGwyYWx6aWVON3hJQi84MExTRHlVQzFMTHM1bkNlZnBwQXVtT2xu?=
 =?utf-8?B?ZU13L2NXWGZEa3k2Sm1DcEcycEJpNXhiek4yMkZCYkNlbFRGM01jR0hsU1NT?=
 =?utf-8?B?aGVPdVhzUTk3QytWdlZZN1hKMmhocW9sQ1M0VnZDaUJRdlF4VTlqRmhZWmxW?=
 =?utf-8?B?L0x6cnV1cXdGcVBkUUR4TzU5OXZGY1NudDZseldEaXJRNUtXL1VwQTFmUDlG?=
 =?utf-8?B?RXpYMkJkTTVnOHNua2RuaXZTUVQ5VjR4SDdSTHV3OGdjWEc5Ujd0eTg5RjZL?=
 =?utf-8?B?bzgyZmJrcHUwNlFHSTRyeE9jU2U4M1FzV1ZBT3VQVFI2YzBhdzFsQjJNVC9n?=
 =?utf-8?B?WFRKbXJvSHRQb3RySFpBS2FOdEtaOUROeWJsK1ErMHlycW1kdDQxd0FKRC9t?=
 =?utf-8?B?Zi9aYmw3eGdkZHlNSW5JVEQ5VG5DMnQ5TkVmZDBPQTVPLytRUW5vWjU5TE9t?=
 =?utf-8?B?OHF3TkRnQ1dta2ZxbHpEOHhpNVBVZENUcmFsS3UzaVhZZ3FXQzJxMUFyVkM2?=
 =?utf-8?B?bG51VU9VNkNFN202SWtENjM2dVJYZHlKTWlBeHNKK0djSk8wYWdyQytDWnAr?=
 =?utf-8?B?RGVNZHJ2dDlwTUFONmdLUnJObndjcXVlU05qWTBtRDRiZW44Q1JLeklQT3R1?=
 =?utf-8?B?YTY1NlNsejl1ckZtZGJqaGhnMmNkeHRYNDd5TXpDanBWNjNTWDBoS1g2N1RD?=
 =?utf-8?Q?dJsaCkwyJvyewShii/Eod4k6i?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 741be1a6-2ec2-4128-75cd-08dbebeff394
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2023 06:46:41.9099 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +2bHTcCKwYtsPxFT3KP923I7f6Tw5c5hOTARCDlFg35MjRAntgS8b9I0SYcSzoy/MC41KUpFxNgemysU6j3xI7qfxPBA79OQbKikueG62cQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5151
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_4th_attempt_to_get_rid_of_IOSF_GPIO_=28rev2=29?=
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
Cc: Hans de Goede <hdegoede@redhat.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 LGCI Bug Filing <lgci.bug.filing@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

aHR0cDovL2dmeC1jaS5pZ2suaW50ZWwuY29tL2NpYnVnbG9nLW5nL3Jlc3VsdHMvY29tcGFyZT9m
cm9tPUNJX0RSTV8xMzkwMV9mdWxsJnRvPVBhdGNod29ya18xMjY1MjZ2Nl9mdWxsJmNzcmZtaWRk
bGV3YXJldG9rZW49THhRbndCbEo3QlVDVU1MMjh1SkVRVE0xTUhXRUVmbHNHVmtQbVhLWnVTcmxk
OXVpcTRwZjMxcEJkQ0hTaXhYRCZxdWVyeT0NCg0KQ29tcGFyaXNvbiBmb3IgeW91ciBzZXJpZXMg
LSBwcmVtZXJnZSB0ZXN0aW5nIGNvbXBsZXRlZCBiZWZvcmUgYmFzZSBidWlsZCB0ZXN0aW5nIGFu
ZCByZXBvcnQgd2FzIG5vdCBwdWJsaXNoZWQgYXV0b21hdGljYWxseSBvbiBQVw0KDQpSZWdhcmRz
LA0KRXdlbGluYQ0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogQW5keSBTaGV2
Y2hlbmtvIDxhbmRyaXkuc2hldmNoZW5rb0BsaW51eC5pbnRlbC5jb20+IA0KU2VudDogV2VkbmVz
ZGF5LCBOb3ZlbWJlciAyMiwgMjAyMyA2OjMwIFBNDQpUbzogSmFuaSBOaWt1bGEgPGphbmkubmlr
dWxhQGxpbnV4LmludGVsLmNvbT4NCkNjOiBTYWFyaW5lbiwgSmFuaSA8amFuaS5zYWFyaW5lbkBp
bnRlbC5jb20+OyBNdXNpYWwsIEV3ZWxpbmEgPGV3ZWxpbmEubXVzaWFsQGludGVsLmNvbT47IEls
bGlwaWxsaSwgVGVqYXNyZWVYIDx0ZWphc3JlZXguaWxsaXBpbGxpQGludGVsLmNvbT47IExHQ0kg
QnVnIEZpbGluZyA8bGdjaS5idWcuZmlsaW5nQGludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmc7IEhhbnMgZGUgR29lZGUgPGhkZWdvZWRlQHJlZGhhdC5jb20+DQpTdWJq
ZWN0OiBSZTogW0ludGVsLWdmeF0g4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUv
ZHNpOiA0dGggYXR0ZW1wdCB0byBnZXQgcmlkIG9mIElPU0YgR1BJTyAocmV2MikNCg0KT24gV2Vk
LCBOb3YgMjIsIDIwMjMgYXQgMDc6MTc6NDhQTSArMDIwMCwgSmFuaSBOaWt1bGEgd3JvdGU6DQo+
IE9uIFdlZCwgMjIgTm92IDIwMjMsICJTYWFyaW5lbiwgSmFuaSIgPGphbmkuc2FhcmluZW5AaW50
ZWwuY29tPiB3cm90ZToNCj4gPj4gRnJvbTogTXVzaWFsLCBFd2VsaW5hIDxld2VsaW5hLm11c2lh
bEBpbnRlbC5jb20+DQo+ID4+IFNlbnQ6IFdlZG5lc2RheSwgTm92ZW1iZXIgMjIsIDIwMjMgNDoy
NSBQTQ0KDQouLi4NCg0KPiA+PiBCdXQgdGhpcyBsaXN0IGhhZCBvbmx5IHNlcmllcyB3aGljaCB3
ZXJlIGluIHF1ZXVlIGhlcmUgDQo+ID4+IGh0dHBzOi8vaW50ZWwtZ2Z4LSBjaS4wMS5vcmcvcXVl
dWUvaW5kZXguaHRtbCBhbmQgdG9kYXkgSSB3YXMgDQo+ID4+IGNoZWNraW5nIGV4YWN0bHkgaG93
IHF1ZXVlIGZvciBzaGFyZHMgaXMgY3JlYXRlZCBhbmQgdGhlcmUgYXJlIGpvYnMgd2hpY2ggYXJl
IG5vdCBkaXNwbGF5ZWQgdGhlcmUuDQo+ID4+IERpcmVjdGx5IGluIEplbmtpbnMgd2UgZG8gaGF2
ZSBtdWx0aXBsZSBtb3JlIGpvYnMgdGhhbiBpbiB0aGlzIA0KPiA+PiBxdWV1ZSBvbmx5IGFuZCBJ
IGFsc28ga2lsbGVkIHRoZW0uIEkgd2FzIGRpc2N1c3NpbmcgZXhhY3RseSB0aGlzIA0KPiA+PiBj
YXNlIHRvZGF5IHdpdGggTWljaGHFgiBhbmQgaGUgcG9pbnRlZCBvdXQgdGhhdCBpbiBleHBsYW5h
dGlvbiBiZWxvdyANCj4gPj4gcXVldWVzIHdlIGRvIGhhdmUNCj4gPj4gaGlnaGxpZ2h0ZWQ6IER1
ZSB0byB0ZWNobmljYWwgbGltaXRhdGlvbiB0aGlzIGlzIGp1c3QgYW4gDQo+ID4+IGFwcHJveGlt
YXRpb24gb2YgdGhlIHF1ZXVlLiBJdCBpcyBnb29kIGZvciBhc3Nlc3NpbmcgdGhlIGxlbmd0aCBv
ZiANCj4gPj4gdGhlIHF1ZXVlLCBidXQgc2hvdWxkIG5vdCBiZSBjb25zaWRlcmVkIGFzIGNvbXBs
ZXRlbHkgYWNjdXJhdGUuDQoNCj4gPiBPSy4gU28gY291bGQgaGF2ZSBiZWVuIGluIHRoZSBsaXN0
IGJ1dCBub3Qgc3VyZS4gDQo+IA0KPiBPa2F5LCB0aW1lb3V0Lg0KPiANCj4gSSBqdXN0IHB1c2hl
ZCB0aGUgc2VyaWVzLiBJIHRydXN0IEhhbnMnIHRlc3RpbmcgaGVyZSwgY29uc2lkZXJpbmcgdGhl
IA0KPiBsaWtlbHkgcGxhdGZvcm0gaW1wYWN0IG9mIHRoZSBzZXJpZXMgYW5kIENJIGNvdmVyYWdl
IG9mIHNhaWQgcGxhdGZvcm1zLg0KPiANCj4gVGhhbmtzIGZvciB0aGUgcGF0Y2hlcyBhbmQgcmV2
aWV3Lg0KDQpUaGFuayB5b3UsIEphbmksIEhhbnMsIFZpbGxlIGFuZCBvdGhlcnMhDQoNCi0tDQpX
aXRoIEJlc3QgUmVnYXJkcywNCkFuZHkgU2hldmNoZW5rbw0KDQoNCg==
