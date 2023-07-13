Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6EA75250F
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 16:23:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9569F10E03A;
	Thu, 13 Jul 2023 14:23:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02DEA10E03A
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 14:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689258188; x=1720794188;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mPR3W62uvsNq72LEYot7umKhhjiHjT+19XLpqTYRHaQ=;
 b=HGULupmbhfxjx0QkiTegCWLv9C715k3LAKiIq10dSDgmgt5l2ut5VzQz
 TNPfE9b8ilfK3To11DHjl6Gau7Zww/J5B9Q960Myx8Qh9LN4qU1v5Btlk
 fkemfPEvGJubGE+1R/Pl3Uo+eTDZrTdFXzuuTPq5nblR+rf7YaZLoyWrz
 D/fChyRc95sgoMpGWCWwDcsXMvLvbKYEr/BbIWpzoYSaG/jqiXXv1DTUa
 NsqkiBbVVHftbtr9UxyvGeIv0wYSnCz52dF3FRIDF9+73Pt1CbtLgN6/T
 jfprUR+HXPcQp3pKhnFaX7NtlNd2pV4OyJtVmRKdCHxetEi9pzstzbabn g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="396004361"
X-IronPort-AV: E=Sophos;i="6.01,203,1684825200"; d="scan'208";a="396004361"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 07:23:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="835594293"
X-IronPort-AV: E=Sophos;i="6.01,203,1684825200"; d="scan'208";a="835594293"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 13 Jul 2023 07:23:06 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 13 Jul 2023 07:23:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 13 Jul 2023 07:23:05 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 13 Jul 2023 07:23:05 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 13 Jul 2023 07:23:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HzOo/I/CniD3dp6XAoDE5F6Evd/LlPlW7GAjRTiwwY0rpKD6TarKRjuYQIRMFk/0RbqHdCnkihzXg9t7FRCc9UlSynTbzN11/PPdZQyKm/ojSJpmbyc3Xmzpd0gPap55Wiuoxle0IeK3HO4OQf8T6N9/W4B54Evse9ZFsJqboAqiJ4qjZNh0dWTDGOkOogQa6RkalvFQPb2sNIsy08kUu0qe5hgG7nXTi6p/gU3kNc+R8Oh1YrLNgzPrnNfQeFWLGf3U+rwP02u2Yr/wnBg9Cp0j4L+s4Q0fQ1NLZ4R4EwKip4DchqacTxDp7+rWET28RIjUGthPQdE8By8uUFjbuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oKUUvFEnaGIJF9V/vKXwO6fEqdZWcQ8xmZYfuolrvHk=;
 b=WiAOBk8vmFDMTDFTe3KlR7a6f3U1P7PRpm9fFouJnzIb0gz/rR8AVLNydXgfa6iaVuIbFXiYZj6rHNCobrbnRjLHwofY0ZAyqdJgu3C9GHqE5+MuLGdWnuUZJtjes072JrftTXkagz1c1tBtoYPmAwFGIireAITBJsHURlkD6rAaHd5+nQiE7hdFGr294Kutu/38f7FoULAcKAH8gl57XXf00uPBFWVO0QCY8Xr7QPj9IwOix0+wE4aXdAY1xsNSWPfPP6rBkj2j/Uqn9UxH/4kywGNbb9SOtIOWi4o4Kjld6pzBaurGns1hAE5WQ9DhERQiKlUqou6IM/jEUka5ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by DM4PR11MB8228.namprd11.prod.outlook.com (2603:10b6:8:180::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.24; Thu, 13 Jul
 2023 14:23:03 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::27f5:62c8:7208:aa50]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::27f5:62c8:7208:aa50%5]) with mapi id 15.20.6588.017; Thu, 13 Jul 2023
 14:23:03 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: Nirmoy Das <nirmoy.das@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 2/4] drm/i915/gt: Ensure memory quiesced
 before invalidation
