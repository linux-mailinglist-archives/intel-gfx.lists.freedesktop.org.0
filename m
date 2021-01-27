Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DF0305F25
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 16:11:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14F2F6E828;
	Wed, 27 Jan 2021 15:10:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 978F76E5CC
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 15:10:57 +0000 (UTC)
IronPort-SDR: vbSFi2mkQyKwOi6xj+j89SriL6bXwQfjSrNT0aPtYuwaaDioWebDq5xWuB85t4RkTj4BCVdCuT
 aP7YqOL7UmFw==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="177516002"
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="177516002"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 07:10:57 -0800
IronPort-SDR: N51Ow60gZvQvkTJm5NMKMQe5/UH/OEEZ1JvBwPfD/qcQw7rs5B+PaCg5UecudbUn+ZNAGPG6HR
 gu7508kDAIxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="473188059"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 27 Jan 2021 07:10:57 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 27 Jan 2021 07:10:56 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 27 Jan 2021 07:10:56 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 27 Jan 2021 07:10:56 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 27 Jan 2021 07:10:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gtvmk20TJkO4Yt6AgKeH4h9Emfou9PrTNkwzTutCowCWCOdl6mLUSF1HljruhP/VuogHeqtsq5mlwn+HNpeGGRuBGbbcPFgBIk7JLzAuuTAj0yHHXeuFSrvyxtKibu+IoEkyZuhwCvub+irtnXr7h0y++2LUP9iABLiyc20EE3QKysb72AhC+okiZrGgQnxugXow/RL/YPdJZcw65qN1zFl/YRkZ5epKP1Fe2JA7I1u3WRBwuF/HUiW51immC9rofE07J83oTAFslXJUCdFVwxLqt5u9qZiQ4undBDFYEWBRtFvx1+x+PmsYHrETQ7AuaoR9wX0XUAxF6UXdmJ98UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qkKAlFmpvDRlM5JTNMywLwy7nSaOOEm8KsBai+pezFQ=;
 b=SwVlCC9T78TdEL0QoN/tKKGx/3GiIj1GAY20bjkZSoyaRzfd4jmJE0wQaL6r1Tgz+OAEHdMR+XcsSo7MBBdGfvoQDriYn8h3q2sTHxr+gBoN5qh6tbDOQvgqQ8XSa03iVfTRYXhpT9oiYzxce6k14BIp4qVEt6Pc2iedSbeMBu4xBHVhpZGqlIT1w0dM7pwW0HljvFLwmRzijtoz/HwCXruqG5n0Kaglp5VgPkGbn5ovCtXpLlbLYZO88dLu4xEb6vRB7m/RemOq3s/xJUfRnRwjRA7TBAgVBX3Y5VfRlckcibBazQvZZw6oYftmRRJLb86Bx3kPDMsYAgrVA5kZew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qkKAlFmpvDRlM5JTNMywLwy7nSaOOEm8KsBai+pezFQ=;
 b=qx9B4EezbYEWpMAOp+HWCLddYAym7lU/4f2DzHTK1a9WtBXlklTGNF7XA/n1CjLlLudsVsKHcukGcfjVwpseH6r6PzMhCthjXJXqJcvZnKD1PWxVWssf8ASOUTuiPVtZIEebn5IseFVdcaROYtAaZujmWcjwQuC7Emth8lfAi5M=
