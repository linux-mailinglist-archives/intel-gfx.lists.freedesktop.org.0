Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06661741E8B
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jun 2023 05:04:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 871AD10E00E;
	Thu, 29 Jun 2023 03:04:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9CB610E00E
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jun 2023 03:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688007850; x=1719543850;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GM7+COqKFhapc5iyGcmtttMGpfanbXX4cB6iJ5gx/vk=;
 b=QfyzLX6UlymibJPPcqA52b08UiL5rtDtliOKL2EtRwgCDTrezHvglyHm
 zmrwfkMFBdcPE2c5K4aUwalHcRGx56LeL8DGB6spvRDobQYUKkzkmuzGh
 /fg03HraRLnY6QSz0w7f6J7g5oeyvSRJfPzO0H2pin3HqDa2cILLdM2Qy
 cMwkZwm0h6Ep1V5x7BY05MPUDJjIY173YdDfkW6BYPk6mSxNbPo1imfY5
 IAQyuETCYJDGIaVwzIK6RbNIzq8Lhsy8aYcTeiBgj+FJebhngEjpYDfC8
 Wy93o9+oH1YKl/O57xgSmaJQBlZWQikn3w9hBqKeyW4I6RfOIzTai0SeV A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="351808778"
X-IronPort-AV: E=Sophos;i="6.01,167,1684825200"; d="scan'208";a="351808778"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 20:04:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="787235363"
X-IronPort-AV: E=Sophos;i="6.01,167,1684825200"; d="scan'208";a="787235363"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 28 Jun 2023 20:04:08 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 28 Jun 2023 20:04:07 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 28 Jun 2023 20:04:07 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 28 Jun 2023 20:04:07 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 28 Jun 2023 20:04:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MHkHwcBuskKjPGAoF6PtdjOYqXogr52Hre7ozw12CMoq6oB0CuykJyuz5FY8DbqPDdRvTWouAsKTn+5iIgQkuMeubYhfZf4jxepYwpPcbErWr0nIX+5cHehTYKq1HkFBM8LVZRDtbs092BIKFmbxKfjAd+HyDuxZHlM9zYS66KxC9olvGhYEtoC5ySAcj3gTHDPqJmO6i/WAXB8vfKJ6LDRimeaLJHoEcCh0tVuNNI7mYbpipkXgi0hJc2BN4Zf7vqtRI0RMFs3Gc9bAfPj4bKbr31+IzIbFq9VLpYlaraZY8SyhYXeWPVw7FtFRseSVtX7j3BDBM8TzriDEWpyQ0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=09imnHXlZcgsUZ5bYIHPAtTFrna4iFqVKjHd8MqrZAU=;
 b=QfFziMcw55tziLLodGFUC9z7IfpfYhESaYqahtEwBl2O0deGtPM76NBUr8utxFlxo0FPzeWKfO71fn/lP3Ec1GHa+DG6NNJAT+SzcnIYnJxOk5bDnAn4qnx6qkN8w0h7Y7NYf5QnpWc+ZZuvZWT5DUOreDcgzwg2QCzM/zZqg0rYpeXoCckVadj9KyoXdPrvNeEhCpVMbnAIyiDioKBhQCCJ7FbRKicJ4x6LE4iv+J0Di3H5jj8WgJQXFBHdnTuq8/v+hkkolrt/OUzZfP8Nlt6gVnqOXgmymWd9MhgKJUoHM+zKYH4RVXoteQTbq75e06gTZTONkqvgDAyDJbcVOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (2603:10b6:300:10c::20)
 by BL1PR11MB5553.namprd11.prod.outlook.com (2603:10b6:208:31f::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.26; Thu, 29 Jun
 2023 03:04:05 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::166b:4bb5:e47d:83d7]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::166b:4bb5:e47d:83d7%11]) with mapi id 15.20.6521.026; Thu, 29 Jun
 2023 03:04:04 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Thread-Topic: [Intel-gfx] [RFC 2/3] drm/i915/display: Configure and initialize
 HDMI audio capabilities
