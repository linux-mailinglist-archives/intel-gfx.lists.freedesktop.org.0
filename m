Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D316147EF
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Nov 2022 11:50:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00E258825E;
	Tue,  1 Nov 2022 10:50:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC37B8825E
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Nov 2022 10:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667299841; x=1698835841;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=2S0ewuwhZgjG2jmjBeQlTt+xyOPHjyZHfdweBs/aLZs=;
 b=Fs2BWABbCPho3ku/1n0kkOF2cLf3jAlJAzQQlxLWOidUDujfdVgymKuF
 gx8CJjJuNBkg7GG76yZKuaqZXgmjoAbY/WWk2pKQWVNhYMb+AL8+v+f49
 eVF/ZBp2PDXGZ1wvExaxNVWWWZpn/w2Mujj3HI5Kqe08Ni1L77ouZyiII
 3VpWLPnkXR4oL4t5UfXdIOoz/r9lE6KKIZDkc+CvoQQ71yulgDak42+WY
 DqphmwZDslDMnog3r2ZzUXRETlwAeuqz8/+L2R6fsXGByRkWcyL2ELvYb
 vScqNa7K8zdUPiFxBxmkkLlsiUS4VkhdXmx9gw5lo7oRzZN9Z/k2R4RT3 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="335773691"
X-IronPort-AV: E=Sophos;i="5.95,230,1661842800"; d="scan'208";a="335773691"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 03:50:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="665113232"
X-IronPort-AV: E=Sophos;i="5.95,230,1661842800"; d="scan'208";a="665113232"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 01 Nov 2022 03:50:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 1 Nov 2022 03:50:39 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 1 Nov 2022 03:50:39 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 1 Nov 2022 03:50:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ip0jKWhYcddPZlq/QCtNCKYjhzJkxoAOYdVwIivwqqjkjtnNRlgWPJU/tWYarSGK2mm42ktKwGtNy8suvwi3mgU19i5N0Indk6UrvzJm+w6vcr7irdP3fZj7DVUGuOrFWKrMaMMoSFDpVThR2Tm0NctrAdjt9+0/K9dxD8LQw4q0pnnl0f3CNyY8xZPfNIVIJEeNJB5HXiL1o68/ZDUhAGOZJWMgCJt0hf/JPRFi1s37KFmmOilAIGl3v3SlY9dhcqcf+H8PPCH/uSwHSQT3egQl9o38oOqG63cbzjyUgsM+Juxnw9JeutTQWsQmnjI9TjB01C7//+Z73nuKa1J38Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TtNGbr0lD4nCye7/IQX1Gd8qvLz10wR5u0VJGuyKIIs=;
 b=eFiDdNpzOeiAfjtVI8FFSoZD+f2h+BceHZMxMlzw854p9GPiFpOLQyW1lFm2l7LcU5+qJiQAoIvHO5DR71y/Xp9vozaHAKsXPsKCNNJ5eSfE9lpECkZIBWdMZ99Nm+fG/bZh39d9Muj+GqvUcb4Rp8ecxInr1FLasc8NwyIzJKBTt/cDswdSx9W+WAS0YowYApcTjXvXZVzArKuTMfuALHAC4YbwStns/LDD+BF2bESQ5lNkfz5Bi0l22r36ktNSxqC6ZfhznEp1KLGIYb7yvthuZFPA9LbwlsKTrftlgJ0pobL+4CCKXUYaH8sYeIsEfg9Z97OCAAKrbUJSYfh6OA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2715.namprd11.prod.outlook.com (2603:10b6:5:be::18) by
 DM4PR11MB5360.namprd11.prod.outlook.com (2603:10b6:5:397::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5769.15; Tue, 1 Nov 2022 10:50:33 +0000
Received: from DM6PR11MB2715.namprd11.prod.outlook.com
 ([fe80::1613:a62b:979:68c1]) by DM6PR11MB2715.namprd11.prod.outlook.com
 ([fe80::1613:a62b:979:68c1%4]) with mapi id 15.20.5769.019; Tue, 1 Nov 2022
 10:50:33 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v2] drm/i915/pps: improve eDP power on flow
