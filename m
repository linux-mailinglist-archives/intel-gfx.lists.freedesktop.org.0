Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BEA358979F
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 08:10:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 863F58D5B4;
	Thu,  4 Aug 2022 06:09:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F8588D594
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Aug 2022 06:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659593386; x=1691129386;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=GjbuZUVCy66C0XGyxYfZkYfgfBUtsCYUcyWojVd1Hik=;
 b=PAs7tAm4KfQxYM7zsi1V4y5twet/zyaIIzKvJ4Bp9S9StxsYWvjr8ihP
 tSFd/ObZ4izgoVzqWNyAZigABtLZYmIavxbNpwUadFS134T7vwCsDf26F
 AQSur82fhkRrQiY+KlCb7PWBjystY6evN38acI+/04hyoLYnyK+PBmsHR
 WBSO29ggr+aOmb0xqrCsTZUHoppPwFgl/mrSazKwYVgGfdyHhv9jbGkSf
 TYsEYk/nuvtRj9qCLU4zaXAe4d0busYSaVrH2cdrh8xh6uyshpB9pqR3R
 7/eNKZRmKKHYo8uYZdpPq8qoCsVfXOxq8/wnSZPcgLpQVAS0kEK2nHfKt w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10428"; a="315720992"
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="315720992"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 23:09:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="706060952"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga002.fm.intel.com with ESMTP; 03 Aug 2022 23:09:45 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 3 Aug 2022 23:09:44 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 3 Aug 2022 23:09:44 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 3 Aug 2022 23:09:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hnPiv7HAaQiJkoYvDSB3AwczcvtZpXmpeu/ssNLJTnLyCKKMoyC1M7rrboRdu21ZcOk0cq0HGJBGDxgOOsvfu1L5mQXniZ16ksRUcCTaw62QlWta2MLkrQhBBpn6DK3/jTogLTG3iT3/uoI2U29qO2to8BlP+JRyu7L2CV+jBmBmtw+OhqSkuXEtRA4NSyt9wFKV3TqXJSfz73qtssWwPExkpL4DN3DYHpysAKQbNUR3+26ZXdsmc1NgacBK8NKyLeosIRX7z1KBfL4GUsxAislNxnyIrGrCsPZGUEuifKvHIyYV7axhi3KxG+sZDEcHfrt+6iH9YrYvuCxWz86mvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=USNG8VuWbdLstBxRDFac5jW8u3wZIjeyqUHyPB9riJM=;
 b=GhiHBuKLhVfPnxtxJRTIG6WGXEjSySIPzqo5i5RaNiQRztQGJ9slZiqjmWQjU09xwvkMg0vi/jeptJoiRWeluQRYkjaQ9PWecUhqlRU1idZ0dZPGV3O1kSGzpWrHtxBV3vf44Dd1mcj99nyxbyxqS1+HLM2JOtgI7Jep8BLbTAHsuInSY4ZbMjTE0Wg50i2gov9o/om15HiXmzGDFt9Q/kcLQVAYgtnu1c2mr+5Qu54ByAWtibmU8VefJtYExfUPXFadGMgNFaYvOpknPMOn0julH/5i46ZOrhIrC9IFy4Ji/b+SO9H7npWA0+rQic+Clgh98xu2So5amS4mrlxy5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by MWHPR11MB1710.namprd11.prod.outlook.com (2603:10b6:300:26::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14; Thu, 4 Aug
 2022 06:09:42 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::b1a6:2b63:7c49:5cc5]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::b1a6:2b63:7c49:5cc5%4]) with mapi id 15.20.5504.015; Thu, 4 Aug 2022
 06:09:42 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Tangudu, Tilak" <tilak.tangudu@intel.com>, "Ewins, Jon"
 <jon.ewins@intel.com>, "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>,
 "Roper, Matthew D" <matthew.d.roper@intel.com>, "Wilson, Chris P"
 <chris.p.wilson@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>, "Gupta,
 saurabhg" <saurabhg.gupta@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Nilawar, Badal" <badal.nilawar@intel.com>, "Deak,
 Imre" <imre.deak@intel.com>, "Iddamsetty, Aravind"
 <aravind.iddamsetty@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/8] drm/i915: Added is_intel_rpm_allowed helper