Received: from CO1PR11MB5075.namprd11.prod.outlook.com (2603:10b6:303:9e::14)
 by CO1PR11MB4881.namprd11.prod.outlook.com (2603:10b6:303:91::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.13; Wed, 27 Jan
 2021 15:10:54 +0000
Received: from CO1PR11MB5075.namprd11.prod.outlook.com
 ([fe80::bc82:8394:8983:6b8]) by CO1PR11MB5075.namprd11.prod.outlook.com
 ([fe80::bc82:8394:8983:6b8%5]) with mapi id 15.20.3805.016; Wed, 27 Jan 2021
 15:10:53 +0000
From: "Pandey, Hariom" <hariom.pandey@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/rkl: Remove require_force_probe
 protection
Thread-Index: AQHWxxhRfC9mULBl3kq0DEu1+z7zvKngo56AgAAdBACAAAR+gIAEAh+AgABzmACAAXoygIAAAzoAgFU1OoA=
Date: Wed, 27 Jan 2021 15:10:53 +0000
Message-ID: <CO1PR11MB5075034ACD67B3DD27311637F6BB9@CO1PR11MB5075.namprd11.prod.outlook.com>
References: <20201130124855.319226-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <160674128376.8815.15501065474758980770@build.alporthouse.com>
 <SN6PR11MB342108C9577A99EF4D3BBC87DFF50@SN6PR11MB3421.namprd11.prod.outlook.com>
 <160674847963.9850.14014681039747149826@build.alporthouse.com>
 <SN6PR11MB34210126D6425BBDD80F6258DFF20@SN6PR11MB3421.namprd11.prod.outlook.com>
 <SN6PR11MB342113B3B07EFA7D7E6656AADFF20@SN6PR11MB3421.namprd11.prod.outlook.com>
 <DM6PR11MB3355DDA42F41463D267737AEEEF10@DM6PR11MB3355.namprd11.prod.outlook.com>
 <160707557006.6805.9985083009767030866@build.alporthouse.com>
In-Reply-To: <160707557006.6805.9985083009767030866@build.alporthouse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
authentication-results: chris-wilson.co.uk; dkim=none (message not signed)
 header.d=none;chris-wilson.co.uk; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [136.185.248.57]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a7c42a54-e1d2-49aa-1896-08d8c2d5bdb9
x-ms-traffictypediagnostic: CO1PR11MB4881:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB48815A0EE21E54088023C788F6BB9@CO1PR11MB4881.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CCYaO/i4TSSOkGtSAN2E4zqY+VQZszYlhnWCVEYHQTmSm8IConFUN7NbtMbuGOClpIZeI18ShDrlU4lY9FokHFFQtoPHQk8vU8FA8N1pVUdU/quy7NXksJz0i5TekwL/GzaFkxA/xMV5r0s/wh2ajyfc5oYabCfP9UQmQ1Eqq5L1d+j9odOocBrLp40KRWqzHW3wLvUixScmHtKZTwMY8XWiwJoTGwGppCK2qkN/bnzzVnli2d7+GB+qs7u4b22FnwaghjtUGoBtm29eG4bXJRTIRzboFdNvxv24UdgW6D6V1UldAxiBgJt/FhR4YD6QxYKZ+j5W9L5lN9dBUpv6QMu+YXv4ES4AWSpruzdVb+A8pDZEjRWSAbvB7EMETDonykh4wO7keYZVQEB5IRKO3TXQYkBbj+Ubr6ORDZf94APuPsVHO8RH28QVS08K+EmQPqdDyv5QfyJEXrmIT86vM65BgoiKuMXAdaAsyfTHG++BseiacNJaccXDNocmNhTMmIQgAimGf6JfE0ySw41VGNbg+HGwqJxpaTuMz0e9lXC/6pNFNWDdkA7RsP9aF4nRCw3/opKUZ6aGs6Saw82U17F4D3VMs/IecAooTxl/M6k=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5075.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(346002)(366004)(396003)(39860400002)(376002)(9686003)(66556008)(64756008)(7696005)(66476007)(6506007)(66946007)(186003)(66446008)(2906002)(53546011)(26005)(76116006)(8676002)(55016002)(52536014)(33656002)(54906003)(4326008)(5660300002)(316002)(478600001)(71200400001)(6916009)(966005)(8936002)(86362001)(83380400001)(107886003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?aitCR1dtcG1FQ3A0R0d5THNFOGd6ZTBOc2pzbWFWTCtESjZTNVBDWTVWUlBC?=
 =?utf-8?B?K1VTYXhwNTNtTTRtTFZuUjZRSThnckNqN1RrekRsanhLYncwRU8zODFFSXNL?=
 =?utf-8?B?cmVuekY0aUZoQThEd3F1T20va0VsQ3FpdlBoTHJybUJVeTROeThNamVzejEy?=
 =?utf-8?B?TWkwb1duM1E3NjdLQzFOQzR2SkNxZ1ZEWTRBRTllZTZ0U2RSd1huYzR2ckl4?=
 =?utf-8?B?ZnRQMWtWY0RYVC9WRDVBNm5tbENtSERGNEhFWVJCck5QV1QyVElWL1k0a2pO?=
 =?utf-8?B?bXA0bnF6R2IrTVhHTjhud3ZNNjM5VVlFL0xxQVg4RHRaTElDc3V2cFNvaDhS?=
 =?utf-8?B?SDh3di9hUnVETlp6OXkxTHFoVk1lRUtJdFNHR29sL1ROeGNreWdHQ0RtdGUv?=
 =?utf-8?B?TkkxTDFaL2dqR3pzb2pmUlE2ZFUwaHFLMlEzUXUramVFOCtGOE9TcU4ydFg1?=
 =?utf-8?B?VURNM0syNjJLL3ptWUZmY1dTd2dsODVLVkh2eUpOa0lkZHdKc0JycWpjRjh6?=
 =?utf-8?B?azR1Q1pVVllFcGlqS1VXWTJBSTRvb3FoalE0Vi9ZcnEyUzVhZTl1SVlMWnZh?=
 =?utf-8?B?NVRWaTcxeGwyalQyWklveDc4TGhMQjJhblZtU0V4UUxkU1h5RXVwdVhUdEFU?=
 =?utf-8?B?V002WEJ5dGZRd0J0a3JSWlFBd2d6NldBVWRLZ3pxQUF2VXUrZkRuWUprUXNr?=
 =?utf-8?B?L0hUNWsvN0MwbURKamF3V0U4UW1wQy9QZ3ZLSDIvQWpXaHlYcjdkQU9aVkxR?=
 =?utf-8?B?OFIwQ0VwQVBqZUJUZjZVZ2M2QjQwMjUvTHVLdFJSYm5pYUpkQmZ6aEF0ek93?=
 =?utf-8?B?QzhOV0RoUHVsUU04NmZmcFF0dDBwSUx1NjZtdk85ZGJCWk9OZVJ6bnF4U1JP?=
 =?utf-8?B?ZEpGUzBuRTZ2bGN2a3BKQ0pnWUtQTEdNRGI2eWtqckRENzE3RHp1UEhicHFn?=
 =?utf-8?B?ekJWQnpiRjBpZTE0TStxQ1FwaU5kWk04a0NsaE1kYXZFbEZ2dTQxNkZ4NUNC?=
 =?utf-8?B?ejYxTkkzMnNzN3NhK3hHQjBWQStZQU1LZUhnb3NPTWdpVXl2bHFUTzNlWUg5?=
 =?utf-8?B?ZWIzaHRRWlNySm5CY1ZBVjE3R25kUGtUalV1dURZSEpVRTdSTDlndXFlM2o1?=
 =?utf-8?B?b0JxU0lsTUU4a3lWZk95KzhzTUtKMDM5NzhXUVNsNXBPbUJJYWtBVDRseDQy?=
 =?utf-8?B?RGVSaUc3QmZpSW1FUzVvRFZ4ZHhtbnlXN2JwYkVLUFZ0UGFVeFNlYlZIc2FB?=
 =?utf-8?B?dnZJSloycm9zT1piVmlVcytmSlZYUjRNanBzUmkyQzh0RG1lNXFDYWJjeFVQ?=
 =?utf-8?B?VmFtcXRVSUlkK0ZjRThSKzR0QjR1YjFRU2psZGI4b0Nia0gzcFo3ajV3SWtD?=
 =?utf-8?B?VC8xemZaNWJhdFdsblZrY1N5T1ZZdk5ONEhmNU01aGJkVkhqT1hkVnRMOXBm?=
 =?utf-8?Q?ljaH8EYt?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5075.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7c42a54-e1d2-49aa-1896-08d8c2d5bdb9
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2021 15:10:53.8238 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QAALQzMqOGGP1qCM8edmEk6HBhLdqb4OTKxG/F+jB3JEMsVv3GPKgC8s5Bk0W4yJUadkKHLSQdCg0alATtGi3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4881
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rkl: Remove require_force_probe
 protection
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
Cc: "Naramasetti, LaxminarayanaX" <laxminarayanax.naramasetti@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

(i) To your concern on the GPU dying issue gitlab#2743 --> this issue has been resolved and not observed in last 3 runs --> The gitlab had been updated with the pass results and closed.
(ii) RocketLate platform has been setup in Public CI with the name " fi-rkl-11500t" --> https://intel-gfx-ci.01.org/tree/drm-tip/bat-all.html? --> This link shows last few Pass runs.

With the above progress, please confirm if you are fine to merge/accept this patch of RKL force probe flag removal.

Thanks
Hariom Pandey

> -----Original Message-----
> From: Chris Wilson <chris@chris-wilson.co.uk>
> Sent: Friday, December 4, 2020 3:23 PM
> To: Kattamanchi, JaswanthX <jaswanthx.kattamanchi@intel.com>; Pandey,
> Hariom <hariom.pandey@intel.com>; Surendrakumar Upadhyay,
> TejaskumarX <tejaskumarx.surendrakumar.upadhyay@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Naramasetti, LaxminarayanaX <laxminarayanax.naramasetti@intel.com>
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/rkl: Remove require_force_probe
> protection
> 
> Quoting Kattamanchi, JaswanthX (2020-12-04 09:41:17)
> > Hi Tejas,
> >
> > As per your request triggered resume run on RKL CI machine, the testcases
> which chris mentioned were passing with this run, Please find the below logs
> for your reference
> 
> It is not particular to a testcase. HW failure rarely is.
> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