Thread-Index: AQHY57HqolpnXXEub0yKH9NOK4pvt64p4CMAgAAGsxA=
Date: Tue, 1 Nov 2022 10:50:33 +0000
Message-ID: <DM6PR11MB27155735D30508F850923FF4A3369@DM6PR11MB2715.namprd11.prod.outlook.com>
References: <20221024064004.1879-1-shawn.c.lee@intel.com>
 <20221024140607.25271-1-shawn.c.lee@intel.com> <87sfj380hf.fsf@intel.com>
In-Reply-To: <87sfj380hf.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB2715:EE_|DM4PR11MB5360:EE_
x-ms-office365-filtering-correlation-id: 067dbabd-b97f-4c07-cea9-08dabbf6e692
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0Zk1e4NxalsFMYQAIGvZJ3T4DhxC7rOvVoXv/9yRUPGpig2nzx+inOYPkStwFieSmsIAp4m4F4Gg2TW7YLfsYRxd62VC4peeuHlFA+ahbzKILXIJYkEBPRug9WDasFwHWgTloSt1/f5rNFBPpk2bWXLd6x9yeur+MZSkWCJZ0kFt4tsVcwP1Ym/GED4Gpa85I0WwDQHKV7FACSARCNhjceBHHb4WaHgRHUYO3Q2/HkkDpfNmOfyfBhzCer1eIOJej60Xu3pswcQ3WYwGkCTqsjzRXVwRypEqit7feyOWHPRgDsd+pklMxcx9dGbnqD/u81WaOkR6kpDkXPTI8tV6AySDIIg20vT9bPsmTEdRCmsjikG+C+J15uOlog2gj66tjzUD1VfAaTyiCXkXIeXaN1ooCrr7j0H2bgG0QvTjBjmCE1Q53w6W7U43f+spuzK5sWDHEd8ApETGUtuT+fBtUNFj/0JtAJ/1oRdgwPrV9hLy4KxrlPCJjLJMp6N4XpcK6TeTPl80l+4AVy7BPpkcXxUws73Z7gEcMUJXeYHyAlBHXpQPXgDjEJ9wYaCRH9l/8IsaWkqkX68qHAlpqRJBR+RM/9GPH6PN/cBhAzUUEhvYzkmQDxfHLHl/53M2+JfvFcUuSm9SbUtHNPwGk8o9k/mzB8GAV5mxGLFONClexJtsKht8Sp/9oP8GpMQ6oxeYZlIiVvH0zUGbud21F8lG3bNWGyWNfT9f8CI1Evm6zosuDWxBNfhSYDsUAXcBmZUi5QKU5ywwuPwM7tqoXc6biX73TOqbeHLwbmh/FV3nk38=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(366004)(346002)(376002)(136003)(451199015)(8936002)(55016003)(122000001)(8796002)(66476007)(6506007)(7696005)(2906002)(52536014)(316002)(76116006)(4326008)(66556008)(71200400001)(8676002)(82960400001)(66446008)(64756008)(966005)(110136005)(33656002)(66946007)(5660300002)(54906003)(38070700005)(86362001)(38100700002)(83380400001)(53546011)(41300700001)(186003)(26005)(66574015)(55236004)(478600001)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?AjZFWXorIc9mZbwsRpjO1g8wmPx2nB6d2KOfmX1BuJuClmuKV4/Pojlf5/?=
 =?iso-8859-1?Q?a6cQLdOTODuoz8LvO9mOn5Bl6ygEfCBdPjCjGlMxHEiuf6BdMqM9zygYEd?=
 =?iso-8859-1?Q?p0ISETGlyYWNux2Eao9HlmPfNxh7RcKCLJxdc+1sGs9VbW4TTpUw3Z7vK9?=
 =?iso-8859-1?Q?xumZMR1op1hxzjKxaC4u0QI/OusYTwbBQqZqWR88gda2LnnfXah6susIou?=
 =?iso-8859-1?Q?xKzM3gPc5Nx3L2QemBg1p7ZxtBpHpVuWyNDef1qS0WtPgFGDla5jFTNfK1?=
 =?iso-8859-1?Q?2ai8NLHvuqeVtoriM6tnSzMyiFTdLIDEYG7St08B0ZohtmpaF4nIIlRNkk?=
 =?iso-8859-1?Q?5CwKtSJQw+LBFcdRH2ugJg/Dsee1OhyS4Cqu/fT34RDK2NgNiC1/wyERqE?=
 =?iso-8859-1?Q?f/bO/hvZM8ghiXvYUnwKI/a4NvPC+7qdbO/TjZIGDZv5otNbOwL6v9dvcr?=
 =?iso-8859-1?Q?GxPBzGGm66esEG/+WMMiFh/iGnUswbtymd8w6+atGEtjZhonWKgk849lDo?=
 =?iso-8859-1?Q?cHfn96GbxTOa/V4qA/bfGn6vddyQJUe6tmFAd7pMuHYz5DpBB5RpXy7aaF?=
 =?iso-8859-1?Q?MPuyCXXY+YrR+JXYxp5093n0RxlMYeT1rHGHvDUDimA/1IuYk+u5MTIC/2?=
 =?iso-8859-1?Q?mcIvmEC8Q2P6uJZemphO+k9f+om46d4/yq8Lv67bRr9UquGDWoAIiXXXfK?=
 =?iso-8859-1?Q?DCGUJRHDPa73S0fPe4LfkDjb2qoZj8PWxnjLRLxeka8PGlsbXb8d1ikH/s?=
 =?iso-8859-1?Q?ZRPEewiv0ZFwxqtWo6uDmJWAvvs2UWahGwxd36UAR91zzqxDlPlRo53wfc?=
 =?iso-8859-1?Q?z0g8i0kRmzFLqvYfABUSg2FCyt0KCgmyNHi9h01L0UF7nJuo4eGoRlzD/Y?=
 =?iso-8859-1?Q?o2BsA84FBimbVoeBEgsiDjpSkbcadVUyr5l5R+EKHNCQUDULJAlZMTz4uO?=
 =?iso-8859-1?Q?sU2U/guQMl+Q9LbefPjnNT34OJqRyGykk3mCrxlTs51dszoyjY0RDD9rLa?=
 =?iso-8859-1?Q?QgZIW2c1EQ7zeuLqjVZZJHHm4Lgvl5zmg6LYTAaA40lY93K0EtUeT5CFF5?=
 =?iso-8859-1?Q?SCM+sbuLDUzV9JyG/k/72oKlPUyhpPgSrVqYLVbqCq9+lJaOm38GGxUcs6?=
 =?iso-8859-1?Q?kwC3va5dIo5aE2c4mHnZzI8JvfULJfhkugDhzuA/sGCuVZcnISxLiawaVD?=
 =?iso-8859-1?Q?OeDK2VhfRrMcleQo5kOCmyyV3ds37m+bl7vE4ulkr+uAN62tT+FtJgJ72L?=
 =?iso-8859-1?Q?LAqV9DsoV7RL6d4lvxcWKIBKacdD8v14QMnhW6j3UmTS4sDuwCfx29RwDg?=
 =?iso-8859-1?Q?VMf9/cxQiMapREbnvb4RievsMPtTSijDwEAWKkWrDQ28u9yDstYpb2vlTf?=
 =?iso-8859-1?Q?HlotkBD/jMOE+PFGsz67HDnCo7zIoyWM2H+q5GOG6Gv+NRhHIM6JbNI46B?=
 =?iso-8859-1?Q?D20O/FzPKSLYmJW6qs2+83C8etEteV/kXQhWNbMvh/lA2rxTUaLuA21cnH?=
 =?iso-8859-1?Q?Fbi9gNJnDyLWUUVKDBRs5sUvyaGvghetqh7jl+W1tf4O+5WjJZGvoXZvUc?=
 =?iso-8859-1?Q?5B5GZh8sY9EElCkYbFTqzLT8zZsRbzPY3U6GQDnS+VUUn1tBWHBPUXNccb?=
 =?iso-8859-1?Q?jc8vtTbNInen2YigJnZ8E6X4JrwgczS1Ay?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 067dbabd-b97f-4c07-cea9-08dabbf6e692
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2022 10:50:33.0763 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YguR1Qrxp4dFE2wmUCeGBtsPmhPO4NML6cA8nCXZk57+oG3hbT4EF6t7Hd+lfGkzRcdjeBOkNnrkORzLoes02Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5360
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v2] drm/i915/pps: improve eDP power on flow
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
Reply-To: "20221024140607.25271-1-shawn.c.lee@intel.com"
 <20221024140607.25271-1-shawn.c.lee@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On Tuesday, November 1, 2022 5:53 PM, Jani Nikula <jani.nikula@linux.intel.=