Thread-Index: AQHZqNvrngbvjvrqXEiKN9QPWCsMK6+2RYmAgAANDYCAATUqAIAAMmcAgAAcNgCAAABxAA==
Date: Thu, 13 Jul 2023 14:23:03 +0000
Message-ID: <CH0PR11MB544438D1F757F25F0793CAF0E537A@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20230627094327.134775-1-andi.shyti@linux.intel.com>
 <20230627094327.134775-3-andi.shyti@linux.intel.com>
 <2fcc7f87-c94a-e593-e76d-1f8b79827509@linux.intel.com>
 <CH0PR11MB54440BB204DF21FC6EAEA9B9E536A@CH0PR11MB5444.namprd11.prod.outlook.com>
 <5e1c14e9-ddd2-bd64-eab5-aeed05d36004@linux.intel.com>
 <ZK/unFmdU3zZwVji@ashyti-mobl2.lan>
 <5b002808-d060-b1a3-1a2e-b2107f8c1527@linux.intel.com>
In-Reply-To: <5b002808-d060-b1a3-1a2e-b2107f8c1527@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|DM4PR11MB8228:EE_
x-ms-office365-filtering-correlation-id: a2bdfe0d-e014-4621-5b39-08db83acab22
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 41x9/0R6HYoO1ttxhDR9ltujlVIXFxVC99PyUSyXNXxXJ+nqVp43TD0SykjUO0IFyDm7ISIX0DDeKqv/FBvQOSY2kSVIgOtqITNF2a3sFsRACh+iToh3rkX75EQQUDCzDpD/8mqoPiieLA7uTeaUef00RzLtpNUWgAZ8UAnkI+L8a/2Ri/8c+CGapMlgoOhySZfI+V1enuGG7MF5XbIpkhG8u6EhzvYBmyvmTL4TEybXfGjojBeWtkv13YiXqBSCTxLQp/cgjb7B+riz4Tk1aMQ7qUDZgevXVcNfsPkQqkcdYGJkPaBdJ2dTuXhADIubO5Yxo9C3urf9pWAdJwHFroQkQpoBkouFVcBjNu6y4OAgfOQ96jTuAeglfmjikyTmeLVPDJjuj4BwoBbRj52Kr2FdTVKyDPwsFFGODQ2s/a0BgOCqqo1vhM8eL3tScvmjRc/SbAxzosZ9v3F3mgFwyvfvWH1+NcYK/Cpz1PrqGofH5gx8XLLMkG9c/Xc9Rmcp8KSZ9KXkrbRHYAKHL6Kryifbn+ijAIrsYjvMSDos8RXQVRbx5XSbyySAwaipibuofJOZoKcP90db8s88NQ00PLOeAWT9cRjoBiolm0NQBx0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(136003)(396003)(39860400002)(366004)(451199021)(7696005)(9686003)(966005)(71200400001)(33656002)(186003)(6506007)(53546011)(83380400001)(38070700005)(86362001)(38100700002)(82960400001)(122000001)(55016003)(26005)(4326008)(64756008)(66446008)(76116006)(66946007)(66556008)(66476007)(41300700001)(2906002)(316002)(52536014)(5660300002)(8676002)(8936002)(110136005)(54906003)(478600001)(66899021);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?afAHPltZF2CxUk8adDI8Egqz7EPfyutKoQUaPuOQL4rLaGgBCQefIBXWjP?=
 =?iso-8859-1?Q?ddm5sWISa9G9/q6D6kyG/OJtFOQJ1fB7T8ZPj3kLBrarP91Bk+5Ba21BFX?=
 =?iso-8859-1?Q?VhUHrLLlsppmn7l9tcEe5sC3htFQ+QyKrS2x7pca7rShJG/1yV6kYXHgle?=
 =?iso-8859-1?Q?RLV1MtpLexYDAkQIFznoCmJo5uSxhg/gIZYT0Bbo83EcJ3ynASse6g+Hmm?=
 =?iso-8859-1?Q?4UpDO88E+MDn0a924+nTIVjkKvIr7e6gF38K5Y1tpKYExc0U3WPxen8vAl?=
 =?iso-8859-1?Q?2gfXqN2/jSM97SY3qwXmMob6UUrZyWCYSTymzSzygjoepc9bG2S2PJKuGk?=
 =?iso-8859-1?Q?rBz+TlLswBbzT08PA2z4vAYxvLE/G88kFdzkkT2CO71VJoc+m4d+s8et+e?=
 =?iso-8859-1?Q?5oqConumnloBlknhd63bCq4cKm7bsYyeU/Z/uoI0KC4YpsrAvlFRHURGCk?=
 =?iso-8859-1?Q?w6mVTOv9RT6zk+CsQKbZlSRavyC+DEw8uUIEKwhppC06ZGFEsTFzqne9k6?=
 =?iso-8859-1?Q?sPykam1l+DDXf9bU3MLM+5CMOzW32WgR90hgg1OaqKkjtV9ishLF3fiukl?=
 =?iso-8859-1?Q?gTjtXO7lGWyN9tIFBj06p1u16PdurPcZETFIYLLmuILL6s3lElDLiqNbtz?=
 =?iso-8859-1?Q?fLd6pJpckLWbCrqcC77h0sISA1d3h5cv8tkgd9ubwy54Ngqblgwz3T2KC9?=
 =?iso-8859-1?Q?zZFDn+l7b//sWEsF7qkWjkp0apaWa9gxjpvBiUe+JGuOYGxUq24+0sZ+MV?=
 =?iso-8859-1?Q?g8TRJLxbQ00FOJoUf8xi44nbWFumDPc2bsUSkarcRgqM9q9pbIWj1n2A0J?=
 =?iso-8859-1?Q?s0dzoWB3jtnd5zgqns5yArA44PDF5JNSnts99rLdx8/PkyUM//ducCnKUq?=
 =?iso-8859-1?Q?9pLjDgrHwbACa6omgKh9i/ci27HmfuxpTK6wCs+oxE9P4TOjqC6ShnV3Xp?=
 =?iso-8859-1?Q?mR9SNszk8KO2Zvo1KWkraijYDwNKKzzX1h87rufzPpZxckQct2zhizuMFx?=
 =?iso-8859-1?Q?i1MTVQOSXWmWuhH1Vuoq52Z8zuyoYugDeMwmB3RpLYfe6AyFZuQ7FcJQae?=
 =?iso-8859-1?Q?X0JJf3FrJNztiyx/9qT3kEppnqnfVVwwSDRNbnke39Zzu5J5uPZVWtRstc?=
 =?iso-8859-1?Q?tyJTy6Y48k76FD3hjhNhL8IMmWpzWvyRyqmUV6qzor/haoML/3RjC3+Hgj?=
 =?iso-8859-1?Q?Ns8ZSZHC8HvwRWTez0DmUSpEeA24mAV0TnzC7nY/uxqcMA4O9AQQT0IrlK?=
 =?iso-8859-1?Q?7XuYAiyYAULr6I7Yb0qvyKYpciPhOF/z4VWnLm77JQhZ9pLUi44cpmIAwW?=
 =?iso-8859-1?Q?UsobP1HPR9q1MVJj2mEE3xkPyrz9sYP1tunpNzhKbW6iZYX/MV5qaOYltt?=
 =?iso-8859-1?Q?kLVnZyCsDoPYwfDh24Jw3Q8W4xNZb72o3dOirSwHMvJBoPpaVH7oDsSTDz?=
 =?iso-8859-1?Q?YKDHV+S3JTpGh+EnBV2E0yhWMEFTgfM+A3xytfVbusyYstlcl5AMzdqFSA?=
 =?iso-8859-1?Q?eweakj5q8eOlFSsQz2QOgipbntlcMwk7idZW8BEUxrIlM5BbfclhF7Yi/I?=
 =?iso-8859-1?Q?h31HWY+3HPJHxv7kZbXI/ABFYULA/ypED4C/PWAysjJcSj7pdZRwv/t7uD?=
 =?iso-8859-1?Q?8n+n6Vw4cCyNtJ5/FUXG9wcwFnnn34+p+i?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2bdfe0d-e014-4621-5b39-08db83acab22
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2023 14:23:03.1617 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PuuaxL23ECLCGbV1XP319qCbSv+OcGBHyhki4E7YO4SmhCIgwTCgNqXhuK2SEbCQCOXP5EleQ2+56t0SKupJXmhByXhJCDZnHdiJF0k3mM4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8228
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915/gt: Ensure memory quiesced
 before invalidation
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

