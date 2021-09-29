Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C591241C22E
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 12:01:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 278E96E199;
	Wed, 29 Sep 2021 10:01:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1C586E199
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Sep 2021 10:01:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10121"; a="310454584"
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="310454584"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 03:01:20 -0700
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="554722868"
Received: from amelillo-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.221.121])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 03:01:17 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Zuo\, Jerry" <Jerry.Zuo@amd.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM6PR12MB4912B289F726A238D2FF928DE5A89@DM6PR12MB4912.namprd12.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210927153941.2231704-1-Jerry.Zuo@amd.com>
 <163278668227.14086.400573052248384839@emeril.freedesktop.org>
 <DM6PR12MB4912B289F726A238D2FF928DE5A89@DM6PR12MB4912.namprd12.prod.outlook.com>
Date: Wed, 29 Sep 2021 13:01:14 +0300
Message-ID: <87tui3vgyd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/dp=3A_Add_Additional_DP2_Headers_=28rev2=29?=
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

On Tue, 28 Sep 2021, "Zuo, Jerry" <Jerry.Zuo@amd.com> wrote:
> [AMD Official Use Only]
>
> Hi:
>
> I don=E2=80=99t think this failure is related to the patch. Please help to
> confirm.

It's not, sorry for the noise.

BR,
Jani.