com> wrote:
>On Mon, 24 Oct 2022, Lee Shawn C <shawn.c.lee@intel.com> wrote:
>> A panel power off cycle delay always append before turn eDP on.
>> Driver should check last_power_on and last_backlight_off before insert=20
>> this delay. If these values are the same, it means eDP was off until=20
>> now and driver can bypass power off cycle delay to save some times to=20
>> speed up eDP power on sequence.
>>
>> v2: fix commit messages
>
>There are more changes here than what the changelog says, but the previous=
 review comments were not answered [1].
>

I'm sorry that lose the question in [1].=20

"But someone else may have turned it off just before we were handed control=
, we have no idea."
This is the situation from Ville's comment. Agree that we don't know when p=
anel will be powered off.
In my opinion, eDP panel should not be turned off before i915 take it over.=
 If it was turned on or off by standard contorl (ex: modeset).
last_power_on and last_backlight_off would not be the same. So this change =
should be safe.

Best regards,
Shawn

>
>BR,
>Jani.
>
>
>[1] https://lore.kernel.org/r/Y1afUdAwfVTACJoK@intel.com
>
>>
>> Cc: Shankar Uma <uma.shankar@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_pps.c | 9 ++++++++-
>>  1 file changed, 8 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c=20
>> b/drivers/gpu/drm/i915/display/intel_pps.c
>> index 21944f5bf3a8..290473ec70d5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pps.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>> @@ -509,6 +509,13 @@ static void wait_panel_power_cycle(struct intel_dp =
*intel_dp)
>>  	ktime_t panel_power_on_time;
>>  	s64 panel_power_off_duration;
>> =20
>> +	/* When last_power_on equal to last_backlight_off, it means driver did=
 not
>> +	 * turn on or off eDP panel so far. So we can bypass power cycle delay=
 to
>> +	 * save some times here.
>> +	 */
>> +	if (intel_dp->pps.last_power_on =3D=3D intel_dp->pps.last_backlight_of=
f)
>> +		return;
>> +
>>  	drm_dbg_kms(&i915->drm, "Wait for panel power cycle\n");
>> =20
>>  	/* take the difference of current time and panel power off time @@=20
>> -1100,7 +1107,7 @@ static void pps_init_timestamps(struct intel_dp=20
>> *intel_dp)  {
>>  	intel_dp->pps.panel_power_off_time =3D ktime_get_boottime();
>>  	intel_dp->pps.last_power_on =3D jiffies;
>> -	intel_dp->pps.last_backlight_off =3D jiffies;
>> +	intel_dp->pps.last_backlight_off =3D intel_dp->pps.last_power_on;
>>  }
>> =20
>>  static void
>
>--
>Jani Nikula, Intel Open Source Graphics Center