-----Original Message-----
From: Nirmoy Das <nirmoy.das@linux.intel.com>=20
Sent: Thursday, July 13, 2023 7:12 AM
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Cavitt, Jonathan <jonathan.cavitt@intel.com>; Intel GFX <intel-gfx@list=
s.freedesktop.org>; Roper, Matthew D <matthew.d.roper@intel.com>; Chris Wil=
son <chris@chris-wilson.co.uk>; Mika Kuoppala <mika.kuoppala@linux.intel.co=
m>
Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915/gt: Ensure memory quiesced=
 before invalidation
>
>Hi Andi,
>
>On 7/13/2023 2:31 PM, Andi Shyti wrote:
>> Hi Nirmoy and Jonathan,
>>
>>>>>> @@ -202,6 +202,13 @@ int gen12_emit_flush_rcs(struct i915_request *r=
q, u32 mode)
>>>>>>     {
>>>>>>     	struct intel_engine_cs *engine =3D rq->engine;
>>>>>> +	/*
>>>>>> +	 * Aux invalidations on Aux CCS platforms require
>>>>>> +	 * memory traffic is quiesced prior.
>>>>> I see that we are doing aux inval on EMIT_INVALIDATE so it make sense=
 to
>>>>>
>>>>>   =A0do if ((mode & EMIT_INVALIDATE) && !HAS_FLAT_CCS(engine->i915) )
>>>>>
>>>> This is agreeable, though I don't think there's any instances of us ca=
lling gen12_emit_flush_rcs with a blank mode,
>>>> since that wouldn't accomplish anything.  So I don't think the additio=
nal check/safety net is necessary, but it doesn't
>>>> hurt to have.
>> so... do we agree here that we don't add anything? I don't really
>> mind...
>
>Not a blocking objection but if you are sending another revision of this=20
>then why not.


That's about my stance on it as well.  I'd defer the decision to Nirmoy her=
e.


>
>
>> Or, I can queue up a patch 5 adding this "pedantic" check and we
>> can discuss it separately.


I wouldn't offer much in terms of the discussion, unfortunately, so I'm fai=
rly certain the
only thing that would come from that is a series of questions asking why th=
e patch
wasn't squashed with this one to begin with.


>>
>>>>>> +	 */
>>>>>> +	if (!HAS_FLAT_CCS(engine->i915))
>>>>>> +		mode |=3D EMIT_FLUSH;
>>>>> I think this generic EMIT_FLUSH is not enough. I seeing some missing
>>>>> flags for PIPE_CONTROL
>>>>>
>>>>> As per https://gfxspecs.intel.com/Predator/Home/Index/43904. It makes
>>>>> sense to move this to a
>>>>>
>>>>> new function given the complexity of PIPE_CONTROL flags requires for =
this.
>>>>>
>>>> I'm assuming when you're talking about the missing flags for PIPE_CONT=
ROL, you're
>>>> referring to CCS Flush, correct?  Because every other flag is already =
covered in the
>>>> EMIT_FLUSH path.
>>> Yes, CCS Flush and I don't see a L3 fabric flush as well.


Does PIPE_CONTROL_FLUSH_L3 not do this?


>>>
>>>
>>>> I feel like I had this conversation with Matt while the internal versi=
on was
>>>> developed back in February, and the consensus was that the CCS Flush
>>>> requirement was already covered.
>>> Wasn't aware of this, would be nice to have a confirmation and a commen=
t so
>>> we
>>>
>>> don't get confused in future.
>>>
>>>>     On the other hand, it looks like the CCS Flush
>>>> requirement was only recently added back in May, so it might be worth
>>>> double-checking at the very least.
>>>>
>>>> Although... if CCS Flush is a missing flag, I wonder how we're suppose=
d to set it,
>>>> as there doesn't appear to be a definition for such a flag in intel_gp=
u_commands.h...
>>>
>>> Yes, not yet but we should add a flag for that.
>> Is it OK if I add in the comment that EMIT_FLUSH covers the CCS
>> flushing?
>
>
>is it though ? I don't see that in the bspec, may be I am missing=20
>something ?


That would certainly explain why there's no flag for it, if performing the =
CCS Flush
is a part of the EMIT_FLUSH pipeline by default.
-Jonathan Cavitt


>
>
>Regards,
>
>Nirmoy
>
>>
>> Andi
>
