Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B2F57B813
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jul 2022 16:07:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8038911A77C;
	Wed, 20 Jul 2022 14:07:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17B9310E021;
 Tue,  5 Jul 2022 10:52:35 +0000 (UTC)
Received: from [192.168.2.145] (unknown [109.252.119.232])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 (Authenticated sender: dmitry.osipenko)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id 04042660180F;
 Tue,  5 Jul 2022 11:52:30 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1657018353;
 bh=C0XVywH+oyNLG15zS9kJCfV/f1r6tRA5EPvm3RYnUOM=;
 h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
 b=BFsJtEh/gBUsqY7oLRLDvEEt2L0qJInllcm8ERMdMkKs/ivYjVrMj7HM0VLqfdii4
 iZJrTAHKS+FQJADUDLdChPRH7Y6aiXltet0/Ptkf7VzEZKH0NTIj3TrpzjnTsS5eIM
 +daU4k8lz/lV6BZmBuVv7AHzc7nHJfY2f1YwSD3ROdt84HfzsTGjByasgAXNcMz4d1
 qg/O+0qPRX6gCd4cBJwu1DYAoDwhHm0Pyvxxug8XaHFbhF++KaNwZMKNBglpUncQwu
 n6itsrDfKq1GL6c0rmng3zw4Cd6j6JFnFqIEoFQiM5a30K8uZbuwLUOjlQtKkbkZuL
 78aARH30ofTdQ==
Message-ID: <37f028a0-f54a-a1a9-e23a-3c1af6979a62@collabora.com>
Date: Tue, 5 Jul 2022 13:52:28 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
References: <20220526235040.678984-1-dmitry.osipenko@collabora.com>
 <20220526235040.678984-15-dmitry.osipenko@collabora.com>
 <0a02a31d-a256-4ca4-0e35-e2ea1868a8ae@amd.com>
 <e6e17c52-43c2-064b-500e-325bb3ba3b2c@collabora.com>
 <02e7946b-34ca-b48e-1ba6-e7b63740a2d9@amd.com>
 <7372dd1b-06f7-5336-4738-15f9b4d4d4b3@collabora.com>
 <90fe74f6-a622-e4ae-3004-6f1bc1790247@shipmail.org>
 <0d88cf7c-61e5-d7a8-a6ba-83388114a1fa@collabora.com>
 <fd026c44-b067-3537-3020-4ae8f24137ad@collabora.com>
In-Reply-To: <fd026c44-b067-3537-3020-4ae8f24137ad@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Wed, 20 Jul 2022 14:07:33 +0000
Subject: Re: [Intel-gfx] [PATCH v6 14/22] dma-buf: Introduce new locking
 convention
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
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, Gerd Hoffmann <kraxel@redhat.com>,
 Dmitry Osipenko <digetx@gmail.com>, kernel@collabora.com,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Rob Herring <robh@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Daniel Stone <daniel@fooishbar.org>, Steven Price <steven.price@arm.com>,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Chia-I Wu <olvaffe@gmail.com>, linux-media@vger.kernel.org,
 Thomas Zimmermann <tzimmermann@suse.de>, intel-gfx@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-tegra@vger.kernel.org,
 Gurchetan Singh <gurchetansingh@chromium.org>,
 Daniel Almeida <daniel.almeida@collabora.com>, amd-gfx@lists.freedesktop.org,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Gert Wollny <gert.wollny@collabora.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Qiang Yu <yuq825@gmail.com>, Alex Deucher <alexander.deucher@amd.com>,
 Robin Murphy <robin.murphy@arm.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 7/5/22 01:38, Dmitry Osipenko wrote:
...
>>> Also i915 will run into trouble with attach. In particular since i915
>>> starts a full ww transaction in its attach callback to be able to lock
>>> other objects if migration is needed. I think i915 CI would catch this
>>> in a selftest.
>> Seems it indeed it should deadlock. But i915 selftests apparently
>> should've caught it and they didn't, I'll re-check what happened.
>>
> 
> The i915 selftests use a separate mock_dmabuf_ops. That's why it works
> for the selftests, i.e. there is no deadlock.
> 
> Thomas, would i915 CI run a different set of tests or will it be the
> default i915 selftests ran by IGT?
> 

Nevermind, I had a local kernel change that was forgotten about.. it
prevented the i915 live tests from running.

-- 
Best regards,
Dmitry