>
> Regards,
> Jerry
>
> From: Patchwork <patchwork@emeril.freedesktop.org>
> Sent: September 27, 2021 7:51 PM
> To: Zuo, Jerry <Jerry.Zuo@amd.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: =E2=9C=97 Fi.CI.IGT: failure for drm/dp: Add Additional DP2 Head=
ers (rev2)
>
> Patch Details
> Series:
> drm/dp: Add Additional DP2 Headers (rev2)
> URL:
> https://patchwork.freedesktop.org/series/95104/<https://nam11.safelinks.p=
rotection.outlook.com/?url=3Dhttps%3A%2F%2Fpatchwork.freedesktop.org%2Fseri=
es%2F95104%2F&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08=
d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890601014%=
7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWw=
iLCJXVCI6Mn0%3D%7C2000&sdata=3DAKvzJrD9UUlL9s9788c90jy5UU1CFBkL75saHZuL8gE%=
3D&reserved=3D0>
> State:
> failure
> Details:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21169/index.html<https=
://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci=
.01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2Findex.html&data=3D04%7C01%7Cje=
rry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11=
a82d994e183d%7C0%7C0%7C637683835890610964%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiM=
C4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3Dmp=
0jKpk9ixWrwTVOtUpevZDF0pNGm4GPM0NKHGqQ%2Bsk%3D&reserved=3D0>
> CI Bug Log - changes from CI_DRM_10648_full -> Patchwork_21169_full
> Summary
>
> FAILURE
>
> Serious unknown changes coming with Patchwork_21169_full absolutely need =
to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21169_full, please notify your bug team to allow =
them
> to document this new failure mode, which will reduce false positives in C=
I.
>
> Possible new issues
>
> Here are the unknown changes that may have been introduced in Patchwork_2=
1169_full:
>
> IGT changes
> Possible regressions
>
>   *   igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt:
>
>      *   shard-iclb: PASS<https://nam11.safelinks.protection.outlook.com/=
?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2F=
shard-iclb2%2Figt%40kms_frontbuffer_tracking%40psr-1p-primscrn-indfb-pgflip=
-blt.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d982=
11b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890620919%7CUn=
known%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJ=
XVCI6Mn0%3D%7C2000&sdata=3D2HyMhyp78aCF3Oz2ZvI1Vj0LjF1RSK9FQu2irnD3FzA%3D&r=
eserved=3D0> -> FAIL<https://nam11.safelinks.protection.outlook.com/?url=3D=
https%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2Fshar=
d-iclb2%2Figt%40kms_frontbuffer_tracking%40psr-1p-primscrn-indfb-pgflip-blt=
.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b6=
08%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890620919%7CUnknow=
n%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI=
6Mn0%3D%7C2000&sdata=3DiwoDV0sZpZv%2FmdUc5W%2F9rlMj3ELeaCz2oxgfrKlKrT4%3D&r=
eserved=3D0>
>
>   *   igt@kms_sequence@get-idle:
>
>      *   shard-tglb: PASS<https://nam11.safelinks.protection.outlook.com/=
?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2F=
shard-tglb7%2Figt%40kms_sequence%40get-idle.html&data=3D04%7C01%7Cjerry.zuo=
%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a82d994=
e183d%7C0%7C0%7C637683835890630876%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAw=
MDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DGjSJdgGST=
SiP1jFCoyXz35W1RMGN626zpjyeuOcBRl4%3D&reserved=3D0> -> INCOMPLETE<https://n=
am11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.=
org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2Fshard-tglb6%2Figt%40kms_sequence%4=
0get-idle.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a0=
8d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890630876=
%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haW=
wiLCJXVCI6Mn0%3D%7C2000&sdata=3DsrMnSMdUDgvbQ4vDrS%2F4lWQoJEVgfGLADjPdGFKe9=
Og%3D&reserved=3D0>
>
> Known issues
>
> Here are the changes found in Patchwork_21169_full that come from known i=
ssues:
>
> IGT changes
> Issues hit
>
>   *   igt@gem_ctx_persistence@legacy-engines-queued:
>
>      *   shard-snb: NOTRUN -> SKIP<https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchw=
ork_21169%2Fshard-snb2%2Figt%40gem_ctx_persistence%40legacy-engines-queued.=
html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b60=
8%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890640832%7CUnknown=
%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6=
Mn0%3D%7C2000&sdata=3Dke%2FV%2Fof%2BlwOyNUPnPGgMa0lX7j%2FEMmKby97kUkvQEcg%3=
D&reserved=3D0> ([fdo#109271] / [i915#1099]) +3 similar issues
>
>   *   igt@gem_eio@hibernate:
>
>      *   shard-glk: NOTRUN -> DMESG-WARN<https://nam11.safelinks.protecti=
on.outlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2F=
Patchwork_21169%2Fshard-glk5%2Figt%40gem_eio%40hibernate.html&data=3D04%7C0=
1%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e=
608e11a82d994e183d%7C0%7C0%7C637683835890650791%7CUnknown%7CTWFpbGZsb3d8eyJ=
WIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdat=
a=3D9mYkfMVuwq9nzDnrdrDpRJMe95gmv4E4y%2FrmQDYRd1w%3D&reserved=3D0> ([i915#1=
610])
>
>   *   igt@gem_eio@unwedge-stress:
>
>      *   shard-iclb: PASS<https://nam11.safelinks.protection.outlook.com/=
?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2F=
shard-iclb2%2Figt%40gem_eio%40unwedge-stress.html&data=3D04%7C01%7Cjerry.zu=
o%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a82d99=
4e183d%7C0%7C0%7C637683835890650791%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjA=
wMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DeT7wPgKM=
lQaL2uF%2BLw3TXDJj4QzCluJA7ul%2FWfe2JU8%3D&reserved=3D0> -> TIMEOUT<https:/=
/nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.0=
1.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2Fshard-iclb2%2Figt%40gem_eio%40un=
wedge-stress.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b435132=
9a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890660=
745%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1=
haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DumaT6KUFZ%2BxSLm1OXjjJiKKKEoAh%2BkuAujiR=
nJvwqM4%3D&reserved=3D0> ([i915#2369] / [i915#2481] / [i915#3070])
>      *   shard-snb: NOTRUN -> FAIL<https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchw=
ork_21169%2Fshard-snb6%2Figt%40gem_eio%40unwedge-stress.html&data=3D04%7C01=
%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e6=
08e11a82d994e183d%7C0%7C0%7C637683835890660745%7CUnknown%7CTWFpbGZsb3d8eyJW=
IjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=
=3D23TE%2B%2Fd0bzVe8wMmEQYmlxt%2FMaTxqI5IRgeFJ74FMm4%3D&reserved=3D0> ([i91=
5#3354])
>
>   *   igt@gem_exec_fair@basic-none-share@rcs0:
>
>      *   shard-iclb: PASS<https://nam11.safelinks.protection.outlook.com/=
?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2F=
shard-iclb4%2Figt%40gem_exec_fair%40basic-none-share%40rcs0.html&data=3D04%=
7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe48=
84e608e11a82d994e183d%7C0%7C0%7C637683835890670702%7CUnknown%7CTWFpbGZsb3d8=
eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&s=
data=3DKIjql46elk5SJg4jNZHixvv2yt%2Bns1KhNIp9YUM%2BoWc%3D&reserved=3D0> -> =
FAIL<https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fin=
tel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2Fshard-iclb7%2Figt%40=
gem_exec_fair%40basic-none-share%40rcs0.html&data=3D04%7C01%7Cjerry.zuo%40a=
md.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a82d994e183=
d%7C0%7C0%7C637683835890680657%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAi=
LCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3D4ykhuoIVN2sVY=
LA0I5ezWzBrGrmm%2BZiRPDTaiSGfCZY%3D&reserved=3D0> ([i915#2842])
>
>   *   igt@gem_exec_fair@basic-pace-share@rcs0:
>
>      *   shard-glk: PASS<https://nam11.safelinks.protection.outlook.com/?=
url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2Fs=
hard-glk9%2Figt%40gem_exec_fair%40basic-pace-share%40rcs0.html&data=3D04%7C=
01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884=
e608e11a82d994e183d%7C0%7C0%7C637683835890680657%7CUnknown%7CTWFpbGZsb3d8ey=
JWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sda=
ta=3Dzk%2F%2FmTYIiTNv71FYj5VHCJ6heyUHrntSpdyUQnK14Cs%3D&reserved=3D0> -> FA=
IL<https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Finte=
l-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2Fshard-glk8%2Figt%40gem=
_exec_fair%40basic-pace-share%40rcs0.html&data=3D04%7C01%7Cjerry.zuo%40amd.=
com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7=
C0%7C0%7C637683835890690614%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJ=
QIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DeoFKPyYU9dkXbl6e=
0KN4gIKUfzs5%2BL%2FtuOMPFUmrBMM%3D&reserved=3D0> ([i915#2842])
>
>   *   igt@gem_exec_fair@basic-pace@bcs0:
>
>      *   shard-tglb: NOTRUN -> FAIL<https://nam11.safelinks.protection.ou=
tlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatch=
work_21169%2Fshard-tglb2%2Figt%40gem_exec_fair%40basic-pace%40bcs0.html&dat=
a=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8=
961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890690614%7CUnknown%7CTWFpb=
GZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7=
C2000&sdata=3DjFDqXo%2Bonz42mInpRONPhcBW4CN4%2FEEFp6TPq0fzCRg%3D&reserved=
=3D0> ([i915#2842]) +4 similar issues
>
>   *   igt@gem_exec_fair@basic-pace@vecs0:
>
>      *   shard-kbl: PASS<https://nam11.safelinks.protection.outlook.com/?=
url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2Fs=
hard-kbl7%2Figt%40gem_exec_fair%40basic-pace%40vecs0.html&data=3D04%7C01%7C=
jerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e=
11a82d994e183d%7C0%7C0%7C637683835890700569%7CUnknown%7CTWFpbGZsb3d8eyJWIjo=
iMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3D=
hK6pouMA5swRIpo4gSoAv319AOL0YgbrYq7vtg9Y1AE%3D&reserved=3D0> -> FAIL<https:=
//nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.=
01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2Fshard-kbl2%2Figt%40gem_exec_fai=
r%40basic-pace%40vecs0.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35=
f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C63768=
3835890710526%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiL=
CJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DEhaLhpPVlXY2y6szCC6W5uNKMMuI6H=
RylHNsHZIuKaY%3D&reserved=3D0> ([i915#2842])
>
>   *   igt@gem_userptr_blits@dmabuf-unsync:
>
>      *   shard-tglb: NOTRUN -> SKIP<https://nam11.safelinks.protection.ou=
tlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatch=
work_21169%2Fshard-tglb2%2Figt%40gem_userptr_blits%40dmabuf-unsync.html&dat=
a=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8=
961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890710526%7CUnknown%7CTWFpb=
GZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7=
C2000&sdata=3DzaxEa1H%2FW5S9XzDmuonLVzfl4Td0tcG7kwzdNGNVeTA%3D&reserved=3D0=
> ([i915#3297]) +1 similar issue
>
>   *   igt@gem_userptr_blits@vma-merge:
>
>      *   shard-tglb: NOTRUN -> FAIL<https://nam11.safelinks.protection.ou=
tlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatch=
work_21169%2Fshard-tglb2%2Figt%40gem_userptr_blits%40vma-merge.html&data=3D=
04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961f=
e4884e608e11a82d994e183d%7C0%7C0%7C637683835890720488%7CUnknown%7CTWFpbGZsb=
3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C200=
0&sdata=3DtYfh%2BNWFeW%2FROtd2WUaDNagxh0X5S1PRmlkYbCB6Qw4%3D&reserved=3D0> =
([i915#3318])
>
>   *   igt@gen7_exec_parse@cmd-crossing-page:
>
>      *   shard-tglb: NOTRUN -> SKIP<https://nam11.safelinks.protection.ou=
tlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatch=
work_21169%2Fshard-tglb1%2Figt%40gen7_exec_parse%40cmd-crossing-page.html&d=
ata=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3d=
d8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890720488%7CUnknown%7CTWF=
pbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D=
%7C2000&sdata=3DVm46L8Fyo3%2Bm61n%2FAQiXU9GbDJc9SwfOPkw%2FIiwXwig%3D&reserv=
ed=3D0> ([fdo#109289]) +1 similar issue
>
>   *   igt@gen9_exec_parse@bb-large:
>
>      *   shard-tglb: NOTRUN -> SKIP<https://nam11.safelinks.protection.ou=
tlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatch=
work_21169%2Fshard-tglb2%2Figt%40gen9_exec_parse%40bb-large.html&data=3D04%=
7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe48=
84e608e11a82d994e183d%7C0%7C0%7C637683835890730446%7CUnknown%7CTWFpbGZsb3d8=
eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&s=
data=3DzzgzUc3ySEwls5FkudNLZ5kMIX9t3t%2Fj2xOhmPy6aDs%3D&reserved=3D0> ([i91=
5#2856])
>
>   *   igt@i915_pm_lpsp@screens-disabled:
>
>      *   shard-tglb: NOTRUN -> SKIP<https://nam11.safelinks.protection.ou=
tlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatch=
work_21169%2Fshard-tglb1%2Figt%40i915_pm_lpsp%40screens-disabled.html&data=
=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd89=
61fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890730446%7CUnknown%7CTWFpbG=
Zsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C=
2000&sdata=3DUfv4qObBBagBwhUy2qOCM1i1wdt51KrZ%2F%2F0bCymshIA%3D&reserved=3D=
0> ([i915#1902])
>
>   *   igt@i915_pm_rc6_residency@rc6-fence:
>
>      *   shard-tglb: NOTRUN -> WARN<https://nam11.safelinks.protection.ou=
tlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatch=
work_21169%2Fshard-tglb2%2Figt%40i915_pm_rc6_residency%40rc6-fence.html&dat=
a=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8=
961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890740395%7CUnknown%7CTWFpb=
GZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7=
C2000&sdata=3DAXY25Z8whYE%2B95HVnwqjzQBMzWuCfvmFIxEQor3tq9M%3D&reserved=3D0=
> ([i915#2681])
>
>   *   igt@i915_pm_rpm@modeset-pc8-residency-stress:
>
>      *   shard-apl: NOTRUN -> SKIP<https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchw=
ork_21169%2Fshard-apl3%2Figt%40i915_pm_rpm%40modeset-pc8-residency-stress.h=
tml&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608=
%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890750355%7CUnknown%=
7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6M=
n0%3D%7C2000&sdata=3Dox7%2BYB8enBwy%2F75rd6iAxVTunNMZ39w%2BqotgOYISx7g%3D&r=
eserved=3D0> ([fdo#109271]) +132 similar issues
>
>   *   igt@i915_suspend@debugfs-reader:
>
>      *   shard-skl: PASS<https://nam11.safelinks.protection.outlook.com/?=
url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2Fs=
hard-skl7%2Figt%40i915_suspend%40debugfs-reader.html&data=3D04%7C01%7Cjerry=
.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a82=
d994e183d%7C0%7C0%7C637683835890750355%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4w=
LjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DzaYuQ=
aNpUjQzsyAvaYYlSOxi2PIIwC2Z0lZm2sFlCtk%3D&reserved=3D0> -> INCOMPLETE<https=
://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci=
.01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2Fshard-skl4%2Figt%40i915_suspen=
d%40debugfs-reader.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b=
4351329a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835=
890760310%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBT=
iI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DvV0a%2FoRFq3YUR62sPkHen0eG4tH56adt=
FY4ksKwINMw%3D&reserved=3D0> ([i915#146] / [i915#198] / [i915#4173])
>
>   *   igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>
>      *   shard-tglb: NOTRUN -> SKIP<https://nam11.safelinks.protection.ou=
tlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatch=
work_21169%2Fshard-tglb3%2Figt%40kms_big_fb%40y-tiled-64bpp-rotate-270.html=
&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C=
3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890760310%7CUnknown%7CT=
WFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%=
3D%7C2000&sdata=3Dj3Kp%2F2v0%2BYoZ94dQUFSQDsxjELYhqxG7n8zNNTd2SFU%3D&reserv=
ed=3D0> ([fdo#111614])
>
>   *   igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>
>      *   shard-apl: NOTRUN -> SKIP<https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchw=
ork_21169%2Fshard-apl8%2Figt%40kms_big_fb%40y-tiled-max-hw-stride-32bpp-rot=
ate-0-hflip.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329=
a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C6376838358907702=
66%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1h=
aWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DEFxcX05oDXMi55jiMpALo0oRQroRhuLId7Zku%2BQ=
yOyM%3D&reserved=3D0> ([fdo#109271] / [i915#3777]) +1 similar issue
>
>   *   igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>
>      *   shard-glk: NOTRUN -> SKIP<https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchw=
ork_21169%2Fshard-glk5%2Figt%40kms_big_fb%40y-tiled-max-hw-stride-64bpp-rot=
ate-180-hflip.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b43513=
29a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C63768383589078=
0221%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik=
1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DxG5OUUIN3bnGOviIzUbgTYcyjCl5vCLTkA4PdcM=
qBlY%3D&reserved=3D0> ([fdo#109271] / [i915#3777])
>
>   *   igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
>
>      *   shard-tglb: NOTRUN -> SKIP<https://nam11.safelinks.protection.ou=
tlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatch=
work_21169%2Fshard-tglb1%2Figt%40kms_big_fb%40yf-tiled-64bpp-rotate-0.html&=
data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3=
dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890780221%7CUnknown%7CTW=
FpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3=
D%7C2000&sdata=3DiDhTPd31xrZoTTOJPYp2zhG1389u1aegtJcSL3H7r1o%3D&reserved=3D=
0> ([fdo#111615]) +1 similar issue
>
>   *   igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>
>      *   shard-skl: NOTRUN -> SKIP<https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchw=
ork_21169%2Fshard-skl3%2Figt%40kms_ccs%40pipe-a-bad-aux-stride-y_tiled_gen1=
2_rc_ccs_cc.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329=
a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C6376838358907901=
76%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1h=
aWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DnZgKigoQzW7F8JxxeKP1SJBEbIbKoHK7AyZS5ljaj=
0Q%3D&reserved=3D0> ([fdo#109271] / [i915#3886])
>
>   *   igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>
>      *   shard-kbl: NOTRUN -> SKIP<https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchw=
ork_21169%2Fshard-kbl7%2Figt%40kms_ccs%40pipe-a-missing-ccs-buffer-y_tiled_=
gen12_mc_ccs.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b435132=
9a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890790=
176%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1=
haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DZodOAYnRFSadeF5NhO1YRZkVnansX9PMoDv2epwP=
ThM%3D&reserved=3D0> ([fdo#109271] / [i915#3886]) +6 similar issues
>
>   *   igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>
>      *   shard-apl: NOTRUN -> SKIP<https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchw=
ork_21169%2Fshard-apl6%2Figt%40kms_ccs%40pipe-b-ccs-on-another-bo-y_tiled_g=
en12_mc_ccs.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329=
a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C6376838358908001=
36%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1h=
aWwiLCJXVCI6Mn0%3D%7C2000&sdata=3D65EpkSbv3VufZPoEhgVjnWHgNCWia02G7mhHSMEpc=
u4%3D&reserved=3D0> ([fdo#109271] / [i915#3886]) +5 similar issues
>
>   *   igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>
>      *   shard-glk: NOTRUN -> SKIP<https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchw=
ork_21169%2Fshard-glk5%2Figt%40kms_ccs%40pipe-c-bad-aux-stride-y_tiled_gen1=
2_rc_ccs_cc.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329=
a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C6376838358908100=
94%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1h=
aWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DIrL2HsAzrMAVs3ae3DWBDd%2BavVxe6IskVQB4URJ=
0Qxo%3D&reserved=3D0> ([fdo#109271] / [i915#3886]) +1 similar issue
>
>   *   igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>
>      *   shard-tglb: NOTRUN -> SKIP<https://nam11.safelinks.protection.ou=
tlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatch=
work_21169%2Fshard-tglb2%2Figt%40kms_ccs%40pipe-c-crc-sprite-planes-basic-y=
_tiled_gen12_mc_ccs.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78=
b4351329a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C63768383=
5890810094%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJB=
TiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DX2i42M6QcC8v8z6vtbcQQfUlBBUJfxDVN=
pNUOtebSiM%3D&reserved=3D0> ([i915#3689] / [i915#3886]) +1 similar issue
>
>   *   igt@kms_ccs@pipe-c-random-ccs-data-yf_tiled_ccs:
>
>      *   shard-tglb: NOTRUN -> SKIP<https://nam11.safelinks.protection.ou=
tlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatch=
work_21169%2Fshard-tglb2%2Figt%40kms_ccs%40pipe-c-random-ccs-data-yf_tiled_=
ccs.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d9821=
1b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890820042%7CUnk=
nown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJX=
VCI6Mn0%3D%7C2000&sdata=3DLPzjW30l%2BrEIJHZl3i7iLkW6XA2U15d7T033DLXr97Q%3D&=
reserved=3D0> ([i915#3689]) +4 similar issues
>
>   *   igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_mc_ccs:
>
>      *   shard-kbl: NOTRUN -> SKIP<https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchw=
ork_21169%2Fshard-kbl4%2Figt%40kms_ccs%40pipe-d-crc-primary-basic-y_tiled_g=
en12_mc_ccs.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329=
a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C6376838358908200=
42%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1h=
aWwiLCJXVCI6Mn0%3D%7C2000&sdata=3D%2FP8gIOD7v9nuRMLq0dUXBiTKFHO2UTotzxN9kjg=
wXx0%3D&reserved=3D0> ([fdo#109271]) +104 similar issues
>
>   *   igt@kms_chamelium@dp-audio:
>
>      *   shard-kbl: NOTRUN -> SKIP<https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchw=
ork_21169%2Fshard-kbl4%2Figt%40kms_chamelium%40dp-audio.html&data=3D04%7C01=
%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e6=
08e11a82d994e183d%7C0%7C0%7C637683835890830007%7CUnknown%7CTWFpbGZsb3d8eyJW=
IjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=
=3DqIzok8CTRzCH%2FEVv32MHs96LfCEyR%2BdFKQew3%2B8fLws%3D&reserved=3D0> ([fdo=
#109271] / [fdo#111827]) +4 similar issues
>
>   *   igt@kms_chamelium@dp-crc-multiple:
>
>      *   shard-apl: NOTRUN -> SKIP<https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchw=
ork_21169%2Fshard-apl3%2Figt%40kms_chamelium%40dp-crc-multiple.html&data=3D=
04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961f=
e4884e608e11a82d994e183d%7C0%7C0%7C637683835890830007%7CUnknown%7CTWFpbGZsb=
3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C200=
0&sdata=3DVt77iZ8Gy1PQax%2FokquEcB9LLlzzWNU3CXsBIoj0KaQ%3D&reserved=3D0> ([=
fdo#109271] / [fdo#111827]) +6 similar issues
>
>   *   igt@kms_chamelium@dp-hpd-with-enabled-mode:
>
>      *   shard-skl: NOTRUN -> SKIP<https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchw=
ork_21169%2Fshard-skl7%2Figt%40kms_chamelium%40dp-hpd-with-enabled-mode.htm=
l&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7=
C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890839963%7CUnknown%7C=
TWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0=
%3D%7C2000&sdata=3D2SzjaGKM1GCWyEaEtkclyCD9w8TMTMnRUkb54lX0eWA%3D&reserved=
=3D0> ([fdo#109271] / [fdo#111827])
>
>   *   igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
>
>      *   shard-snb: NOTRUN -> SKIP<https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchw=
ork_21169%2Fshard-snb2%2Figt%40kms_chamelium%40hdmi-hpd-enable-disable-mode=
.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b6=
08%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890849916%7CUnknow=
n%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI=
6Mn0%3D%7C2000&sdata=3DmCxamJ9FQT4CN6Xwg9APfM8OhX4HUkjQpt6QeYN%2BaiU%3D&res=
erved=3D0> ([fdo#109271] / [fdo#111827]) +12 similar issues
>
>   *   igt@kms_color_chamelium@pipe-b-ctm-0-5:
>
>      *   shard-tglb: NOTRUN -> SKIP<https://nam11.safelinks.protection.ou=
tlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatch=
work_21169%2Fshard-tglb1%2Figt%40kms_color_chamelium%40pipe-b-ctm-0-5.html&=
data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3=
dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890849916%7CUnknown%7CTW=
FpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3=
D%7C2000&sdata=3Dlh3pHPsyxGPHcd1vMocbP9poQgpHJ969uS%2F8YHZ6LXE%3D&reserved=
=3D0> ([fdo#109284] / [fdo#111827]) +5 similar issues
>
>   *   igt@kms_color_chamelium@pipe-d-ctm-0-25:
>
>      *   shard-glk: NOTRUN -> SKIP<https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchw=
ork_21169%2Fshard-glk5%2Figt%40kms_color_chamelium%40pipe-d-ctm-0-25.html&d=
ata=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3d=
d8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890859866%7CUnknown%7CTWF=
pbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D=
%7C2000&sdata=3D8dQb3P044PWftWRBoC2hdApkk1bqEOAvKDuMN3y8lCc%3D&reserved=3D0=
> ([fdo#109271] / [fdo#111827]) +2 similar issues
>
>   *   igt@kms_content_protection@atomic-dpms:
>
>      *   shard-apl: NOTRUN -> TIMEOUT<https://nam11.safelinks.protection.=
outlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPat=
chwork_21169%2Fshard-apl8%2Figt%40kms_content_protection%40atomic-dpms.html=
&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C=
3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890859866%7CUnknown%7CT=
WFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%=
3D%7C2000&sdata=3DTZVB0Socw8ZPlgUoftjZHSBvJ%2FfSjb88LdxjC4e18SI%3D&reserved=
=3D0> ([i915#1319])
>
>   *   igt@kms_content_protection@legacy:
>
>      *   shard-glk: NOTRUN -> SKIP<https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchw=
ork_21169%2Fshard-glk5%2Figt%40kms_content_protection%40legacy.html&data=3D=
04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961f=
e4884e608e11a82d994e183d%7C0%7C0%7C637683835890869823%7CUnknown%7CTWFpbGZsb=
3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C200=
0&sdata=3D0N6UHxF1HQB0%2FAjiwGaxPp3lHJVtq8BfJXjaD8Wjk1k%3D&reserved=3D0> ([=
fdo#109271]) +27 similar issues
>
>   *   igt@kms_content_protection@mei_interface:
>
>      *   shard-tglb: NOTRUN -> SKIP<https://nam11.safelinks.protection.ou=
tlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatch=
work_21169%2Fshard-tglb1%2Figt%40kms_content_protection%40mei_interface.htm=
l&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7=
C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890879777%7CUnknown%7C=
TWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0=
%3D%7C2000&sdata=3DjwjaFnpWxVSj%2BNQhidxPiWZda50a5%2BuurPdh%2BBSGU6A%3D&res=
erved=3D0> ([fdo#111828])
>
>   *   igt@kms_cursor_crc@pipe-a-cursor-suspend:
>
>      *   shard-skl: PASS<https://nam11.safelinks.protection.outlook.com/?=
url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2Fs=
hard-skl8%2Figt%40kms_cursor_crc%40pipe-a-cursor-suspend.html&data=3D04%7C0=
1%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e=
608e11a82d994e183d%7C0%7C0%7C637683835890879777%7CUnknown%7CTWFpbGZsb3d8eyJ=
WIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdat=
a=3DnGb9XU921e6fvosUOynbB2dpU%2Bi%2BlZsdrYHpNASIj%2BY%3D&reserved=3D0> -> I=
NCOMPLETE<https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F=
%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2Fshard-skl2%2Fig=
t%40kms_cursor_crc%40pipe-a-cursor-suspend.html&data=3D04%7C01%7Cjerry.zuo%=
40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a82d994e=
183d%7C0%7C0%7C637683835890889731%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwM=
DAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DSz63RslMsH=
jeguvSw4anU3IForAb76GwMXdxTCnU98k%3D&reserved=3D0> ([i915#2828] / [i915#300=
])
>
>   *   igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding:
>
>      *   shard-tglb: NOTRUN -> SKIP<https://nam11.safelinks.protection.ou=
tlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatch=
work_21169%2Fshard-tglb1%2Figt%40kms_cursor_crc%40pipe-d-cursor-512x512-sli=
ding.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d982=
11b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890889731%7CUn=
known%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJ=
XVCI6Mn0%3D%7C2000&sdata=3DQUe5cMy3B6k6j9AljpRYDcPe24dZ4fsh%2FG0oO7UUw%2BE%=
3D&reserved=3D0> ([fdo#109279] / [i915#3359])
>
>   *   igt@kms_cursor_crc@pipe-d-cursor-max-size-sliding:
>
>      *   shard-tglb: NOTRUN -> SKIP<https://nam11.safelinks.protection.ou=
tlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatch=
work_21169%2Fshard-tglb1%2Figt%40kms_cursor_crc%40pipe-d-cursor-max-size-sl=
iding.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98=
211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890899689%7CU=
nknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLC=
JXVCI6Mn0%3D%7C2000&sdata=3DK8PiaQSztTwjGGGvFHMzvgTbYZ4OgE9V8QBzhrkHfxE%3D&=
reserved=3D0> ([i915#3359]) +4 similar issues
>
>   *   igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-siz=
e:
>
>      *   shard-skl: PASS<https://nam11.safelinks.protection.outlook.com/?=
url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2Fs=
hard-skl10%2Figt%40kms_cursor_legacy%40flip-vs-cursor-atomic-transitions-va=
rying-size.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a=
08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C63768383589090964=
8%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1ha=
WwiLCJXVCI6Mn0%3D%7C2000&sdata=3DvapSIKkWwcu6Q24mSUCYrKUr1sSemskTDUusTMgrtU=
I%3D&reserved=3D0> -> FAIL<https://nam11.safelinks.protection.outlook.com/?=
url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%=
2Fshard-skl10%2Figt%40kms_cursor_legacy%40flip-vs-cursor-atomic-transitions=
-varying-size.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b43513=
29a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C63768383589090=
9648%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik=
1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DvJJPlCuWn6MnGwwU%2FVfBFjqEdGhWr8cwhfocb=
hEqIuo%3D&reserved=3D0> ([i915#2346] / [i915#533])
>
>   *   igt@kms_cursor_legacy@pipe-d-single-bo:
>
>      *   shard-kbl: NOTRUN -> SKIP<https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchw=
ork_21169%2Fshard-kbl7%2Figt%40kms_cursor_legacy%40pipe-d-single-bo.html&da=
ta=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd=
8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890919603%7CUnknown%7CTWFp=
bGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%=
7C2000&sdata=3DdIqMMC%2BQMAV8gG0KtFS4cM3sMwKLQwyXivtJ7eP2qag%3D&reserved=3D=
0> ([fdo#109271] / [i915#533])
>
>   *   igt@kms_fbcon_fbt@fbc-suspend:
>
>      *   shard-apl: PASS<https://nam11.safelinks.protection.outlook.com/?=
url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2Fs=
hard-apl1%2Figt%40kms_fbcon_fbt%40fbc-suspend.html&data=3D04%7C01%7Cjerry.z=
uo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a82d9=
94e183d%7C0%7C0%7C637683835890919603%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLj=
AwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DcE0%2FA=
mVOY7EeFIxVZLLfoDblse1m7WzfYU3HkAyqBdE%3D&reserved=3D0> -> INCOMPLETE<https=
://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci=
.01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2Fshard-apl6%2Figt%40kms_fbcon_f=
bt%40fbc-suspend.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b43=
51329a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C63768383589=
0929558%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI=
6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DDOIsu9Q%2Bq8VRxqLMLsuGYMpla8ETl6b9ys=
Sd4F3ZwsY%3D&reserved=3D0> ([i915#180])
>
>   *   igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1:
>
>      *   shard-glk: PASS<https://nam11.safelinks.protection.outlook.com/?=
url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2Fs=
hard-glk9%2Figt%40kms_flip%40flip-vs-expired-vblank-interruptible%40b-hdmi-=
a1.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211=
b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890929558%7CUnkn=
own%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXV=
CI6Mn0%3D%7C2000&sdata=3DqlLvC%2B%2BwwhpCRQrKnkBzTF6fby6vTq%2FWXYVht2Md6PU%=
3D&reserved=3D0> -> FAIL<https://nam11.safelinks.protection.outlook.com/?ur=
l=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2F=
shard-glk8%2Figt%40kms_flip%40flip-vs-expired-vblank-interruptible%40b-hdmi=
-a1.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d9821=
1b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890939523%7CUnk=
nown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJX=
VCI6Mn0%3D%7C2000&sdata=3Djp4esRQT9cljq29GKlu3DYR5CrsCm0cxeGJlSe3Oiuk%3D&re=
served=3D0> ([i915#2122])
>
>   *   igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:
>
>      *   shard-glk: PASS<https://nam11.safelinks.protection.outlook.com/?=
url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2Fs=
hard-glk9%2Figt%40kms_flip%40flip-vs-expired-vblank-interruptible%40c-hdmi-=
a1.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211=
b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890949481%7CUnkn=
own%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXV=
CI6Mn0%3D%7C2000&sdata=3DTAe7tvJuAxVVaaaGbftqVAf3EigT7Elwo1py9e10U3I%3D&res=
erved=3D0> -> FAIL<https://nam11.safelinks.protection.outlook.com/?url=3Dht=
tps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2Fshard-=
glk8%2Figt%40kms_flip%40flip-vs-expired-vblank-interruptible%40c-hdmi-a1.ht=
ml&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%=
7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890949481%7CUnknown%7=
CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn=
0%3D%7C2000&sdata=3DkofGLlMvY3sIIeytOhDIaVeWbo4lMeHcQLoDz7Jqaps%3D&reserved=
=3D0> ([i915#79])
>
>   *   igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>
>      *   shard-apl: NOTRUN -> DMESG-WARN<https://nam11.safelinks.protecti=
on.outlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2F=
Patchwork_21169%2Fshard-apl7%2Figt%40kms_flip%40flip-vs-suspend-interruptib=
le%40c-dp1.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a=
08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C63768383589095944=
0%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1ha=
WwiLCJXVCI6Mn0%3D%7C2000&sdata=3DUTYrt71bGepi9C5xa9ZnRZAu80PPxtOMu5EtQrEulz=
g%3D&reserved=3D0> ([i915#180]) +3 similar issues
>
>   *   igt@kms_flip@flip-vs-suspend@c-dp1:
>
>      *   shard-kbl: PASS<https://nam11.safelinks.protection.outlook.com/?=
url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2Fs=
hard-kbl1%2Figt%40kms_flip%40flip-vs-suspend%40c-dp1.html&data=3D04%7C01%7C=
jerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e=
11a82d994e183d%7C0%7C0%7C637683835890969391%7CUnknown%7CTWFpbGZsb3d8eyJWIjo=
iMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3D=
zXAnGTu1%2BcNSQH%2F9AFNdq3Gf%2B8CFU4SIZB8K9LlF5RQ%3D&reserved=3D0> -> DMESG=
-WARN<https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fi=
ntel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2Fshard-kbl4%2Figt%40=
kms_flip%40flip-vs-suspend%40c-dp1.html&data=3D04%7C01%7Cjerry.zuo%40amd.co=
m%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0=
%7C0%7C637683835890969391%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQI=
joiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DmErHZhJab6HLE4TBni=
l95QHDnXRk1fgCiddhvlzaMzA%3D&reserved=3D0> ([i915#180]) +3 similar issues
>
>   *   igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-msflip-blt:
>
>      *   shard-snb: NOTRUN -> SKIP<https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchw=
ork_21169%2Fshard-snb2%2Figt%40kms_frontbuffer_tracking%40fbc-2p-primscrn-s=
hrfb-msflip-blt.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b435=
1329a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890=
979349%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6=
Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DQ0N%2BO026xUNvIc0xCS9YHS1a7BYweJiS4Hr=
nmEKLaHA%3D&reserved=3D0> ([fdo#109271]) +289 similar issues
>
>   *   igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt:
>
>      *   shard-tglb: NOTRUN -> SKIP<https://nam11.safelinks.protection.ou=
tlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatch=
work_21169%2Fshard-tglb2%2Figt%40kms_frontbuffer_tracking%40psr-2p-primscrn=
-indfb-pgflip-blt.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4=
351329a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C6376838358=
90979349%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTi=
I6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DvEKrtKItsTGHkxF1e5GBlVjbmrtfMh9e8Zk=
7uzn%2BVfg%3D&reserved=3D0> ([fdo#111825]) +18 similar issues
>
>   *   igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
>
>      *   shard-glk: NOTRUN -> SKIP<https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchw=
ork_21169%2Fshard-glk5%2Figt%40kms_pipe_crc_basic%40hang-read-crc-pipe-d.ht=
ml&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%=
7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890989302%7CUnknown%7=
CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn=
0%3D%7C2000&sdata=3DNcipp0BfjGJRvI%2BhjuCNhbzkG08JeMw93NnOJC6C9vk%3D&reserv=
ed=3D0> ([fdo#109271] / [i915#533])
>
>   *   igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
>
>      *   shard-apl: PASS<https://nam11.safelinks.protection.outlook.com/?=
url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2Fs=
hard-apl3%2Figt%40kms_plane%40plane-panning-bottom-right-suspend%40pipe-b-p=
lanes.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98=
211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835890999264%7CU=
nknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLC=
JXVCI6Mn0%3D%7C2000&sdata=3DPil%2FFfAqUF%2BJRyKDmOVTPGjGWaU86qesqQjE4A0pwHw=
%3D&reserved=3D0> -> DMESG-WARN<https://nam11.safelinks.protection.outlook.=
com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork_2=
1169%2Fshard-apl8%2Figt%40kms_plane%40plane-panning-bottom-right-suspend%40=
pipe-b-planes.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b43513=
29a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C63768383589099=
9264%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik=
1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3Dmkvm7LWB%2FoOcdKnObPf6mE9%2FTZYq7K4r5ij=
WJNUrGKQ%3D&reserved=3D0> ([i915#180])
>
>   *   igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
>
>      *   shard-apl: NOTRUN -> FAIL<https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchw=
ork_21169%2Fshard-apl3%2Figt%40kms_plane_alpha_blend%40pipe-a-alpha-opaque-=
fb.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211=
b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835891009216%7CUnkn=
own%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXV=
CI6Mn0%3D%7C2000&sdata=3DfN2yMvEDkcvCnai%2Fg%2FxKw3IYg2u1QE2dJlvTFywwGvw%3D=
&reserved=3D0> ([fdo#108145] / [i915#265]) +1 similar issue
>
>   *   igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
>
>      *   shard-kbl: NOTRUN -> FAIL<https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchw=
ork_21169%2Fshard-kbl7%2Figt%40kms_plane_alpha_blend%40pipe-b-alpha-basic.h=
tml&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608=
%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835891009216%7CUnknown%=
7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6M=
n0%3D%7C2000&sdata=3DWhchZBg8wTLG%2FPUK1%2FICkeysZ%2BNqAL6wNqOsMGILNEg%3D&r=
eserved=3D0> ([fdo#108145] / [i915#265])
>
>   *   igt@kms_plane_lowres@pipe-a-tiling-yf:
>
>      *   shard-tglb: NOTRUN -> SKIP<https://nam11.safelinks.protection.ou=
tlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatch=
work_21169%2Fshard-tglb1%2Figt%40kms_plane_lowres%40pipe-a-tiling-yf.html&d=
ata=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3d=
d8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835891019174%7CUnknown%7CTWF=
pbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D=
%7C2000&sdata=3DymaRaOrNRTE5M0EiJXjU1Qivyf7p5OzC181u%2FsbZxno%3D&reserved=
=3D0> ([fdo#112054])
>
>   *   igt@kms_psr2_sf@cursor-plane-update-sf:
>
>      *   shard-apl: NOTRUN -> SKIP<https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchw=
ork_21169%2Fshard-apl8%2Figt%40kms_psr2_sf%40cursor-plane-update-sf.html&da=
ta=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd=
8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835891019174%7CUnknown%7CTWFp=
bGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%=
7C2000&sdata=3DQtKoxsxMI%2BWL79VsfoGwnYe2KvBabtL1yNxZVKXXG5c%3D&reserved=3D=
0> ([fdo#109271] / [i915#658])
>
>   *   igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
>
>      *   shard-kbl: NOTRUN -> SKIP<https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchw=
ork_21169%2Fshard-kbl2%2Figt%40kms_psr2_sf%40overlay-plane-update-sf-dmg-ar=
ea-1.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d982=
11b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835891029131%7CUn=
known%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJ=
XVCI6Mn0%3D%7C2000&sdata=3DacuWcnj3PD2VDjNC32yi4uVbJW8MgjvIPjFmnqBW554%3D&r=
eserved=3D0> ([fdo#109271] / [i915#658]) +1 similar issue
>
>   *   igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
>
>      *   shard-glk: NOTRUN -> SKIP<https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchw=
ork_21169%2Fshard-glk5%2Figt%40kms_psr2_sf%40overlay-plane-update-sf-dmg-ar=
ea-3.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d982=
11b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835891039087%7CUn=
known%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJ=
XVCI6Mn0%3D%7C2000&sdata=3DrVCDpi1n%2FJJlfgRFfnINq2UKh0s7mHgB9QdpxYRHtH4%3D=
&reserved=3D0> ([fdo#109271] / [i915#658])
>
>   *   igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
>
>      *   shard-tglb: NOTRUN -> SKIP<https://nam11.safelinks.protection.ou=
tlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatch=
work_21169%2Fshard-tglb1%2Figt%40kms_psr2_sf%40primary-plane-update-sf-dmg-=
area-4.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d9=
8211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835891039087%7C=
Unknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiL=
CJXVCI6Mn0%3D%7C2000&sdata=3DoVwGTNL1Mz3xFurxSPHYY16kQTw5Xco3YVnGlnKMfNQ%3D=
&reserved=3D0> ([i915#2920])
>
>   *   igt@kms_psr2_su@frontbuffer:
>
>      *   shard-iclb: PASS<https://nam11.safelinks.protection.outlook.com/=
?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2F=
shard-iclb2%2Figt%40kms_psr2_su%40frontbuffer.html&data=3D04%7C01%7Cjerry.z=
uo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a82d9=
94e183d%7C0%7C0%7C637683835891049045%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLj=
AwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DUjbXGJ0=
PS0MOWnb%2BnPXTcGMiEjaHBoB9gK9LG4Dvj1g%3D&reserved=3D0> -> SKIP<https://nam=
11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.or=
g%2Ftree%2Fdrm-tip%2FPatchwork_21169%2Fshard-iclb6%2Figt%40kms_psr2_su%40fr=
ontbuffer.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a0=
8d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835891049045=
%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haW=
wiLCJXVCI6Mn0%3D%7C2000&sdata=3DAusplDc8XspRYDeE9QgP5fRV5xZ7AkHpqxPuprDKK%2=
F0%3D&reserved=3D0> ([fdo#109642] / [fdo#111068] / [i915#658])
>
>   *   igt@kms_psr@psr2_no_drrs:
>
>      *   shard-tglb: NOTRUN -> FAIL<https://nam11.safelinks.protection.ou=
tlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatch=
work_21169%2Fshard-tglb3%2Figt%40kms_psr%40psr2_no_drrs.html&data=3D04%7C01=
%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e6=
08e11a82d994e183d%7C0%7C0%7C637683835891058998%7CUnknown%7CTWFpbGZsb3d8eyJW=
IjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=
=3DxfwOTe7miyJBKq1wPELkDFX%2BsYpwxvAkvLsEqJQ%2B6uM%3D&reserved=3D0> ([i915#=
132] / [i915#3467]) +1 similar issue
>
>   *   igt@kms_setmode@basic:
>
>      *   shard-snb: NOTRUN -> FAIL<https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchw=
ork_21169%2Fshard-snb6%2Figt%40kms_setmode%40basic.html&data=3D04%7C01%7Cje=
rry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11=
a82d994e183d%7C0%7C0%7C637683835891068954%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiM=
C4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DnS=
9MWAQiQ4G2JBZ4HOxYTW%2FA%2FLVgPA0i2fpXOo%2FVZ50%3D&reserved=3D0> ([i915#31])
>
>   *   igt@kms_vblank@pipe-c-ts-continuation-suspend:
>
>      *   shard-apl: PASS<https://nam11.safelinks.protection.outlook.com/?=
url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2Fs=
hard-apl7%2Figt%40kms_vblank%40pipe-c-ts-continuation-suspend.html&data=3D0=
4%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe=
4884e608e11a82d994e183d%7C0%7C0%7C637683835891068954%7CUnknown%7CTWFpbGZsb3=
d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000=
&sdata=3DgvwGXnYENHWKMIYAL6vNVfc7qeNrbBdTdtuoJjC4ms4%3D&reserved=3D0> -> IN=
COMPLETE<https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%=
2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2Fshard-apl7%2Figt=
%40kms_vblank%40pipe-c-ts-continuation-suspend.html&data=3D04%7C01%7Cjerry.=
zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a82d=
994e183d%7C0%7C0%7C637683835891078909%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wL=
jAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3D6EkF%2=
FhmzbXAEfS0AUz3DOKOkwmjT9VMEATTw7TEdD%2B0%3D&reserved=3D0> ([i915#2828])
>
>   *   igt@kms_vblank@pipe-d-query-forked-busy:
>
>      *   shard-skl: NOTRUN -> SKIP<https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchw=
ork_21169%2Fshard-skl7%2Figt%40kms_vblank%40pipe-d-query-forked-busy.html&d=
ata=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3d=
d8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835891078909%7CUnknown%7CTWF=
pbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D=
%7C2000&sdata=3DtV6JgmH8YUfXonhoFKG9jWpOif%2FASlO6E0giTDvG7b0%3D&reserved=
=3D0> ([fdo#109271]) +12 similar issues
>
>   *   igt@nouveau_crc@pipe-c-source-outp-inactive:
>
>      *   shard-tglb: NOTRUN -> SKIP<https://nam11.safelinks.protection.ou=
tlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatch=
work_21169%2Fshard-tglb1%2Figt%40nouveau_crc%40pipe-c-source-outp-inactive.=
html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b60=
8%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835891088858%7CUnknown=
%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6=
Mn0%3D%7C2000&sdata=3DMv1ZpLlLhv96t4Gjj4UYOIx4qnA8x8K8qYxexnFWBMo%3D&reserv=
ed=3D0> ([i915#2530]) +1 similar issue
>
>   *   igt@perf@polling-small-buf:
>
>      *   shard-skl: PASS<https://nam11.safelinks.protection.outlook.com/?=
url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2Fs=
hard-skl1%2Figt%40perf%40polling-small-buf.html&data=3D04%7C01%7Cjerry.zuo%=
40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a82d994e=
183d%7C0%7C0%7C637683835891098824%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwM=
DAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DeeWUF4tiSf=
8YW7VM38w8oqscMjP5uSNc70FPh6wW69g%3D&reserved=3D0> -> FAIL<https://nam11.sa=
felinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ft=
ree%2Fdrm-tip%2FPatchwork_21169%2Fshard-skl5%2Figt%40perf%40polling-small-b=
uf.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211=
b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835891098824%7CUnkn=
own%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXV=
CI6Mn0%3D%7C2000&sdata=3D8b54XI3flJNLbcvGq7OGy02AOxsfn5LDmxZB3BgcxB0%3D&res=
erved=3D0> ([i915#1722])
>
>   *   igt@perf_pmu@rc6-suspend:
>
>      *   shard-tglb: PASS<https://nam11.safelinks.protection.outlook.com/=
?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2F=
shard-tglb8%2Figt%40perf_pmu%40rc6-suspend.html&data=3D04%7C01%7Cjerry.zuo%=
40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a82d994e=
183d%7C0%7C0%7C637683835891108783%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwM=
DAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DeiGtV71SjW=
Stvf9my%2FJHGPUq%2BFMBBUzglDX%2BFs8xyyk%3D&reserved=3D0> -> INCOMPLETE<http=
s://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-c=
i.01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2Fshard-tglb7%2Figt%40perf_pmu%=
40rc6-suspend.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b43513=
29a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C63768383589110=
8783%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik=
1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DcFKWZGx4brlNOhDSm332AWn1AT51T2Jb1KrqDvg=
IGr8%3D&reserved=3D0> ([i915#4173] / [i915#456])
>
>   *   igt@prime_nv_api@i915_nv_double_import:
>
>      *   shard-tglb: NOTRUN -> SKIP<https://nam11.safelinks.protection.ou=
tlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatch=
work_21169%2Fshard-tglb1%2Figt%40prime_nv_api%40i915_nv_double_import.html&=
data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3=
dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835891118726%7CUnknown%7CTW=
FpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3=
D%7C2000&sdata=3DrH55Z1sZB3%2F9877AMQESu6KkVl6qDtS0E%2F%2Fu6Ys0grs%3D&reser=
ved=3D0> ([fdo#109291]) +2 similar issues
>
>   *   igt@sysfs_clients@create:
>
>      *   shard-apl: NOTRUN -> SKIP<https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchw=
ork_21169%2Fshard-apl8%2Figt%40sysfs_clients%40create.html&data=3D04%7C01%7=
Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608=
e11a82d994e183d%7C0%7C0%7C637683835891128684%7CUnknown%7CTWFpbGZsb3d8eyJWIj=
oiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=
=3DfDoh2z9T8tX941906wGyM8IMQ3ghgVABwAnbBjDyD8M%3D&reserved=3D0> ([fdo#10927=
1] / [i915#2994]) +2 similar issues
>
>   *   igt@sysfs_clients@sema-10:
>
>      *   shard-tglb: NOTRUN -> SKIP<https://nam11.safelinks.protection.ou=
tlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatch=
work_21169%2Fshard-tglb1%2Figt%40sysfs_clients%40sema-10.html&data=3D04%7C0=
1%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e=
608e11a82d994e183d%7C0%7C0%7C637683835891128684%7CUnknown%7CTWFpbGZsb3d8eyJ=
WIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdat=
a=3DoorAlhSFRE5392bDd8JurxpbVChkSqe34WX70qZUEhA%3D&reserved=3D0> ([i915#299=
4])
>
>   *   igt@sysfs_clients@split-50:
>
>      *   shard-kbl: NOTRUN -> SKIP<https://nam11.safelinks.protection.out=
look.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchw=
ork_21169%2Fshard-kbl4%2Figt%40sysfs_clients%40split-50.html&data=3D04%7C01=
%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e6=
08e11a82d994e183d%7C0%7C0%7C637683835891138650%7CUnknown%7CTWFpbGZsb3d8eyJW=
IjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=
=3DluWD3vLO3j0a3biT2pS8pOq%2F4YGcjDGIBwuXDoxFq6k%3D&reserved=3D0> ([fdo#109=
271] / [i915#2994]) +1 similar issue
>
> Possible fixes
>
>   *   igt@gem_exec_fair@basic-pace-share@rcs0:
>
>      *   shard-tglb: FAIL<https://nam11.safelinks.protection.outlook.com/=
?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2F=
shard-tglb2%2Figt%40gem_exec_fair%40basic-pace-share%40rcs0.html&data=3D04%=
7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe48=
84e608e11a82d994e183d%7C0%7C0%7C637683835891138650%7CUnknown%7CTWFpbGZsb3d8=
eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&s=
data=3D1Fb9VAEGz6exAGgsiVvBg6Djiv0G5yCC4TqIhsvxiQo%3D&reserved=3D0> ([i915#=
2842]) -> PASS<https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%=
3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2Fshard-tglb=
2%2Figt%40gem_exec_fair%40basic-pace-share%40rcs0.html&data=3D04%7C01%7Cjer=
ry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a=
82d994e183d%7C0%7C0%7C637683835891148604%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC=
4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3D1GX=
Omxkxmp14R8Nzqjfel3pu%2Bn1TJYh4BimHV6pqm5Q%3D&reserved=3D0>
>
>   *   igt@gem_exec_fair@basic-pace@vcs0:
>
>      *   shard-kbl: FAIL<https://nam11.safelinks.protection.outlook.com/?=
url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2Fs=
hard-kbl7%2Figt%40gem_exec_fair%40basic-pace%40vcs0.html&data=3D04%7C01%7Cj=
erry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e1=
1a82d994e183d%7C0%7C0%7C637683835891158560%7CUnknown%7CTWFpbGZsb3d8eyJWIjoi=
MC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3D%=
2Fi%2Ffj%2F0V%2F%2Fk3eJSmRFaM1%2BQciymKF8egWm67eoK%2FPtA%3D&reserved=3D0> (=
[i915#2842]) -> PASS<https://nam11.safelinks.protection.outlook.com/?url=3D=
https%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2Fshar=
d-kbl2%2Figt%40gem_exec_fair%40basic-pace%40vcs0.html&data=3D04%7C01%7Cjerr=
y.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a8=
2d994e183d%7C0%7C0%7C637683835891158560%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4=
wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DZwsV=
A1tX67bs72Xg8TGN1KofVqSBP3Ltry7lZZMmfYM%3D&reserved=3D0>
>
>   *   igt@gem_workarounds@suspend-resume:
>
>      *   shard-skl: INCOMPLETE<https://nam11.safelinks.protection.outlook=
.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_106=
48%2Fshard-skl6%2Figt%40gem_workarounds%40suspend-resume.html&data=3D04%7C0=
1%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e=
608e11a82d994e183d%7C0%7C0%7C637683835891168518%7CUnknown%7CTWFpbGZsb3d8eyJ=
WIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdat=
a=3DHVaoA997ZspE3QV2ckNZjD7qXj%2Fh%2FN98T0232as4WXk%3D&reserved=3D0> ([i915=
#198]) -> PASS<https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%=
3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2Fshard-skl3=
%2Figt%40gem_workarounds%40suspend-resume.html&data=3D04%7C01%7Cjerry.zuo%4=
0amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a82d994e1=
83d%7C0%7C0%7C637683835891168518%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMD=
AiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3D%2Foe8NMKx6=
89q4C1OVTqrOvBx9rOFsEeprfE3pJgLCCs%3D&reserved=3D0>
>
>   *   igt@gen9_exec_parse@allowed-single:
>
>      *   shard-skl: DMESG-WARN<https://nam11.safelinks.protection.outlook=
.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_106=
48%2Fshard-skl7%2Figt%40gen9_exec_parse%40allowed-single.html&data=3D04%7C0=
1%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e=
608e11a82d994e183d%7C0%7C0%7C637683835891178474%7CUnknown%7CTWFpbGZsb3d8eyJ=
WIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdat=
a=3DrRYyDxPytV3Ln2r733ccxxwJpfhNmvyBqkQSrZWZetY%3D&reserved=3D0> ([i915#143=
6] / [i915#716]) -> PASS<https://nam11.safelinks.protection.outlook.com/?ur=
l=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2F=
shard-skl7%2Figt%40gen9_exec_parse%40allowed-single.html&data=3D04%7C01%7Cj=
erry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e1=
1a82d994e183d%7C0%7C0%7C637683835891188422%7CUnknown%7CTWFpbGZsb3d8eyJWIjoi=
MC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3D4=
67oUoZL2Kemm2jtuxbA4LkG3Doo7tzpSWrmyx3214c%3D&reserved=3D0>
>
>   *   igt@i915_selftest@live@gt_heartbeat:
>
>      *   shard-skl: DMESG-FAIL<https://nam11.safelinks.protection.outlook=
.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_106=
48%2Fshard-skl6%2Figt%40i915_selftest%40live%40gt_heartbeat.html&data=3D04%=
7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe48=
84e608e11a82d994e183d%7C0%7C0%7C637683835891188422%7CUnknown%7CTWFpbGZsb3d8=
eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&s=
data=3D1XDwd7NxswkLk4BfdhvHxn5TxwPVlOP3xk%2B9Nwr1CCk%3D&reserved=3D0> ([i91=
5#2291] / [i915#541]) -> PASS<https://nam11.safelinks.protection.outlook.co=
m/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork_211=
69%2Fshard-skl3%2Figt%40i915_selftest%40live%40gt_heartbeat.html&data=3D04%=
7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe48=
84e608e11a82d994e183d%7C0%7C0%7C637683835891198387%7CUnknown%7CTWFpbGZsb3d8=
eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&s=
data=3DOjKdedk4TiiPZJS1jCm8tLVa1pJsAeJd%2FjoM3ai6pvk%3D&reserved=3D0>
>
>   *   igt@kms_big_fb@linear-64bpp-rotate-180:
>
>      *   shard-glk: DMESG-WARN<https://nam11.safelinks.protection.outlook=
.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_106=
48%2Fshard-glk7%2Figt%40kms_big_fb%40linear-64bpp-rotate-180.html&data=3D04=
%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4=
884e608e11a82d994e183d%7C0%7C0%7C637683835891198387%7CUnknown%7CTWFpbGZsb3d=
8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&=
sdata=3DRf4Clk61nKmqqd%2B6J%2FC89f9MjZTN0O9iiFXjbBIIVLU%3D&reserved=3D0> ->=
 PASS<https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fi=
ntel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2Fshard-glk3%2Figt%40=
kms_big_fb%40linear-64bpp-rotate-180.html&data=3D04%7C01%7Cjerry.zuo%40amd.=
com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7=
C0%7C0%7C637683835891208342%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJ=
QIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3Dj0VtU9ZIhdV%2FJi=
y59JmmUTKav9OULI2Zvq1dU%2ByJwGg%3D&reserved=3D0>
>
>   *   igt@kms_color@pipe-a-ctm-0-75:
>
>      *   shard-skl: DMESG-WARN<https://nam11.safelinks.protection.outlook=
.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_106=
48%2Fshard-skl2%2Figt%40kms_color%40pipe-a-ctm-0-75.html&data=3D04%7C01%7Cj=
erry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e1=
1a82d994e183d%7C0%7C0%7C637683835891208342%7CUnknown%7CTWFpbGZsb3d8eyJWIjoi=
MC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3Dr=
XU91e3ELE%2F86vFngt14PnX4OGUns5GjWQeGVnJbZQs%3D&reserved=3D0> ([i915#1982])=
 -> PASS<https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%=
2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2Fshard-skl8%2Figt=
%40kms_color%40pipe-a-ctm-0-75.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7C=
b37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0=
%7C637683835891218288%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV=
2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DPJweFMPBrvZTqbA8crR73h=
Wpo70ViQbgXlVGhsXINek%3D&reserved=3D0>
>
>   *   igt@kms_cursor_crc@pipe-b-cursor-suspend:
>
>      *   shard-tglb: INCOMPLETE<https://nam11.safelinks.protection.outloo=
k.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10=
648%2Fshard-tglb7%2Figt%40kms_cursor_crc%40pipe-b-cursor-suspend.html&data=
=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd89=
61fe4884e608e11a82d994e183d%7C0%7C0%7C637683835891228256%7CUnknown%7CTWFpbG=
Zsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C=
2000&sdata=3DnLL8eqWFpGjYZ0dGDQjRE5rpb0Et55pxrBdL7hxjdCs%3D&reserved=3D0> (=
[i915#2411] / [i915#456]) -> PASS<https://nam11.safelinks.protection.outloo=
k.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork=
_21169%2Fshard-tglb1%2Figt%40kms_cursor_crc%40pipe-b-cursor-suspend.html&da=
ta=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd=
8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835891228256%7CUnknown%7CTWFp=
bGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%=
7C2000&sdata=3Dlr%2BoZmzpETExZ%2FCXJRe8i4Fh%2Fh1XDyptn3OE9l6bqXQ%3D&reserve=
d=3D0>
>
>   *   igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>
>      *   shard-skl: FAIL<https://nam11.safelinks.protection.outlook.com/?=
url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2Fs=
hard-skl4%2Figt%40kms_cursor_legacy%40flip-vs-cursor-atomic-transitions.htm=
l&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7=
C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835891238216%7CUnknown%7C=
TWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0=
%3D%7C2000&sdata=3DYbSo%2BMejixPc%2BT8pVF3%2FmT7lrUvHyWFq1SZfj2EwRaQ%3D&res=
erved=3D0> ([i915#2346]) -> PASS<https://nam11.safelinks.protection.outlook=
.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork_=
21169%2Fshard-skl6%2Figt%40kms_cursor_legacy%40flip-vs-cursor-atomic-transi=
tions.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98=
211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835891238216%7CU=
nknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLC=
JXVCI6Mn0%3D%7C2000&sdata=3D3jIutNMrl3lKVocVnoSQzoadXqyjSSqU6K%2FH8laoSO4%3=
D&reserved=3D0>
>
>   *   igt@kms_flip@flip-vs-expired-vblank@b-edp1:
>
>      *   shard-skl: FAIL<https://nam11.safelinks.protection.outlook.com/?=
url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2Fs=
hard-skl4%2Figt%40kms_flip%40flip-vs-expired-vblank%40b-edp1.html&data=3D04=
%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4=
884e608e11a82d994e183d%7C0%7C0%7C637683835891248172%7CUnknown%7CTWFpbGZsb3d=
8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&=
sdata=3DeVNmB%2FqSmnh8jypC4gJS4gb7AiwNjD1K2iT43EeC2cM%3D&reserved=3D0> ([i9=
15#2122]) -> PASS<https://nam11.safelinks.protection.outlook.com/?url=3Dhtt=
ps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2Fshard-s=
kl6%2Figt%40kms_flip%40flip-vs-expired-vblank%40b-edp1.html&data=3D04%7C01%=
7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e60=
8e11a82d994e183d%7C0%7C0%7C637683835891258123%7CUnknown%7CTWFpbGZsb3d8eyJWI=
joiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=
=3DiE%2FAAeMl%2FWNa32pwFq47ub4nF8PJRkonVn7EbxGgpeE%3D&reserved=3D0>
>
>   *   igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>
>      *   shard-kbl: DMESG-WARN<https://nam11.safelinks.protection.outlook=
.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_106=
48%2Fshard-kbl4%2Figt%40kms_flip%40flip-vs-suspend-interruptible%40a-dp1.ht=
ml&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%=
7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835891258123%7CUnknown%7=
CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn=
0%3D%7C2000&sdata=3DewINXxPcMVv9UHwUkk8wACfG5NhLM5cFZ1jbbgOxCyw%3D&reserved=
=3D0> ([i915#180]) -> PASS<https://nam11.safelinks.protection.outlook.com/?=
url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%=
2Fshard-kbl7%2Figt%40kms_flip%40flip-vs-suspend-interruptible%40a-dp1.html&=
data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3=
dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835891268080%7CUnknown%7CTW=
FpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3=
D%7C2000&sdata=3DOC6DHv6zd00%2BRZs1i2mC8Nc7dRmWziVLsADwrMZGVYw%3D&reserved=
=3D0> +5 similar issues
>
>   *   igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
>
>      *   shard-iclb: SKIP<https://nam11.safelinks.protection.outlook.com/=
?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2F=
shard-iclb2%2Figt%40kms_flip_scaled_crc%40flip-32bpp-ytile-to-64bpp-ytile.h=
tml&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608=
%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835891268080%7CUnknown%=
7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6M=
n0%3D%7C2000&sdata=3DdtSB%2BfS8%2FgG%2BaSP%2FW5tu%2BTMPKjhmPH%2F1Q6q%2FEMOU=
jbo%3D&reserved=3D0> ([i915#3701]) -> PASS<https://nam11.safelinks.protecti=
on.outlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2F=
Patchwork_21169%2Fshard-iclb6%2Figt%40kms_flip_scaled_crc%40flip-32bpp-ytil=
e-to-64bpp-ytile.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b43=
51329a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C63768383589=
1278036%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI=
6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DJkbPHbmBY1fM25tBcRvM8fDQJGuP0UVWK9hd=
G6ojFfk%3D&reserved=3D0>
>
>   *   igt@kms_hdr@bpc-switch-dpms:
>
>      *   shard-skl: FAIL<https://nam11.safelinks.protection.outlook.com/?=
url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2Fs=
hard-skl7%2Figt%40kms_hdr%40bpc-switch-dpms.html&data=3D04%7C01%7Cjerry.zuo=
%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a82d994=
e183d%7C0%7C0%7C637683835891287993%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAw=
MDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DmKpEWigkU=
y9DuKmCybZMTMXLjmpJ9JLxF9SS996lKMQ%3D&reserved=3D0> ([i915#1188]) -> PASS<h=
ttps://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fintel-gf=
x-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2Fshard-skl4%2Figt%40kms_hdr=
%40bpc-switch-dpms.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b=
4351329a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835=
891287993%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBT=
iI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3D8hPOsq2zbWwH2h%2FvSKTFrf8aKkhwlWf1=
nn7AoMiO6y4%3D&reserved=3D0>
>
>   *   igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>
>      *   shard-apl: DMESG-WARN<https://nam11.safelinks.protection.outlook=
.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_106=
48%2Fshard-apl3%2Figt%40kms_plane%40plane-panning-bottom-right-suspend%40pi=
pe-a-planes.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329=
a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C6376838358912979=
48%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1h=
aWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DD4tpw6JadSbk5qb7cZzI2xsoZPc3vX4d%2FKu4%2F=
q%2FzNOk%3D&reserved=3D0> ([i915#180]) -> PASS<https://nam11.safelinks.prot=
ection.outlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-ti=
p%2FPatchwork_21169%2Fshard-apl8%2Figt%40kms_plane%40plane-panning-bottom-r=
ight-suspend%40pipe-a-planes.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb3=
7d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7=
C637683835891297948%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2l=
uMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DkiF%2BQN%2F01cGBjWQ%2BSY=
i2e6mM0jTmbOXd9XjE1GpuYRk%3D&reserved=3D0>
>
>   *   igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
>
>      *   shard-tglb: INCOMPLETE<https://nam11.safelinks.protection.outloo=
k.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10=
648%2Fshard-tglb7%2Figt%40kms_plane%40plane-panning-bottom-right-suspend%40=
pipe-b-planes.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b43513=
29a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C63768383589130=
7905%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik=
1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DaIo99Ph4q7Frjd2ezqPJw87iwaN2A%2BGfii138=
hZNlyU%3D&reserved=3D0> ([i915#456]) -> PASS<https://nam11.safelinks.protec=
tion.outlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%=
2FPatchwork_21169%2Fshard-tglb2%2Figt%40kms_plane%40plane-panning-bottom-ri=
ght-suspend%40pipe-b-planes.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37=
d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C=
637683835891317860%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2lu=
MzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3D05RF5cNBMlXVUy1WXVMRjhzRg=
b%2BkT5H%2BT6UXL1SqpMg%3D&reserved=3D0>
>
>   *   igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>
>      *   shard-skl: FAIL<https://nam11.safelinks.protection.outlook.com/?=
url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2Fs=
hard-skl1%2Figt%40kms_plane_alpha_blend%40pipe-b-coverage-7efc.html&data=3D=
04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961f=
e4884e608e11a82d994e183d%7C0%7C0%7C637683835891317860%7CUnknown%7CTWFpbGZsb=
3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C200=
0&sdata=3D0tKEqva0IQSNI1YmR8pQVxwIi8hgE1Ov9fGw6weuUfY%3D&reserved=3D0> ([fd=
o#108145] / [i915#265]) -> PASS<https://nam11.safelinks.protection.outlook.=
com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork_2=
1169%2Fshard-skl9%2Figt%40kms_plane_alpha_blend%40pipe-b-coverage-7efc.html=
&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C=
3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835891327818%7CUnknown%7CT=
WFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%=
3D%7C2000&sdata=3DlxrA9WnCAWIiBFiYjyCsEjKAWKfRk31OOpqRR2a0MRI%3D&reserved=
=3D0> +1 similar issue
>
>   *   igt@kms_psr@psr2_cursor_mmap_gtt:
>
>      *   shard-iclb: SKIP<https://nam11.safelinks.protection.outlook.com/=
?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2F=
shard-iclb1%2Figt%40kms_psr%40psr2_cursor_mmap_gtt.html&data=3D04%7C01%7Cje=
rry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11=
a82d994e183d%7C0%7C0%7C637683835891337772%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiM=
C4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3D0v=
e1L4fetFZKkh7IBsy5VjPNga%2FLbfvGAwFYhmYnZBw%3D&reserved=3D0> ([fdo#109441])=
 -> PASS<https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%=
2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2Fshard-iclb2%2Fig=
t%40kms_psr%40psr2_cursor_mmap_gtt.html&data=3D04%7C01%7Cjerry.zuo%40amd.co=
m%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0=
%7C0%7C637683835891337772%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQI=
joiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DwjgP%2FQwMVu3tF5Zi=
Zy0p46Fuz5AXSGjidUCVcjLK9yc%3D&reserved=3D0>
>
> Warnings
>
>   *   igt@i915_pm_rc6_residency@rc6-idle:
>
>      *   shard-iclb: WARN<https://nam11.safelinks.protection.outlook.com/=
?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2F=
shard-iclb5%2Figt%40i915_pm_rc6_residency%40rc6-idle.html&data=3D04%7C01%7C=
jerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e=
11a82d994e183d%7C0%7C0%7C637683835891347731%7CUnknown%7CTWFpbGZsb3d8eyJWIjo=
iMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3D=
Pc1m1lSH7qLpvikP5jlzaKPYZrR7KF%2FQUzTvk8UzFAk%3D&reserved=3D0> ([i915#2684]=
) -> WARN<https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F=
%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2Fshard-iclb7%2Fi=
gt%40i915_pm_rc6_residency%40rc6-idle.html&data=3D04%7C01%7Cjerry.zuo%40amd=
.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%=
7C0%7C0%7C637683835891347731%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLC=
JQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DvqsJNmUZ%2FgeN%=
2BtTBYcdEuBloCms16AntyIjL%2BjTGcjA%3D&reserved=3D0> ([i915#1804] / [i915#26=
84])
>
>   *   igt@runner@aborted:
>
>      *   shard-kbl: (FAIL<https://nam11.safelinks.protection.outlook.com/=
?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2F=
shard-kbl4%2Figt%40runner%40aborted.html&data=3D04%7C01%7Cjerry.zuo%40amd.c=
om%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C=
0%7C0%7C637683835891357690%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQ=
IjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3Dw9oMZRc9Ny1ipBLEC=
Q9GrwxgFE%2BubHOZl3gNFJEEFII%3D&reserved=3D0>, FAIL<https://nam11.safelinks=
.protection.outlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fd=
rm-tip%2FCI_DRM_10648%2Fshard-kbl6%2Figt%40runner%40aborted.html&data=3D04%=
7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe48=
84e608e11a82d994e183d%7C0%7C0%7C637683835891357690%7CUnknown%7CTWFpbGZsb3d8=
eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&s=
data=3DJdcGRTuY36s5ijcGMMJhTvj1gCKw6gmg2KhGQyxNrYg%3D&reserved=3D0>, FAIL<h=
ttps://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fintel-gf=
x-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2Fshard-kbl1%2Figt%40runner%40a=
borted.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d9=
8211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835891367643%7C=
Unknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiL=
CJXVCI6Mn0%3D%7C2000&sdata=3DPhw6T7DD6jeLebj2SsSlH72RuJUf07oZPyeoR%2Flj9pk%=
3D&reserved=3D0>, FAIL<https://nam11.safelinks.protection.outlook.com/?url=
=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2Fshar=
d-kbl6%2Figt%40runner%40aborted.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7=
Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C=
0%7C637683835891377599%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoi=
V2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DMCo1XDe8gQ3gAbhOFQjKP=
2eoqPBDHURxkCNjx6cm5v0%3D&reserved=3D0>, FAIL<https://nam11.safelinks.prote=
ction.outlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip=
%2FCI_DRM_10648%2Fshard-kbl6%2Figt%40runner%40aborted.html&data=3D04%7C01%7=
Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608=
e11a82d994e183d%7C0%7C0%7C637683835891377599%7CUnknown%7CTWFpbGZsb3d8eyJWIj=
oiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=
=3DMCo1XDe8gQ3gAbhOFQjKP2eoqPBDHURxkCNjx6cm5v0%3D&reserved=3D0>, FAIL<https=
://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci=
.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2Fshard-kbl4%2Figt%40runner%40abort=
ed.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211=
b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835891387559%7CUnkn=
own%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXV=
CI6Mn0%3D%7C2000&sdata=3DujCYLU25Xr36h25FKvh0o3Kwza4LpCe2zu2LOPVd5fQ%3D&res=
erved=3D0>) ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363]) -> (FAIL=
<https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fintel-=
gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2Fshard-kbl4%2Figt%40runne=
r%40aborted.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329=
a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C6376838358913875=
59%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1h=
aWwiLCJXVCI6Mn0%3D%7C2000&sdata=3D4CiE3i7rUWuhiBYCTrfhqLuqjwWDbE7bFrBaWdjap=
g0%3D&reserved=3D0>, FAIL<https://nam11.safelinks.protection.outlook.com/?u=
rl=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2=
Fshard-kbl4%2Figt%40runner%40aborted.html&data=3D04%7C01%7Cjerry.zuo%40amd.=
com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7=
C0%7C0%7C637683835891397515%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJ=
QIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DpNq9HM0E0HBog7Up=
5lYJw%2FFppA5%2B2bu2EW1ru12dqRU%3D&reserved=3D0>, FAIL<https://nam11.safeli=
nks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%=
2Fdrm-tip%2FPatchwork_21169%2Fshard-kbl4%2Figt%40runner%40aborted.html&data=
=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd89=
61fe4884e608e11a82d994e183d%7C0%7C0%7C637683835891397515%7CUnknown%7CTWFpbG=
Zsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C=
2000&sdata=3DpNq9HM0E0HBog7Up5lYJw%2FFppA5%2B2bu2EW1ru12dqRU%3D&reserved=3D=
0>, FAIL<https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%=
2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2Fshard-kbl7%2Figt=
%40runner%40aborted.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78=
b4351329a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C63768383=
5891407470%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJB=
TiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DvCvMWBjQ%2F0po%2Bv%2BnPoyMElo1slu=
YY8lr9It0qgaOnUo%3D&reserved=3D0>) ([i915#180] / [i915#3002] / [i915#3363])
>      *   shard-glk: (FAIL<https://nam11.safelinks.protection.outlook.com/=
?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2F=
shard-glk5%2Figt%40runner%40aborted.html&data=3D04%7C01%7Cjerry.zuo%40amd.c=
om%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C=
0%7C0%7C637683835891417424%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQ=
IjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DTMn4%2B4F0PVhhBsW=
M9bzygPh%2Fc7heZaY2lxYxLbKjZtI%3D&reserved=3D0>, FAIL<https://nam11.safelin=
ks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2=
Fdrm-tip%2FCI_DRM_10648%2Fshard-glk5%2Figt%40runner%40aborted.html&data=3D0=
4%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe=
4884e608e11a82d994e183d%7C0%7C0%7C637683835891417424%7CUnknown%7CTWFpbGZsb3=
d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000=
&sdata=3DTMn4%2B4F0PVhhBsWM9bzygPh%2Fc7heZaY2lxYxLbKjZtI%3D&reserved=3D0>, =
FAIL<https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fin=
tel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2Fshard-glk2%2Figt%40runn=
er%40aborted.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b435132=
9a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835891427=
376%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1=
haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3D%2F20BRA0PtlZ6A0fn5UZXGicQUFeNHFzS3Pnqb0=
LTSR0%3D&reserved=3D0>) ([i915#2426] / [i915#3002] / [i915#3363] / [k.org#2=
02321]) -> (FAIL<https://nam11.safelinks.protection.outlook.com/?url=3Dhttp=
s%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2Fshard-gl=
k9%2Figt%40runner%40aborted.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37=
d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C=
637683835891427376%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2lu=
MzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3Du7XxjTS4CaEAw9EMTXtAwtC8q=
DQ8J7jpu1IDsUPRbFQ%3D&reserved=3D0>, FAIL<https://nam11.safelinks.protectio=
n.outlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FP=
atchwork_21169%2Fshard-glk6%2Figt%40runner%40aborted.html&data=3D04%7C01%7C=
jerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e=
11a82d994e183d%7C0%7C0%7C637683835891437330%7CUnknown%7CTWFpbGZsb3d8eyJWIjo=
iMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3D=
awiufAvZIy05DWdhPVzgr7KCJzg2KIjQl%2BGYbYXJ6Tc%3D&reserved=3D0>, FAIL<https:=
//nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fintel-gfx-ci.=
01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2Fshard-glk4%2Figt%40runner%40abo=
rted.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb37d6c35f78b4351329a08d982=
11b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637683835891447296%7CUn=
known%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJ=
XVCI6Mn0%3D%7C2000&sdata=3DkSZyzWHTrFsbi6EOU01f2mQMl5wbT7vzSjEEWAjXDoY%3D&r=
eserved=3D0>, FAIL<https://nam11.safelinks.protection.outlook.com/?url=3Dht=
tps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FPatchwork_21169%2Fshard-=
glk5%2Figt%40runner%40aborted.html&data=3D04%7C01%7Cjerry.zuo%40amd.com%7Cb=
37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%=
7C637683835891447296%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2=
luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3DLJUuAvQfdbj28uhooZsB7wM=
G7ODn8hRAroCOmMUvKXk%3D&reserved=3D0>) ([i915#1814] / [i915#2426] / [i915#3=
002] / [i915#3363] / [k.org#202321])
>      *   shard-skl: (FAIL<https://nam11.safelinks.protection.outlook.com/=
?url=3Dhttps%3A%2F%2Fintel-gfx-ci.01.org%2Ftree%2Fdrm-tip%2FCI_DRM_10648%2F=
shard-skl7%2Figt%40runner%40aborted.html&data=3D04%7C01%7Cjerry.zuo%40amd.c=
om%7Cb37d6c35f78b4351329a08d98211b608%7C3dd8961fe4884e608e11a82d994e183d%7C=
0%7C0%7C637683835891457253%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQ=
IjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=3D2hqJzvXmHKFHj64jH=
4LVgLPFV%2B2Ac7ZKAR86F5CzGNc%3D&reserved=3D0>, FAIL<https://inte>, [FAIL][1=
45]) ([i915#1436] / [i915#3002] / [i915#3363]) -> ([FAIL][146], [FAIL][147]=
) ([i915#3002] / [i915#3363])

--=20
Jani Nikula, Intel Open Source Graphics Center