Thread-Index: AQHZmvmhMhAJpwPiyESSUn4ttIkGuq+SHGwAgAG2JACAAbyvgIAHyu3QgAM2+ICAAKUu0A==
Date: Thu, 29 Jun 2023 03:04:04 +0000
Message-ID: <MWHPR11MB1935BB33EA7C538296A3E5B1B225A@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <20230609174212.1946930-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230609174212.1946930-3-mitulkumar.ajitkumar.golani@intel.com>
 <alpine.DEB.2.22.394.2306191423170.3532114@eliteleevi.tm.intel.com>
 <SJ1PR11MB612990667303BE8F0F9453F5B95CA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <alpine.DEB.2.22.394.2306211844340.3532114@eliteleevi.tm.intel.com>
 <MWHPR11MB193515FF0C6345AF5EF76D34B226A@MWHPR11MB1935.namprd11.prod.outlook.com>
 <alpine.DEB.2.22.394.2306281950390.3532114@eliteleevi.tm.intel.com>
In-Reply-To: <alpine.DEB.2.22.394.2306281950390.3532114@eliteleevi.tm.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1935:EE_|BL1PR11MB5553:EE_
x-ms-office365-filtering-correlation-id: 85a431ac-4170-445e-5dbe-08db784d7f60
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KrUxMx36UnvYMCEqsI2uoH6uCW9SP6Va9K+XoCny012xRGvhQN4gfVQjZA3IDejFvH+s94vZ4ztUAvlgPu1JYFVWMuCGb0oaiMG3egWTEZ1WiTzrXFAltO/4bMiDCXa+bvJMZH5lIVAbuXhMiONajoI74MCkwRWD2ZBDcHx8l5YmxrUVTL8y8r2qPtF03TzP2KhNF0InvS9O1MAMfNWXbGqY5pXpduG5o/P71W8sWxgpiZigKIARXypBSLpR766v1jU8IoLIDGODpx6W9CZvegn6CUwsP8R7ZyVlgJSq+opmM+huIvrUjEHMq2D8ftzCkz9wXv6MtCYpX5kepPJPE1CnjLPIQKXvNhQK/zjAqoMLbSDpMTom4Txvxmgg9agbeejXis542PUn0QdaPPtfNnW5qGzHJzDatwGSggtDo6HDt8p9dTB6vH1CC8Ii0eqaH/t7agUcF5bRFFUf/p4BunoAt3uC5CIPfxX/jw7N1m15uhGBQfmKs5WKiv9j7ujJo7MWtPODnmE2BgShCjgq2JTLbbbgHTJkFxA1bbZOUo38ignvbpLinixQ74x9Ax7iqN1DfYJarJxeOk/lVQ9rGMMAksu9E+TzgZ6oPFU0oyg4FFC5NOK2oizYDsuijoC/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(136003)(396003)(376002)(366004)(451199021)(478600001)(82960400001)(122000001)(38100700002)(38070700005)(83380400001)(86362001)(33656002)(9686003)(76116006)(54906003)(71200400001)(7696005)(8936002)(64756008)(55016003)(316002)(8676002)(66556008)(66946007)(4326008)(55236004)(6916009)(53546011)(26005)(186003)(66446008)(41300700001)(6506007)(66476007)(5660300002)(52536014)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?b9pyJDG2aDcb0tt3H1lTG7i5y4lwTI0VCu3uYS+PsT/5KwbcEH6scMFUDCxb?=
 =?us-ascii?Q?6f9wMRHYw826NWtN47o9O5lsO84qVppIMg/umBn5vJwFe9dZ1hC9l9jCeMd9?=
 =?us-ascii?Q?pwV3wSDdqcr/5KUxiKLXED2Okbi5cV6msbkijz9z0VdmRY2pNpMiZx4Xv9pE?=
 =?us-ascii?Q?ulLejeMaS9X4Kd7CYJhizytTLdf6yGv3+yl9cialLf+4w+/N0s/xXHHfvpmJ?=
 =?us-ascii?Q?vjthFhxJ0RNYe6q0efN3hXibixwXE6RiHRudCnz0/2kghnfVLf+EEtToWXXz?=
 =?us-ascii?Q?np9wSYNokG+sUV+NivQo/GW4uXoM//53E2M7hYMv2bFPdyZbq4G/YSm4LgyQ?=
 =?us-ascii?Q?W7nKruwoxhXrfA/xUiyadRobWNDilYdtaGQ/tN8bd30p1tlpsfUw8Y6X8alr?=
 =?us-ascii?Q?+106/CKzBFvCtSBo5kMUM+DSccItXEmTnwjuq7VJkp2zvMSJTRUA+BZ5JIGq?=
 =?us-ascii?Q?2ETVtx4bZV9q1asmzLls3ZGfazmwcQIyy93rlcLuEt72UX1OZtvC9EqdrUeo?=
 =?us-ascii?Q?BIbjCUpthDYwUHdxVW2hXzkZriz8Qgy2aIhbZ3vZd00o/llVEPSALp7fmbin?=
 =?us-ascii?Q?mQjsSi4MOaKs1EDQ69XxVOscJTOGv5poLIiRNEObDZ4saHDuPlMduuTeIcJa?=
 =?us-ascii?Q?2re7h0sBP3IweQDahlko2okZDXTGACsSzIJVLI5M2+6iumP178f2eDIh4hfs?=
 =?us-ascii?Q?Y059xC2LoJIB8pgQt07+ZxmJ58HGl9RJ7O/uw1z0vVqZVHkp7UhHDVmhPJPP?=
 =?us-ascii?Q?Yp1FgUfEz6rK4JPxdaWVRpb/fuMqfcw1KvX/RQl3i5AT9skl4iuyHgPfPQxV?=
 =?us-ascii?Q?Wwf0P2YA8vxInPVJEW8VW75qAYx0yE9N+r17LIP+0EcVik6BYbC6XQVO+QQ0?=
 =?us-ascii?Q?fV9/YXe6kqjFqKUdUfbdh21nYiIsEKebR3jArdkhDI8M9Ahk5/IGyfjgqo+I?=
 =?us-ascii?Q?YmlaVHKcAz//WdS29KLocQaD8mNyAvQ/s3RqYq9eaQemXSn3vChf30TqnHQa?=
 =?us-ascii?Q?YStcOfExEbvhLJeC3wdKMS2qKZ4dFC0hTCBIXooR/kg55VAEj2XitMbUegXR?=
 =?us-ascii?Q?EyqBWQRsPqjLDiKhCjujRABH0UOySK6uvcAj6SfI899MKUIOAv0Hc+B+G3Md?=
 =?us-ascii?Q?TdLbCxjJ2jvuha+FhZaUlRNQmjbKs7rH0/arzB37htA/ZSv0kJdh/L/E1faX?=
 =?us-ascii?Q?+PVWPsh8ug92IeMZOX8QwYXIni3gFLZcbiKPvYeVvmulwWcukoTUOT+0mEXn?=
 =?us-ascii?Q?TcTbWsYb0HpiC4J3MCahrhjJlOzwhZdcUF3RSRakfJ24tngOm4VKpO6Df8Qj?=
 =?us-ascii?Q?389oCodBKOBRS3KtMCxmNujBLLseHA0ueshXi7GMk1xhMkcuz7vjjWGUd0bD?=
 =?us-ascii?Q?qCjo8MV5Qss2ZzxbpxiVqnwetjiwtzn+L+q71GppGHHTIRBpJyn1ikQD0LZb?=
 =?us-ascii?Q?Qd3vcsQdyamW5oLZJG/dShdt10yoe2AHhNEE6g2UcPPYIBkmEwFBmBDPDkEU?=
 =?us-ascii?Q?kiZsH3+M3n9AWPMJu3wbvqpnWasSYlW/V4e4V8j3nrUkVb8z4Bdvbjx+7Gc6?=
 =?us-ascii?Q?Xa48qf1m6exBIoyccijpbj807vj0iD+X0XkVg+juDLjJE2ZDwnInFvhN+J9+?=
 =?us-ascii?Q?oByCDF+c7GOW/4R/f3Fv7LY=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85a431ac-4170-445e-5dbe-08db784d7f60
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jun 2023 03:04:04.7769 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bHl2z4RAtBvll3N9w6zJMwOxN7dWhZ1OJ35aULi65xGRBNZpgY8afPZ4Q/Y1FALPcZvPexbD+vxtx9PTe21KfKWsPahYQTz1PkOEVETbBB3luXDVx4T9bL+v6eXoxIE7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5553
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 2/3] drm/i915/display: Configure and
 initialize HDMI audio capabilities
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jyri.sarha@linux.intel.com" <jyri.sarha@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

