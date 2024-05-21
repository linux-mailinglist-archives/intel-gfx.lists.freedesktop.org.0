Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB948CA839
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 08:56:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B25110E050;
	Tue, 21 May 2024 06:56:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=collabora.com header.i=@collabora.com header.b="j8hBCfaC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com
 [46.235.227.194])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6B8410E050;
 Tue, 21 May 2024 06:56:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1716274598;
 bh=TfIOtUcqbwJkZ6notRudlNbUTFukk69iQGuDM3mE/MU=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=j8hBCfaCITG8b7pfUhoD1HKU00f770m7cYI7bu4vJH8rk/LXn0Yf+54WofcnvQcjO
 EBrwL0Jt2wDVrxrr+0JBpPbNrJOira99dUdCUm9/dP/GWui7vnBWQNV3pOEVCaXWfP
 KIkcTRj8vFjREo+/EPduJnkDhULrUqWVhWOHchgYqBE6VpSp3LlufdpcPgqZgmEoMb
 0Xi1EdMqEXTobHSa/oC9awjBJi9zI4qGB7izvFUBxKilyV71NgrBMi44w52x5Tklr3
 l7edZajr7e5ZeXhaq1i2UPch5QdDzhEK/PASHKWT3nl9DpEwW0izTYnOWML1e/u8Iq
 K8mL3G0ETrAaA==
Received: from [100.66.96.193] (cola.collaboradmins.com [195.201.22.229])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: vignesh)
 by madrid.collaboradmins.com (Postfix) with ESMTPSA id 3B376378202E;
 Tue, 21 May 2024 06:56:35 +0000 (UTC)
Message-ID: <87fba814-eb5a-4b6a-800b-158987fca1d8@collabora.com>
Date: Tue, 21 May 2024 12:26:33 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/6] drm/ci: generate testlist from build
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com,
 helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch,
 robdclark@gmail.com, david.heidelberg@collabora.com,
 guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com,
 mcanal@igalia.com, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org,
 amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org
References: <20240517092502.647420-1-vignesh.raman@collabora.com>
 <20240517092502.647420-3-vignesh.raman@collabora.com>
 <o363vir3dqz2znrnifo6enbdwudalmxqbigdkci2ykxf5qjbnx@2ngllflxotgk>
From: Vignesh Raman <vignesh.raman@collabora.com>
In-Reply-To: <o363vir3dqz2znrnifo6enbdwudalmxqbigdkci2ykxf5qjbnx@2ngllflxotgk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

Hi Dmitry,

On 20/05/24 16:30, Dmitry Baryshkov wrote:
> On Fri, May 17, 2024 at 02:54:58PM +0530, Vignesh Raman wrote:
>> Stop vendoring the testlist into the kernel. Instead, use the
>> testlist from the IGT build to ensure we do not miss renamed
>> or newly added tests.
>>
>> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
>> ---
>>
>> v2:
>>    - Fix testlist generation for arm and arm64 builds.
>>
>> ---
>>   drivers/gpu/drm/ci/build-igt.sh  |   34 +
>>   drivers/gpu/drm/ci/igt_runner.sh |    9 +-
>>   drivers/gpu/drm/ci/testlist.txt  | 2761 ------------------------------
>>   3 files changed, 39 insertions(+), 2765 deletions(-)
>>   delete mode 100644 drivers/gpu/drm/ci/testlist.txt
>>
>> diff --git a/drivers/gpu/drm/ci/build-igt.sh b/drivers/gpu/drm/ci/build-igt.sh
>> index 7859554756c4..e62244728613 100644
>> --- a/drivers/gpu/drm/ci/build-igt.sh
>> +++ b/drivers/gpu/drm/ci/build-igt.sh
> 
> [...]
> 
>> @@ -26,6 +50,16 @@ meson build $MESON_OPTIONS $EXTRA_MESON_ARGS
>>   ninja -C build -j${FDO_CI_CONCURRENT:-4} || ninja -C build -j 1
>>   ninja -C build install
>>   
>> +if [[ "$KERNEL_ARCH" = "arm64" ]]; then
>> +    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/igt/lib/aarch64-linux-gnu
>> +elif [[ "$KERNEL_ARCH" = "arm" ]]; then
>> +    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/igt/lib
>> +else
>> +    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/igt/lib64
> 
> Could you please clarify this part? The arm64 vs arm don't look logical
> from my point of view.
> 
> The rest LGTM.

The libs are installed in the below path for different arch.

 > find . -name libigt.so
./x86/igt/lib64/libigt.so
./arm64/igt/lib/aarch64-linux-gnu/libigt.so
./arm/igt/lib/libigt.so
~/igt-build

So for arm64 it is 'lib/aarch64-linux-gnu' and arm it is 'lib'.

s3.freedesktop.org/artifacts/vigneshraman/linux/1179691/arm64/igt.tar.gz
s3.freedesktop.org/artifacts/vigneshraman/linux/1179691/arm/igt.tar.gz
s3.freedesktop.org/artifacts/vigneshraman/linux/1179691/x86_64/igt.tar.gz

Regards,
Vignesh

> 
>> +fi
>> +
>> +generate_testlist
>> +
>>   mkdir -p artifacts/
>>   tar -cf artifacts/igt.tar /igt
>>   