Thread-Index: AQHYnOb/9dYm7cMdhE+JUqKvPCDHs62eVazw
Date: Thu, 4 Aug 2022 06:09:42 +0000
Message-ID: <CY5PR11MB621150A06A084CB0256CD6E4959F9@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20220721095955.3986943-1-tilak.tangudu@intel.com>
 <20220721095955.3986943-2-tilak.tangudu@intel.com>
In-Reply-To: <20220721095955.3986943-2-tilak.tangudu@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a478221a-c0ef-4931-75e8-08da75dfec04
x-ms-traffictypediagnostic: MWHPR11MB1710:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WrDGaB2aj2/8O5E4lN7jB5GrTTLmWA2RBVbhp3rTmGzVXtoIJi91/4Phk1Irp11pz4r+4b9SnI0tBo5VFP1pgNh9yGL/PP3JIU3sJYGK7+nW0lhXK40L+vUWsiLg7rU0jkypW7fDwsf99aX3Y+JR/IN3Thf5H4cqo3eK5r1JPavKh0Jx9bNJHVxThiz/4fA2++ZkjsyBZXUpwcnTKW5PN7iJ1ORuA4T2lTBBYU8O/4NeQZj2BicheUgKNT1qcMIRiq94HQUSqkC/6JaBarHwc9za+WCbw3pc4c902Ga2xyCPvA3ilwn6Tc5pQqIFMzAT8jSBIb4L/2J4BJFHCiTjuVLO67M+fzM/ZvxvNTg+7W/UIzrvtp3rW+AADvk7gfW8ouuGrqpHCXDZq8t76XNiQBOXiKSK97fsZPGfY09tvOsuW3iiHhQGt6mXu7+zAgWfO7Srlg6z8YY/SIV96VM8Y/GrHfVS4wm3NPHZlaS01cqc+j3PqpB9U632Jk6dyq3jaitkXhBrukkP9xTleFKPMNm7eHA+Yos4nm2GxowqIYs+6ND6GwBz0nPFIDNQARnwfZnStbjti5Iz49KZ0gm4/eCZGLoR+6y3jicQiGjh5reeIG1cyjagveRWeOJeAsF9WODspWeapIwpkiGIO0HjPAGjWU21IwDevR2E0hzR4N2LeCpK1f3vizBdxhgH9Ni1H4BBChA2fQ71zwcDAOSslE9YSfH11pAd0ihk6NOtwPHJuLV/YrbrLcSMz2HWf/jPseD1LrgW6869vhAGw2X3k5xlnKRvYb9zUwlvIkml/mFnUCmEoZvi/k0O1U1D1kbZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(39860400002)(376002)(396003)(366004)(346002)(38100700002)(38070700005)(921005)(82960400001)(186003)(122000001)(83380400001)(8936002)(52536014)(66446008)(64756008)(8676002)(66476007)(66556008)(76116006)(66946007)(5660300002)(55016003)(2906002)(41300700001)(478600001)(9686003)(26005)(7696005)(6506007)(55236004)(53546011)(110136005)(316002)(71200400001)(86362001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fKeGi74VLzRmdsftHsQLvc+mFrTXUROsedq0UP5jUUZqFY7MCMfLK2jgYUDX?=
 =?us-ascii?Q?QiURuKBYZQ2ExdT0m6D3gEc1gJNZL3PWhH3xGRo9zGCGTunj6N4n3CYSU2oo?=
 =?us-ascii?Q?Ce8Ueyz2pZeArZYduYToS/NSWQHiDttIHGTFrO1Q18VAUICdKTY44l8TPG7g?=
 =?us-ascii?Q?fcfkgO/0gwZAwsGp3eITK6g9aHimqhcX3TUUcFPgQOoevV5Pyt340JhZGar1?=
 =?us-ascii?Q?sTDVWH1kcLXsk/qiY+iiZ7EPOreZ0HJEgctJmnCX0PU9BXRgI63PgmUpxNqo?=
 =?us-ascii?Q?DzEWxnObpHSxSjzzwCCeqi6XsPOLPyFiDJ4SW5sHXw7LmZDSFwvqWmqF3YtX?=
 =?us-ascii?Q?2dN5qvV+X6Ef6lWH+wOhRHCgsecO9EAdnMMEd8/fo5t/rjZXIwC7saVgPics?=
 =?us-ascii?Q?doZVM9ZoUiKv37OALh3szRbsAplEX+YRVmSmolFa6RAhmp0rVJSELBZ37tNr?=
 =?us-ascii?Q?sv0tuDhAx2OswAuqqsgBwp3LlhfqjkU84dzxhC7xj0TeItKHSmSCx4Z4aXyp?=
 =?us-ascii?Q?3FAbjExxyVFuFycGvjZE/L1PPdEp4uBYAvut5nHb0xN+1lOZp+m19wXhByby?=
 =?us-ascii?Q?yKb+mS1QY2lOCyV/AwIVlSGIJYvp0RuHzxp5keqOz/vgl42FVk1/bZe/OVg6?=
 =?us-ascii?Q?zD6uoidNfpmPJDFp8QSFV0ojvuvFizYHHnLlhoydMRHyhPLCgDpwXGzlLd5Z?=
 =?us-ascii?Q?/BKrAnWsoZ3HqlBbyJx0Kk8+7AbE9cXlZtynOFIcrjC4b3Ue1blnns2Wf6x2?=
 =?us-ascii?Q?JOlvg2fd4zG5XjOpK0z9JvM1pztBZKYCHxaDpUL/3zCdfjNka1/Ix/dpFLUc?=
 =?us-ascii?Q?njhIL41tO8tAhOczi8tIJD4tekoFG/DGoBjyJoAd5cYun3gm33++glWz+R19?=
 =?us-ascii?Q?3AvhLLOe4WFuFVm1gOz+phrT+C0whOEPiScG+AOnwU3vk9Tohc99a4kSCPLo?=
 =?us-ascii?Q?NVISPx6XuTUOYqsleeDOe6Qpw9xolQcfTv1XhnmkU76Z2++FmNJPwyfV7AHD?=
 =?us-ascii?Q?fDOrVRq5KT/0ATwpB8PwMPFy+resfKxvtNQg5Ire/oIitgkz0bI5C3cWuot1?=
 =?us-ascii?Q?FuwB+yPhNrHiuJ1u8f9fe/0YylinICL2lj7LTrbj3JYI3Umz+f/Sz0Js+gvz?=
 =?us-ascii?Q?eiGeGQiaUx67T8WMHHEDWGwD/zIS1YvGd15rg0NIbjZtXU9oQZwpksE4dUbv?=
 =?us-ascii?Q?3SP8kU2GuH3brNQS3tUlyYcw7Y8ZEmdJA+nAVPmHOvR8pMUMBop5IElKYlry?=
 =?us-ascii?Q?OP1CZfLzuic81LRE7EmmqUCgIqOFlNjVNiLVEPVrB3aTFJZ+7l5HCqLoxAbY?=
 =?us-ascii?Q?FLIdL5rn1j/RHWS7voCA+paJHNTUCoMYozUIgV+yq71NiujOw2kbUCEM8cNS?=
 =?us-ascii?Q?XEfrawnxhvdi0ypvRizlCgpx49lY935Bcq5SEcUOz2E9GJbWxHXPoUSYxREj?=
 =?us-ascii?Q?UJ/lBsyPS4S/kuh3Z91I7iXnrLyXNHMW2ZhY0q71FoU8+x9mLgwvrjEZ86G5?=
 =?us-ascii?Q?Hw1MoxAoeIzZ7pMt8oZMBeW0mK2LjGhjhlLHRGVOzbttmua/Neo45NjYrxSk?=
 =?us-ascii?Q?NlK9U8Z/FHIU0wgzbKYbH4gdVkPIRYES+NNlJI93?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a478221a-c0ef-4931-75e8-08da75dfec04
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2022 06:09:42.3593 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7QXooIppYqWbXNs4jr7AQO2Azj39YcDIdEiXC7nXuNgO/Fm/E7/nHqgBbyfhJX0C8BUjWJ3H7+M1qGcbyh8hJJhR8cHrWu4TT6cgNAcXuY0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1710
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915: Added is_intel_rpm_allowed
 helper
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



> -----Original Message-----
> From: Tangudu, Tilak <tilak.tangudu@intel.com>
> Sent: Thursday, July 21, 2022 3:30 PM
> To: Ewins, Jon <jon.ewins@intel.com>; Belgaumkar, Vinay
> <vinay.belgaumkar@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; Wilson, Chris P <chris.p.wilson@intel.com>;
> Nikula, Jani <jani.nikula@intel.com>; Gupta, saurabhg
> <saurabhg.gupta@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>; Gupta=
,
> Anshuman <anshuman.gupta@intel.com>; Nilawar, Badal
> <badal.nilawar@intel.com>; Tangudu, Tilak <tilak.tangudu@intel.com>; Deak=
,
> Imre <imre.deak@intel.com>; Iddamsetty, Aravind
> <aravind.iddamsetty@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: [PATCH 1/8] drm/i915: Added is_intel_rpm_allowed helper
>=20
> From: Tilak Tangudu <tilak.tangudu@intel.com>
>=20
> Added is_intel_rpm_allowed function to query the runtime_pm status and
> disllow during suspending and resuming.
>=20
> v2: Return -2 if runtime pm is not allowed in runtime_pm_get and skip wak=
eref
> release in runtime_pm_put if wakeref value is -2. - Jani N
> Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_runtime_pm.c | 23 ++++++++++++++++++++++-
> drivers/gpu/drm/i915/intel_runtime_pm.h |  1 +
>  2 files changed, 23 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c
> b/drivers/gpu/drm/i915/intel_runtime_pm.c
> index 6ed5786bcd29..704beeeb560b 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> @@ -113,7 +113,7 @@ static void untrack_intel_runtime_pm_wakeref(struct
> intel_runtime_pm *rpm,
>  	unsigned long flags, n;
>  	bool found =3D false;
>=20
> -	if (unlikely(stack =3D=3D -1))
> +	if (unlikely(stack =3D=3D -1) || unlikely(stack =3D=3D -2))
>  		return;
>=20
>  	spin_lock_irqsave(&rpm->debug.lock, flags); @@ -320,6 +320,21 @@
> untrack_all_intel_runtime_pm_wakerefs(struct intel_runtime_pm *rpm)  }
>=20
>  #endif
> +static int intel_runtime_pm_status(struct intel_runtime_pm *rpm) {
> +	return rpm->kdev->power.runtime_status; }
> +
> +bool is_intel_rpm_allowed(struct intel_runtime_pm *rpm) {
> +	int rpm_status;
> +
> +	rpm_status =3D intel_runtime_pm_status(rpm);
> +	if (rpm_status =3D=3D RPM_RESUMING || rpm_status =3D=3D
> RPM_SUSPENDING)
AFAIR I have commented on first patch, we may need dev->power.lock here.
It is racy to test  kdev->power.runtime_status with PM core can change it a=
ny time.=20
Please check the pm_runtime_status_suspended() kernel doc in include/linux/=
pm_runtime.h
Thanks,
Anshuman Gupta.
> +		return false;
> +	else
> +		return true;
> +}
>=20
>  static void
>  intel_runtime_pm_acquire(struct intel_runtime_pm *rpm, bool wakelock) @@=
 -
> 354,6 +369,9 @@ static intel_wakeref_t __intel_runtime_pm_get(struct
> intel_runtime_pm *rpm,
>  						     runtime_pm);
>  	int ret;
>=20
> +	if (!is_intel_rpm_allowed(rpm))
> +		return -2;
> +
>  	ret =3D pm_runtime_get_sync(rpm->kdev);
>  	drm_WARN_ONCE(&i915->drm, ret < 0,
>  		      "pm_runtime_get_sync() failed: %d\n", ret); @@ -490,6
> +508,9 @@ static void __intel_runtime_pm_put(struct intel_runtime_pm *rpm=
,
>=20
>  	untrack_intel_runtime_pm_wakeref(rpm, wref);
>=20
> +	if (wref =3D=3D -2)
> +		return;
> +
>  	intel_runtime_pm_release(rpm, wakelock);
>=20
>  	pm_runtime_mark_last_busy(kdev);
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h
> b/drivers/gpu/drm/i915/intel_runtime_pm.h
> index d9160e3ff4af..99418c3a934a 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> @@ -173,6 +173,7 @@ void intel_runtime_pm_init_early(struct
> intel_runtime_pm *rpm);  void intel_runtime_pm_enable(struct
> intel_runtime_pm *rpm);  void intel_runtime_pm_disable(struct
> intel_runtime_pm *rpm);  void intel_runtime_pm_driver_release(struct
> intel_runtime_pm *rpm);
> +bool is_intel_rpm_allowed(struct intel_runtime_pm *rpm);
>=20
>  intel_wakeref_t intel_runtime_pm_get(struct intel_runtime_pm *rpm);
> intel_wakeref_t intel_runtime_pm_get_if_in_use(struct intel_runtime_pm
> *rpm);
> --
> 2.25.1

