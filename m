Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C086EF547
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 15:16:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EFCD10E980;
	Wed, 26 Apr 2023 13:16:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9EBC10E671
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 05:47:05 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id
 d9443c01a7336-1a66b9bd893so45888055ad.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Apr 2023 22:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682401625; x=1684993625;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lHN8TvF3xSEi2vPLY/hud8EFfr8RMfbvHLMW7WmZdAA=;
 b=bCQu4mzLMRJaS+Qv8ZBzfSmFkxEM57rdaVpkk47hqDiVhlzOXJTLGKwsI2Fhlhzz5K
 jc2mnoMxJD4rne8+/GM/nQXTA6jD+eekYIKIGeAgFjRuMCwOXtctfjjDLeEKCPXSUNm6
 siO8jIstCinK+dJxxru7WybDStGoGuFa3TGEQ78aJSb0P2l5T91D/yYrn7Sy2wlPj4Sh
 LRLKpqRAxro0gH5fEow9AoCnDocRJF7OT20cZpZpVIyPg2UwRLULLMdrIvSMlpkzz8Ex
 dQZQq4CF8UT1SG5Kc5Zyp23WbJkGLZC3gzT5iOKOmOqQ18XAf0J5e0iU9TiIRvARzcgy
 tXpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682401625; x=1684993625;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=lHN8TvF3xSEi2vPLY/hud8EFfr8RMfbvHLMW7WmZdAA=;
 b=NfwSQXTmSlFgNZDOCIeafA9qW4aw80worf+bh8Ze5Pkl0MdgYOR//idHubBIwgVuGe
 U2hK53vopevjSWUclWGV9J95A4yWCRkb0QUR2/XwjAh5Pq3/nH7InlTBErwh/Ldc/niO
 MPtoxkyVQaDfeXNdFQCKIbGlfCeq00CYcXNLznrs/tlYeayXeBBgrIS9OPM/TCCBuQO1
 zJ0vkvwkCRSkN6/CHZUWgZDg8vRTBeZ97IwyTjcKhuLthkeiyJdN4FI6CFDoIU2phqMs
 etTtJjvbJoOiSKMMtMkCtf3/Uv0HhqFHcppP5m8OqDb/RT/r7+V0h40LUFyhgkUdjo8G
 pzMg==
X-Gm-Message-State: AAQBX9eHRxySvoy5Ht7vzXqQ8MaCgynw42xOhysllCBJa38Fzj6mdJ8o
 lI1CF97lWmL0/mJKn7Nktj4=
X-Google-Smtp-Source: AKy350adoqmFL7kopGfCpoiJq/awgNiMB75ZMqeny3uBj/sTMpYEb94pUvjXwhXQh3VE5KaxctQW6g==
X-Received: by 2002:a17:902:ced0:b0:1a2:8866:e8a4 with SMTP id
 d16-20020a170902ced000b001a28866e8a4mr20338242plg.1.1682401624692; 
 Mon, 24 Apr 2023 22:47:04 -0700 (PDT)
Received: from localhost.localdomain
 (ec2-43-207-73-132.ap-northeast-1.compute.amazonaws.com. [43.207.73.132])
 by smtp.gmail.com with ESMTPSA id
 w24-20020a170902a71800b001a64dbfc5d7sm7371504plq.145.2023.04.24.22.47.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Apr 2023 22:47:04 -0700 (PDT)
From: youling257 <youling257@gmail.com>
To: ville.syrjala@linux.intel.com
Date: Tue, 25 Apr 2023 13:46:57 +0800
Message-Id: <20230425054657.18474-1-youling257@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230329172434.18744-1-ville.syrjala@linux.intel.com>
References: <20230329172434.18744-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 26 Apr 2023 13:16:02 +0000
Subject: [Intel-gfx] [1/2] drm/i915: Fix fast wake AUX sync len
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch cause suspend to disk resume later hdmi out no sound.
Revert "drm/i915: Fix fast wake AUX sync len", suspend resume hdmi sound work.