> -----Original Message-----
> From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Sent: 28 June 2023 22:41
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>; Borah, Chaitanya
> Kumar <chaitanya.kumar.borah@intel.com>; intel-
> gfx@lists.freedesktop.org; jyri.sarha@linux.intel.com
> Subject: RE: [Intel-gfx] [RFC 2/3] drm/i915/display: Configure and initia=
lize
> HDMI audio capabilities
>=20
> Hi,
>=20
> On Mon, 26 Jun 2023, Golani, Mitulkumar Ajitkumar wrote:
> > Let's say, with the obtained audio_req_bandwidth, if I encounter the
> following combination:
> > pipe_config->audio.max_channel =3D 8 and pipe_config-
> >audio.max_frequency =3D "X" value.
> > Now, let's assume my sink supports only 7 channels. In this case, with
> > current implementation, pruning will be bypassed, and there is a
> > possibility that the sink-supported channel multiplied by the sink-
> supported rate exceeding the available blank bandwidth, but pruning didn'=
t
> occur.
> >
> > For this situation, I am considering adding an "else" part in
> intel_audio_compute_eld.
> > This "else" part would check if (sad_to_channels(sad) < crtc_state-
> >audio.max_channel), for example, in the GLK case also.
> > In that case, the channel would be fixed.
> >
> > So, if Channel * audio sample container size * (iterating from Max
> > rate to Min rate) is less than max_audio_samples_per_second, I believe
> we can eliminate the above mentioned situation.
> > If the sink's supported channel is lower than
> > pipe_config->audio.max_channel, we can get another chance to adjust the
> rate based on the sink's maximum capability.
> [...]
> > now pruning will happen in 2 cases,
> >
> > 1. If pipe_config->audio.max_channel < sink's supported channels then
> > prune as per obtained combination from,
> intel_hdmi_audio_compute_config.
> > 2. If pipe_config->audio.max_channel >  sink's supported channels, but
> > sink's supported channel * sink supported max rate * audio sample
> container size exceeds the max_audio_samples_per_second then prune
> with sink's supported channel and rate (which satisfy bandwidth condition=
.
> range: in between  Max to min).
> >
> > Please give your opinion.
>=20
> ack, I think this is sensible. The SAD filtering cannot be perfect as the=
re can
> be multiple ways to prune the config to get within bandwidth budget (as w=
e
> have three varibles for LPCM, channel count, sampling rate and also sampl=
e
> depth). So given limited visibility, I'd say above approach sounds good. =
I'd
> also proceed (in your step2) with limiting first the sampling rate and on=
ly
> further limit channel count in second step.
>=20
> Br, Kai

Thanks Kai,=20

I will update changes with new revision.

Regards,
MItul
